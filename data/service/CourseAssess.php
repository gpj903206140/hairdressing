<?php
namespace data\service;

/**
 * 课程评价服务层
 */
use data\api\ICourseAssess as ICourseAssess;
use data\service\BaseService as BaseService;
use data\service\Course as CourseService;
use data\model\NsCourseAssessModel as NsCourseAssessModel;
use data\model\NsCourseModel as NsCourseModel;
use think\Cache;

class CourseAssess extends BaseService implements ICourseAssess
{

    private $course_class;

    function __construct()
    {
        parent::__construct();
        $this->course_assess = new NsCourseAssessModel();
    }
       
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoodsCategory::getGoodsCategoryList()
     */
    public function getCourseAssessList($page_index = 1, $page_size = 0, $condition = '', $order = '', $field = '*')
    {
          $data = array(
            $page_index,
            $page_size,
            $condition,
            $order,
            $field
        );
        $data = json_encode($data);
        $cache = Cache::tag("niu_course_assess")->get("getCourseAssessList" . $data);
        if(empty($cache))
        {
            $list = $this->course_assess->pageQuery($page_index, $page_size, $condition, $order, $field);
            Cache::tag("niu_course_assess")->set("getCourseAssessList" . $data, $list);
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
    public function addCourseAssess($uid, $member_name, $head_img, $goods_id, $goods_name, $goods_image, $score, $content, $explain_type)
    {
        Cache::tag('niu_course_assess')->clear();
        $data = array(
            'uid' => $uid,
            'member_name' => $member_name,
            'head_img' => $head_img,
            'goods_id' => $goods_id,
            'goods_name' => $goods_name,
            'goods_image' => $goods_image,
            'score' => $score,
            'content' => $content,
            'explain_type' => $explain_type,
            'addtime' => time(),
        );
        $this->course_assess->startTrans();
        try{
            $result = $this->course_assess->save($data);
            if ($result) {
                $course = new NsCourseModel();
                $avg = $this->course_assess->getAvg(['goods_id' => $goods_id],'score');
                $course->ModifyTableField('goods_id',$goods_id,'score',$avg);
                $course->where("goods_id={$goods_id}")->setInc('evaluates',1);
                $res = $this->course_assess->id;
                $this->course_assess->commit();
            } else {
                $res = $this->course_assess->getError();
                $this->course_assess->rollback();
            }
            return $res;
        } catch(\Exception $e){
            $this->course_assess->rollback();
            return $e->getMessage();
        }
        return 0;
        // TODO Auto-generated method stub
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\ICourseTeacher::deleteCourseTeacher()
     */
    public function deleteCourseAssess($goods_id,$assess_id)
    {
        Cache::tag('niu_course_assess')->clear();
        $res = $this->course_assess->destroy($assess_id);
        hook("CourseAssessDeleteSuccess", $teacher_id);
        return $res;
    }
    
}

?>