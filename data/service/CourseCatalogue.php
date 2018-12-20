<?php
namespace data\service;

/**
 * 课程目录服务层
 */
use data\service\BaseService as BaseService;
use data\model\NsCourseCatalogueModel as NsCourseCatalogueModel;
use data\model\NsCourseCatalogueVideoModel as NsCourseCatalogueVideoModel;
use data\api\ICourseCatalogue as ICourseCatalogue;
use data\model\NsGoodsModel;
use data\model\NsGoodsBrandModel;
use data\model\NsGoodsCategoryBlockModel;
use data\model\NsGoodsViewModel;
use think\Cache;
use data\model\NsGoodsAttributeModel;
use data\model\NsAttributeModel;

class CourseCatalogue extends BaseService implements ICourseCatalogue
{

    private $course_class;

    function __construct()
    {
        parent::__construct();
        $this->course_catalogue = new NsCourseCatalogueModel();
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoodsCategory::getGoodsCategoryList()
     */
    public function getCourseCatalogueList($page_index = 1, $page_size = 0, $condition = '', $order = '', $field = '*')
    {
          $data = array(
            $page_index,
            $page_size,
            $condition,
            $order,
            $field
        );
        $data = json_encode($data);
        $cache = Cache::tag("niu_course_catalogue")->get("getCourseCatalogueList" . $data);
        if(empty($cache))
        {
            $list = $this->course_catalogue->pageQuery($page_index, $page_size, $condition, $order, $field);
            Cache::tag("niu_course_catalogue")->set("getCourseCatalogueList" . $data, $list);
            return $list;
        }else{
            return $cache;
        }
       
        // TODO Auto-generated method stub
    }
    
    
    /*
     * (non-PHPdoc)
     * @see \data\api\ICourseCatalogue::addOrEditCourseCatalogue()
     */
    public function addOrEditCourseCatalogue($goods_id, $catalogue_id, $catalogue_name, $is_visible,  $description = '', $sort = 0, $catalogue_pic, $video_url, $pc_custom_template, $wap_custom_template)
    {
        Cache::tag('niu_course_catalogue')->clear();
        $data = array(
            'goods_id' => $goods_id,
            'catalogue_name' => $catalogue_name,
            'is_visible' => $is_visible,
            'description' => $description,
            'sort' => $sort,
            'catalogue_pic' => $catalogue_pic,
            'video_url' => $video_url,
            'pc_custom_template' => $pc_custom_template, 
            'wap_custom_template' => $wap_custom_template
        );
        if ($catalogue_id == 0) {
            $result = $this->course_catalogue->save($data);
            if ($result) {
                $res = $this->course_catalogue->catalogue_id;
            } else {
                $res = $this->course_catalogue->getError();
            }
        } else {
            $res = $this->course_catalogue->save($data, [
                'catalogue_id' => $catalogue_id
            ]);
            if ($res !== false) {
                //$this->addCourseCatalogueBlock($teacher_id);
                $this->addUserLog($this->uid, 1, '课程', '修改目录', '修改目录:'.$catalogue_name);
                return $res;
            } else {
                $res = $this->course_catalogue->getError();
            }
        }
        return $res;
        // TODO Auto-generated method stub
    }
        /*
     * (non-PHPdoc)
     * @see \data\api\ICourseCatalogue::addOrEditCourseCatalogue()
     */
    public function addOrEditCourseCatalogueVideo($video_id,$goods_id, $catalogue_id, $video_title, $teacher_id, $teacher_name, $sort, $video_url, $create_time)
    {
        Cache::tag('niu_course_catalogue_video')->clear();
        $course_catalogue_video_model = new NsCourseCatalogueVideoModel();
        $data = array(
            'goods_id' => $goods_id,
            'catalogue_id' => $catalogue_id,
            'video_title' => $video_title,
            'teacher_id' => $teacher_id,
            'teacher_name' => $teacher_name,
            //'sort' => $sort,
            'video_url' => $video_url,
            'create_time' => $create_time
        );
        if ($video_id == 0) {
            $result = $course_catalogue_video_model->save($data);
            if ($result) {
                $res = $course_catalogue_video_model->video_id;
            } else {
                $res = $course_catalogue_video_model->getError();
            }
        } else {
            $res = $course_catalogue_video_model->save($data, [
                'video_id' => $video_id
            ]);
            if ($res !== false) {
                $this->addUserLog($this->video_id, 1, '课程', '修改课程视频', '修改课程视频:'.$video_title);
                return $res;
            } else {
                $res = $course_catalogue_video_model->getError();
            }
        }
        return $res;
        // TODO Auto-generated method stub
    }
    /*
     * (non-PHPdoc)
     * @see \data\api\ICourseCatalogue::deleteCourseCatalogue()
     */
    public function deleteCourseCatalogue($catalogue_id)
    {
        Cache::tag('niu_course_catalogue')->clear();
        $catalogue = $this->course_catalogue->get($catalogue_id);
        $res = $this->course_catalogue->destroy($catalogue_id);
        if(file_exists($catalogue['catalogue_pic'])){
            unlink($catalogue['catalogue_pic']);
        }
        if(file_exists($catalogue['video_url'])){
            unlink($catalogue['video_url']);
        }
        hook("CourseCatalogueDeleteSuccess", $catalogue_id);
        return $res;
        // TODO Auto-generated method stub
    }
    /*
     * (non-PHPdoc)
     * @see \data\api\ICourseCatalogue::deleteCourseCatalogue()
     */
    public function deleteCourseCatalogueVideo($video_id)
    {
        Cache::tag('niu_course_catalogue_vodeo')->clear();
        $course_catalogue_video_model = new NsCourseCatalogueVideoModel();
        $catalogue_video = $course_catalogue_video_model->get($video_id);
        $res = $course_catalogue_video_model->destroy($video_id);
        if(file_exists($catalogue_video['video_url'])){
            unlink($catalogue_video['video_url']);
        }
        hook("CourseCatalogueVideoDeleteSuccess", $video_id);
        return $res;
        // TODO Auto-generated method stub
    }

    /**
     * 获取课程目录列表应用后台
     */
    public function getCatalogueTreeUseInAdmin($goods_id)
    {
        //$cache = Cache::tag("niu_course_teacher")->get("getteacherTreeUseInAdmin");
        //if (empty($cache)) {
            $course_catalogue_model = new NsCourseCatalogueModel();
            
            $course_class_one = $course_catalogue_model->getQuery([
                'goods_id'=>$goods_id
            ], 'catalogue_id, catalogue_name,catalogue_pic,sort,is_visible,level', 'sort');
           // Cache::tag("niu_course_teacher")->set("getteacherTreeUseInAdmin", $course_class_one);
            return $course_class_one;
       // } else {
            return $cache;
        //}
    }
    public function getCourseCatalogueTree($pid)
    {
        // 暂时 获取 两级
        $cache = Cache::tag("niu_course_catalogue")->get("getCourseCatalogueTree" . $pid);
        if (empty($cache)) {
            $list = array();
            $one_list = $this->getCourseCatalogueListByParentId($pid);
            foreach ($one_list as $k1 => $v1) {
                $two_list = array();
                $two_list = $this->getCourseCatalogueListByParentId($v1['catalogue_id']);
                $one_list[$k1]['child_list'] = $two_list;
            }
            $list = $one_list;
            Cache::tag("niu_course_catalogue")->set("getCourseCatalogueTree" . $pid, $list);
            return $list;
        } else {
            return $cache;
        }
    }
    /*
     * (non-PHPdoc)
     * @see \data\api\ICourseCatalogue::getCourseCatalogueListByParentId()
     */
    public function getCourseCatalogueListByParentId($pid)
    {
        $cache = Cache::tag("niu_course_catalogue")->get("getCourseCatalogueListByParentId" . $pid);
        if (empty($cache)) {
            $list = $this->getCourseCatalogueList(1, 0, 'pid=' . $pid, 'pid,sort');
            if (! empty($list)) {
                for ($i = 0; $i < count($list['data']); $i ++) {
                    $parent_id = $list['data'][$i]["catalogue_id"];
                    $child_list = $this->getCourseCatalogueList(1, 1, 'pid=' . $parent_id, 'pid,sort');
                    if (! empty($child_list) && $child_list['total_count'] > 0) {
                        $list['data'][$i]["is_parent"] = 1;
                    } else {
                        $list['data'][$i]["is_parent"] = 0;
                    }
                }
            }
            Cache::tag("niu_course_catalogue")->set("getCourseCatalogueListByParentId" . $pid, $list['data']);
            return $list['data'];
        } else {
            return $cache;
        }
        
        // TODO Auto-generated method stub
    }
    /*
     * (non-PHPdoc)
     * @see \data\api\ICourseCatalogue::getCourseCatalogueDetail()
     */
    public function getCourseCatalogueDetail($catalogue_id)
    {
        $res = $this->course_catalogue->get($catalogue_id);
        return $res;
        // TODO Auto-generated method stub
    }
    /*
     * (non-PHPdoc)
     * @see \data\api\ICourseCatalogue::getCourseCatalogueDetail()
     */
    public function getCourseCatalogueVideoQuery($catalogue_id)
    {
        $course_catalogue_video_model = new NsCourseCatalogueVideoModel();
        $res = $course_catalogue_video_model->getQuery(['catalogue_id'=>$catalogue_id],'*','video_id desc');
        return $res;
        // TODO Auto-generated method stub
    }
    
}

?>