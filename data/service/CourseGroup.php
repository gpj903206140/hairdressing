<?php
namespace data\service;
/**
 * 商品分类服务层
 */
use data\service\BaseService as BaseService;
use data\model\NsCourseGroupModel as NsCourseGroupModel;
use data\model\AlbumPictureModel as AlbumPictureModel;
use data\api\ICourseGroup as ICourseGroup;
use data\model\NsGoodsModel;
use think\Cache;
class CourseGroup extends BaseService implements ICourseGroup{
    
    private $course_group;
    function __construct(){
        parent:: __construct();
        $this->course_group = new NsCourseGroupModel();
    }
	/* (non-PHPdoc)
     * @see \data\api\IGoodsGroup::getGoodsGroupList()
     */
    public function getGoodsGroupList($page_index = 1, $page_size = 0, $condition = '', $order = '', $field = '*')
    {
        $data = array($page_index, $page_size, $condition, $order, $field);
        $data = json_encode($data);
        $cache = Cache::tag("niu_course_group")->get("getCourseGroupList".$data);
        if(empty($cache))
        {
            $list = $this->course_group->pageQuery($page_index, $page_size, $condition, $order, $field);
            foreach ($list['data'] as $k=>$v){
                $picture = new AlbumPictureModel();
                $pic_info = array();
                $pic_info['pic_cover'] = '';
                if( !empty($v['group_pic'])){
                    $pic_info = $picture->get($v['group_pic']);
                }
                $list['data'][$k]['picture'] = $pic_info;
            }
           
            Cache::tag("niu_gourse_group")->set("getCourseGroupList".$data, $list);
            return $list;
        }else{
            return $cache;
        }
        
    
        // TODO Auto-generated method stub
        
    }

	/* (non-PHPdoc)
     * @see \data\api\IGoodsGroup::addOrEditGoodsGroup()
     */
    public function addOrEditGoodsGroup($group_id, $shop_id, $group_name, $pid, $is_visible, $sort, $group_pic, $group_dec)
    {
        Cache::tag("niu_goods_group")->clear();
        $level = 1; //目前仅为一级 
//         $parent_level = $this->getGoodsGroupDetail($pid);
//     	if($pid == 0){
//     		$level = 1;
//     	}else{
//     		$level = $parent_level['level'] + 1;
//     	}
        $data = array(
        	'shop_id'		  => $shop_id,
            'group_name'   	  => $group_name,
            'pid'             => $pid,
            'level'           => $level,
            'is_visible'      => $is_visible,
            'sort'            => $sort,
            'group_pic'       => $group_pic,
            'group_dec'       => $group_dec,
        );
		if($group_id == 0){
			$this->course_group->save($data);
			$data['group_id'] = $this->course_group->group_id;
			hook("goodsGroupSaveSuccess", $data);
			$res = $this->course_group->group_id;
		}else{
			$res = $this->course_group->save($data,['group_id'=>$group_id]);
			$data['group_id'] = $group_id;
			hook("goodsGroupSaveSuccess", $data);
		}
        // TODO Auto-generated method stub
        return $res;
    }

