<?php
namespace data\service;

/**
 * 合作机构服务层
 */
use data\service\BaseService as BaseService;
use data\model\NsCourseMechanismModel as NsCourseMechanismModel;
use data\api\ICourseMechanism as ICourseMechanism;
use data\model\AlbumPictureModel as AlbumPictureModel;
use data\model\NsGoodsModel;
use data\model\NsGoodsBrandModel;
use data\model\NsGoodsCategoryBlockModel;
use data\model\NsGoodsViewModel;
use think\Cache;
use data\model\NsGoodsAttributeModel;
use data\model\NsAttributeModel;

class CourseMechanism extends BaseService implements ICourseMechanism
{

    private $course_class;

    function __construct()
    {
        parent::__construct();
        $this->course_Mechanism = new NsCourseMechanismModel();
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoodsCategory::getGoodsCategoryList()
     */
    public function getCourseMechanismList($page_index = 1, $page_size = 0, $condition = '', $order = '', $field = '*')
    {
          $data = array(
            $page_index,
            $page_size,
            $condition,
            $order,
            $field
        );
        $data = json_encode($data);
        $cache = Cache::tag("niu_course_mechanism")->get("getCourseMechanismList" . $data);
        if(empty($cache))
        {
            $list = $this->course_Mechanism->pageQuery($page_index, $page_size, $condition, $order, $field);
            Cache::tag("niu_course_mechanism")->set("getCourseMechanismList" . $data, $list);
            return $list;
        }else{
            return $cache;
        }
       
        // TODO Auto-generated method stub
    }
    
    
    /*
     * (non-PHPdoc)
     * @see \data\api\ICourseMechanism::addOrEditCourseMechanism()
     */
    public function addOrEditCourseMechanism($mechanism_id, $mechanism_name, $is_visible,  $description = '', $sort = 0, $mechanism_pic, $pc_custom_template, $wap_custom_template)
    {
        Cache::tag('niu_course_class')->clear();
        $data = array(
            'mechanism_name' => $mechanism_name,
            'is_visible' => $is_visible,
            'description' => $description,
            'sort' => $sort,
            'mechanism_pic' => $mechanism_pic,
            'pc_custom_template' => $pc_custom_template, 
            'wap_custom_template' => $wap_custom_template
        );
        if ($mechanism_id == 0) {
            $result = $this->course_Mechanism->save($data);
            if ($result) {
                $res = $this->course_Mechanism->mechanism_id;
            } else {
                $res = $this->course_Mechanism->getError();
            }
        } else {
            $res = $this->course_Mechanism->save($data, [
                'mechanism_id' => $mechanism_id
            ]);
            if ($res !== false) {
                //$this->addCourseMechanismBlock($mechanism_id);
                $this->addUserLog($this->uid, 1, '课程', '修改合作机构', '修改合作机构:'.$category_name);
                return $res;
            } else {
                $res = $this->course_Mechanism->getError();
            }
        }
        return $res;
        // TODO Auto-generated method stub
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\ICourseMechanism::deleteCourseMechanism()
     */
    public function deleteCourseMechanism($mechanism_id)
    {
        Cache::tag('niu_course_mechanism')->clear();
        $res = $this->course_Mechanism->destroy($mechanism_id);
        //删除作品墙
        $album_picture = new AlbumPictureModel();
        $pic_list = $album_picture->getQuery(['shop_id'=>$mechanism_id],'pic_id,shop_id,pic_cover,pic_cover_big,pic_cover_mid,pic_cover_small,pic_cover_micro','pic_id desc');
        foreach($pic_list as $k=>$v){
            $album_picture->destroy($v['pic_id']);
            if(file_exists($v['pic_cover'])){
                unlink($v['pic_cover']);
            }
            if(file_exists($v['pic_cover_big'])){
                unlink($v['pic_cover_big']);
            }
            if(file_exists($v['pic_cover_mid'])){
                unlink($v['pic_cover_mid']);
            }
            if(file_exists($v['pic_cover_small'])){
                unlink($v['pic_cover_small']);
            }
            if(file_exists($v['pic_cover_micro'])){
                unlink($v['pic_cover_micro']);
            }
        }
        hook("courseMechanismDeleteSuccess", $mechanism_id);
        return $res;
        // TODO Auto-generated method stub
    }
    

    /**
     * 获取合作机构列表应用后台
     */
    public function getMechanismTreeUseInAdmin()
    {
        $cache = Cache::tag("niu_course_mechanism")->get("getmechanismTreeUseInAdmin");
        if (empty($cache)) {
            $course_mechanism_model = new NsCourseMechanismModel();
            
            $course_class_one = $course_mechanism_model->getQuery([
                
            ], 'mechanism_id, mechanism_name,mechanism_pic,teacher_num,sort,is_visible', 'sort');
            Cache::tag("niu_course_mechanism")->set("getmechanismTreeUseInAdmin", $course_class_one);
            return $course_class_one;
        } else {
            return $cache;
        }
    }
    public function getCourseMechanismTree($pid)
    {
        // 暂时 获取 两级
        $cache = Cache::tag("niu_course_mechanism")->get("getCourseMechanismTree" . $pid);
        if (empty($cache)) {
            $list = array();
            $one_list = $this->getCourseMechanismListByParentId($pid);
            foreach ($one_list as $k1 => $v1) {
                $two_list = array();
                $two_list = $this->getCourseMechanismListByParentId($v1['mechanism_id']);
                $one_list[$k1]['child_list'] = $two_list;
            }
            $list = $one_list;
            Cache::tag("niu_course_mechanism")->set("getCourseMechanismTree" . $pid, $list);
            return $list;
        } else {
            return $cache;
        }
    }
    /**
     * 修改合作机构 单个字段
     *
     * @param unknown $category_id            
     * @param unknown $order            
     */
    public function ModifyCourseMechanismField($mechanism_id, $field_name, $field_value)
    {
        Cache::tag('niu_course_mechanism')->clear();
        $res = $this->course_Mechanism->ModifyTableField('mechanism_id', $mechanism_id, $field_name, $field_value);
        return $res;
    }
    /*
     * (non-PHPdoc)
     * @see \data\api\ICourseMechanism::getCourseMechanismListByParentId()
     */
    public function getCourseMechanismListByParentId($pid)
    {
        $cache = Cache::tag("niu_course_mechanism")->get("getCourseMechanismListByParentId" . $pid);
        if (empty($cache)) {
            $list = $this->getCourseMechanismList(1, 0, 'pid=' . $pid, 'pid,sort');
            if (! empty($list)) {
                for ($i = 0; $i < count($list['data']); $i ++) {
                    $parent_id = $list['data'][$i]["mechanism_id"];
                    $child_list = $this->getCourseMechanismList(1, 1, 'pid=' . $parent_id, 'pid,sort');
                    if (! empty($child_list) && $child_list['total_count'] > 0) {
                        $list['data'][$i]["is_parent"] = 1;
                    } else {
                        $list['data'][$i]["is_parent"] = 0;
                    }
                }
            }
            Cache::tag("niu_course_mechanism")->set("getCourseMechanismListByParentId" . $pid, $list['data']);
            return $list['data'];
        } else {
            return $cache;
        }
        
        // TODO Auto-generated method stub
    }
    /*
     * (non-PHPdoc)
     * @see \data\api\ICourseMechanism::getCourseMechanismDetail()
     */
    public function getCourseMechanismDetail($mechanism_id)
    {
        $res = $this->course_Mechanism->get($mechanism_id);
        return $res;
        // TODO Auto-generated method stub
    }
    
    /**
     * 单个字段数值加或减
     * @param  [type] $goods_id   [description]
     * @param  [type] $field_name [description]
     * @param  [type] $status     [description]
     * @return [type]             [description]
     */
    public function updateFiledNum($mechanism_id,$field_name,$status=1,$num=1)
    {
        $course_mechanism_model = new NsCourseMechanismModel();
        if($status==1){ //加
            $return = $course_mechanism_model->where(['mechanism_id'=>$mechanism_id])->setInc($field_name,$num);
            return $return;
        }elseif($status==2){ //减
            $return = $course_mechanism_model->where(['mechanism_id'=>$mechanism_id])->setDec($field_name,$num);
            return $return;
        }
        return false;
    }
    
}

?>