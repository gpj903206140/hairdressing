<?php
namespace data\service;

/**
 * 商品分类服务层
 */
use data\service\BaseService as BaseService;
use data\model\NsCourseTeacherModel as NsCourseTeacherModel;
use data\api\ICourseTeacher as ICourseTeacher;
use data\model\NsGoodsModel;
use data\model\NsGoodsBrandModel;
use data\model\NsGoodsCategoryBlockModel;
use data\model\NsGoodsViewModel;
use think\Cache;
use data\model\NsGoodsAttributeModel;
use data\model\NsAttributeModel;

class CourseTeacher extends BaseService implements ICourseTeacher
{

    private $course_class;

    function __construct()
    {
        parent::__construct();
        $this->course_teacher = new NsCourseTeacherModel();
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoodsCategory::getGoodsCategoryList()
     */
    public function getCourseTeacherList($page_index = 1, $page_size = 0, $condition = '', $order = '', $field = '*')
    {
          $data = array(
            $page_index,
            $page_size,
            $condition,
            $order,
            $field
        );
        $data = json_encode($data);
        $cache = Cache::tag("niu_course_teacher")->get("getCourseTeacherList" . $data);
        if(empty($cache))
        {
            $list = $this->course_teacher->pageQuery($page_index, $page_size, $condition, $order, $field);
            Cache::tag("niu_course_teacher")->set("getCourseTeacherList" . $data, $list);
            return $list;
        }else{
            return $cache;
        }
       
        // TODO Auto-generated method stub
    }
    
    
    /*
     * (non-PHPdoc)
     * @see \data\api\ICourseTeacher::addOrEditCourseTeacher()
     */
    public function addOrEditCourseTeacher($mechanism_id, $teacher_id, $teacher_name, $is_visible,  $description = '', $sort = 0, $teacher_pic, $pc_custom_template, $wap_custom_template)
    {
        Cache::tag('niu_course_teacher')->clear();
        $data = array(
            'mechanism_id' => $mechanism_id,
            'teacher_name' => $teacher_name,
            'is_visible' => $is_visible,
            'description' => $description,
            'sort' => $sort,
            'teacher_pic' => $teacher_pic,
            'pc_custom_template' => $pc_custom_template, 
            'wap_custom_template' => $wap_custom_template
        );
        if ($teacher_id == 0) {
            $result = $this->course_teacher->save($data);
            if ($result) {
                $res = $this->course_teacher->teacher_id;
            } else {
                $res = $this->course_teacher->getError();
            }
        } else {
            $res = $this->course_teacher->save($data, [
                'teacher_id' => $teacher_id
            ]);
            if ($res !== false) {
                //$this->addCourseTeacherBlock($teacher_id);
                $this->addUserLog($this->uid, 1, '课程', '修改合作机构', '修改合作机构:'.$teacher_name);
                return $res;
            } else {
                $res = $this->course_teacher->getError();
            }
        }
        return $res;
        // TODO Auto-generated method stub
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\ICourseTeacher::deleteCourseTeacher()
     */
    public function deleteCourseTeacher($teacher_id)
    {
        Cache::tag('niu_course_teacher')->clear();
        $res = $this->course_teacher->destroy($teacher_id);
        // 删除分类商品楼层
        //$this->deleteCourseTeacherBlock($category_id);
        hook("CourseTeacherDeleteSuccess", $teacher_id);
        return $res;
        // TODO Auto-generated method stub
    }
    

    /**
     * 获取商品分类列表应用后台
     */
    public function getTeacherTreeUseInAdmin($mechanism_id)
    {
        //$cache = Cache::tag("niu_course_teacher")->get("getteacherTreeUseInAdmin");
        //if (empty($cache)) {
            $course_teacher_model = new NsCourseTeacherModel();
            
            $course_class_one = $course_teacher_model->getQuery([
                'mechanism_id'=>$mechanism_id
            ], 'teacher_id, teacher_name,teacher_pic,sort,is_visible,level', 'sort');
            
           // Cache::tag("niu_course_teacher")->set("getteacherTreeUseInAdmin", $course_class_one);
            return $course_class_one;
       // } else {
            return $cache;
        //}
    }
    public function getCourseTeacherTree($pid)
    {
        // 暂时 获取 两级
        $cache = Cache::tag("niu_course_teacher")->get("getCourseTeacherTree" . $pid);
        if (empty($cache)) {
            $list = array();
            $one_list = $this->getCourseTeacherListByParentId($pid);
            foreach ($one_list as $k1 => $v1) {
                $two_list = array();
                $two_list = $this->getCourseTeacherListByParentId($v1['teacher_id']);
                $one_list[$k1]['child_list'] = $two_list;
            }
            $list = $one_list;
            Cache::tag("niu_course_teacher")->set("getCourseTeacherTree" . $pid, $list);
            return $list;
        } else {
            return $cache;
        }
    }
    /*
     * (non-PHPdoc)
     * @see \data\api\ICourseTeacher::getCourseTeacherListByParentId()
     */
    public function getCourseTeacherListByParentId($pid)
    {
        $cache = Cache::tag("niu_course_teacher")->get("getCourseTeacherListByParentId" . $pid);
        if (empty($cache)) {
            $list = $this->getCourseTeacherList(1, 0, 'pid=' . $pid, 'pid,sort');
            if (! empty($list)) {
                for ($i = 0; $i < count($list['data']); $i ++) {
                    $parent_id = $list['data'][$i]["teacher_id"];
                    $child_list = $this->getCourseTeacherList(1, 1, 'pid=' . $parent_id, 'pid,sort');
                    if (! empty($child_list) && $child_list['total_count'] > 0) {
                        $list['data'][$i]["is_parent"] = 1;
                    } else {
                        $list['data'][$i]["is_parent"] = 0;
                    }
                }
            }
            Cache::tag("niu_course_teacher")->set("getCourseTeacherListByParentId" . $pid, $list['data']);
            return $list['data'];
        } else {
            return $cache;
        }
        
        // TODO Auto-generated method stub
    }
    /*
     * (non-PHPdoc)
     * @see \data\api\ICourseTeacher::getCourseTeacherDetail()
     */
    public function getCourseTeacherDetail($teacher_id)
    {
        $res = $this->course_teacher->get($teacher_id);
        return $res;
        // TODO Auto-generated method stub
    }
    
}

?>