	/* (non-PHPdoc)
     * @see \data\api\IGoodsGroup::deleteGoodsGroup()
     */
    public function deleteGoodsGroup($goods_group_id_array, $shop_id)
    {
        Cache::tag("niu_goods_group")->clear();
    	$sub_list = $this->getGoodsGroupListByParentId($goods_group_id_array, $shop_id);
        if (! empty($sub_list)) {
            $res = SYSTEM_DELETE_FAIL;
        } else {
            $shop_id = $this->instance_id;
            $condition = array(
                'shop_id' => $this->instance_id,
                'group_id' => array('in', $goods_group_id_array)
            );
            $res = $this->course_group->destroy($condition);
            hook("goodsGroupDeleteSuccess", ['group_id' => $goods_group_id_array]);
        }
        return $res;
        // TODO Auto-generated method stub
        
    }
    /**
     * 返回 二级的列表 
     */
    public function getGoodsGroupQuery($shop_id){
        //一级
        $cache = Cache::tag("niu_goods_group")->get("getGoodsGroupQuery".$shop_id);
        if(empty($cache))
        {
            $list = $this->getGoodsGroupListByParentId($shop_id, 0);
            foreach ($list as $k=>$v){
                $child_list = array();
                $child_list = $this->getGoodsGroupListByParentId($shop_id, $v['group_id']);
                $v['child_list'] = $child_list;
            }
            Cache::tag("niu_goods_group")->set("getGoodsGroupQuery".$shop_id, $list);
            return $list;
        }else{
            return $cache;
        }
       
    }
    /**
     * (non-PHPdoc)
     * @see \data\api\IGoodsGroup::getGoodsGroupListByParentId()
     */
    public function getGoodsGroupListByParentId($shop_id, $pid)
    {
        $cache = Cache::tag("niu_goods_group")->get("getGoodsGroupListByParentId".$shop_id.'_'.$pid);
        if(empty($cache))
        {
            $condition = array(
                'shop_id' => $shop_id,
                'pid'     => $pid
            );
            $list = $this->getGoodsGroupList(1, 0, $condition, 'pid,sort');
            foreach ($list['data'] as $k=>$v){
                $picture = new AlbumPictureModel();
                $pic_info = array();
                $pic_info['pic_cover'] = '';
                if( !empty($v['group_pic'])){
                    $pic_info = $picture->get($v['group_pic']);
                }
                $v['picture'] = $pic_info;
            }
            Cache::tag("niu_goods_group")->set("getGoodsGroupListByParentId".$shop_id.'_'.$pid, $list['data']);
            return $list['data'];
        }else{
            return $cache;
        }
       
    }
    /**
     * 
     * @param unknown $group_id
     * @return Ambigous <\think\static, multitype:, \think\db\false, PDOStatement, string, \think\Model, \PDOStatement, \think\db\mixed, multitype:a r y s t i n g Q u e \ C l o , \think\db\Query, NULL>
     */
   public function getGoodsGroupDetail($group_id)
    {
        $info = $this->course_group->get($group_id);
        $picture = new AlbumPictureModel();
        $pic_info = array();
        $pic_info['pic_cover'] = '';
        if( !empty($info['group_pic'])){
            $pic_info = $picture->get($info['group_pic']);
        }
        $info['picture'] = $pic_info;
        return $info;
        // TODO Auto-generated method stub
        
    }
    /**
     * 修改商品分组  单个字段
     * @param unknown $category_id
     * @param unknown $order
    */
    public function ModifyGoodsGroupField($group_id, $field_name, $field_value){
        Cache::tag("niu_goods_group")->clear();
        $res = $this->course_group->ModifyTableField('group_id',$group_id, $field_name, $field_value);
        return $res;
    }
    /**
     * (non-PHPdoc)
     * @see \data\api\IGoodsGroup::getGroupGoodsTree()
     */
    public function getGroupGoodsTree($shop_id)
    {
        $cache = Cache::tag("niu_goods_group")->get("getGroupGoodsTree".$shop_id);
        if(empty($cache))
        {
            $list = $this->course_group->getQuery(['shop_id' => $shop_id], '*', '');
            $goods = new NsGoodsModel();
            $goods_list = $goods->getQuery(['shop_id' => $shop_id], '*', '');
            foreach ($list as $k => $v)
            {
                $group_goods_list = array();
                foreach ($goods_list as $k_goods => $v_goods)
                {
                    $group_id_array = explode(',', $v_goods['group_id_array']);
                    if (in_array($v['group_id'], $group_id_array) || $v['group_id'] == 0) {
                        $picture = new AlbumPictureModel();
                        $picture_info = $picture->get($v_goods['picture']);
                        $v_goods['picture_info'] = $picture_info;
                        $group_goods_list[] = $v_goods;
                    }
                }
                $list[$k]['goods_list'] = $group_goods_list;
                $list[$k]['goods_list_count'] = count($group_goods_list);
            }
            Cache::tag("niu_goods_group")->set("getGroupGoodsTree".$shop_id, $list);
            return $list;
        }else{
            return $cache;
        }
       
    }
	/* (non-PHPdoc)
     * @see \data\api\IGoodsGroup::getGoodsGroupQueryList()
     */
    public function getGoodsGroupQueryList($condition)
    {
        $data = json_encode($condition);
        $cache = Cache::tag("niu_goods_group")->get("getGoodsGroupQueryList".$data);
        if(empty($cache))
        {
            // TODO Auto-generated method stub
            $res = $this->course_group->getQuery($condition, "*", "sort");
            Cache::tag("niu_goods_group")->set("getGoodsGroupQueryList".$data, $res);
            return $res;
        }else{
            return $res;
        }
      
    }

    
}