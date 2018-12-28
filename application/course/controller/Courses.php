<?php
namespace app\course\controller;

use data\service\Config;
use data\service\Course as CourseService;
use data\service\CourseClass;
use data\service\CourseTeacher as CourseTeacher;
use data\service\CourseGroup as CourseGroup;
use data\service\CourseMechanism as CourseMechanism;
use data\service\CourseCatalogue as CourseCatalogue;
use data\service\CourseAssess as CourseAssess;
use data\service\Member as MemberService;
use data\service\Platform;
use data\service\promotion\PromoteRewardRule;
use data\service\WebSite;
use think\Cookie;
use data\service\Promotion;

use data\model\NsCourseFollowModel as CourseFollow;

class Courses extends BaseController
{

    /**
     * 课程列表
     *
     */
    public function kc_more()
    {
        $courseervice = new CourseService();
        $category_id = request()->get("category_id", 0); // 分类Id
        if(request()->isAjax()){
            $page_index = request()->get("page_index", 1);
            $page_size = request()->post("page_size", PAGESIZE);
            $condition['state'] = 1;
            if(!empty($category_id)){
                $condition['category_id'] = $category_id;
            }
            $mechanism_id = request()->get("mechanism_id", ''); // 机构Id
            if(!empty($mechanism_id)){
                $condition['mechanism_id'] = $mechanism_id;
                $course_type = request()->get("course_type", 0); //线上/线下课程
                $condition['course_type'] = $course_type;
            }
            $name = request()->get("name", ""); // 字段排序规则
            if (! empty($name)) {
                switch ($name) {
                    case "is_recommend":
                        $condition['is_recommend'] = 1;
                        break;
                    case "is_hot":
                        $condition['is_hot'] = 1;
                        break;
                    case "is_new":
                        $condition['is_new'] = 1;
                        break;
                    case "search":
                        $search = request()->get("search", "");
                        $search = trim($search,' ');
                        $condition['goods_name'] = array('like','%' . $search . '%');
                        break;
                }
            }
            $result = $courseervice->getSearchGoodsList($page_index, $page_size, $condition, 'sort,goods_id desc');
            if(!empty($result['data'])){
                return json_encode($result);
            }else{
                return 0;
            }
            
        }else{
            $name = request()->get("name", "");
            $search = request()->get("search", "");
            $this->assign('search',$search);
            $this->assign('name',$name);
            $this->assign('category_id',$category_id);
            return view($this->style . 'Courses/kc_more');
        }
    }

    /**
     * 课程详情
     *
     */
    public function coursedetail()
    {
        $course = new CourseService();
        if(request()->isAjax()){
            
        }else{
            $coursecate = new CourseTeacher();
            $goodsId = request()->get('id', 0);
            //获取课程信息
            $course_info = $course->getGoodsDetail($goodsId);
            //取课程标签
            if (! empty($course_info['group_id_array'])) {
                $goods_group_id = explode(',', $course_info['group_id_array']);
                $goods_group_name = '';
                foreach ($goods_group_id as $key => $val) {
                    $course_group = new CourseGroup();
                    $goods_group_info = $course_group->getGoodsGroupDetail($val);
                    if (! empty($goods_group_info)) {
                        $goods_group_name .= $goods_group_info['group_name'] . ',';
                    }
                }
                $goods_group_name = rtrim($goods_group_name, ',');
                $course_info['group_name'] = explode(',',$goods_group_name);
            }
            //获取课程老师
            $course_info['teacher'] = $coursecate->getCourseTeacherDetail($course_info['teacher_id']);
            //获取课程目录
            $course_catalogue = new CourseCatalogue();
            $course_info['catalogue'] = $course_catalogue->getCatalogueTreeUseInAdmin($goodsId);
            $this->assign('course_info',$course_info);
            //获取相关课程
            $submit_list = $course->getSearchGoodsList(5,0,['category_id'=>$course_info['category_id'],'state'=>1,'goods_id'=>['neq',$course_info['goods_id']]],'sort,goods_id desc','*');
            $this->assign("submit_list", $submit_list);
            //获取用户课程收藏状态
            $uid = $this->uid;
            $CourseFollow = new CourseFollow();
            $follow_info = $CourseFollow->getInfo(['id'=>$uid,'cover_id'=>$course_info['goods_id'],'state'=>0],'follow_id');
            empty($follow_info)?$state=0:$state=1;
            $this->assign("state", $state);
            //评价内容
            $page_index = 1;//request()->post('page_index');
            $page_size = 5;//request()->post('page_size');
            $condition["goods_id"] = $goodsId;
            $condition["is_show"] = 1;
            $assessList = $course->getGoodsEvaluateList($page_index, $page_size, $condition, 'addtime desc');
            $this->assign('assessList',$assessList['data']);
            $this->assign('uid',$uid);
            return view($this->style . 'Courses/coursedetail');
        }
    }
    /**
     * 课程目录视频
     */
    public function video_view()
    {
        $course = new CourseService();
        if(request()->isAjax()){
            //添加分享记录
            $goods_id = request()->post('goods_id', 0);
            $catalogue_id = request()->post('catalogue_id', 0);
            $video_id = request()->post('video_id', 0);
            $uid = $this->uid;
            $course_catalogue = new CourseCatalogue();
            $res = $course_catalogue->addCourseVideoShare($goods_id,$catalogue_id,$video_id,$uid);
            return $res;
        }else{
            $uid = $this->uid;
            //获取课程信息
            $goods_id = request()->get('goods_id', 0);
            $course_info = $course->getGoodsDetail($goods_id);
            $this->assign('course_info',$course_info);
            //获取课程目录
            $catalogue_id = request()->get('id', 0);
            $course_catalogue = new CourseCatalogue();
            $catalogue_info = $course_catalogue->getCourseCatalogueDetail($catalogue_id);
            $this->assign('catalogue_info',$catalogue_info);
            //课程视频列表
            $coursecate = new CourseCatalogue();
            $catalogue_id = request()->get('id', '');
            $res = $coursecate->getCourseCatalogueVideoQuery($catalogue_id);
            $ourseTeacher = new CourseTeacher();
            $last = 0;
            $i = 0;
            $rcount = count($res);
            if(!empty($res)){
                foreach($res as $k=>$v){
                    $teacher_info = $ourseTeacher->getCourseTeacherDetail($v['teacher_id']);
                    $res[$k]['teacher_pic'] =  $teacher_info['teacher_pic'];
                    if($uid){
                        $res[$k]['share_num'] =  $coursecate->getVideoShareCount(['video_id'=>$v['video_id'],'uid'=>$uid]);
                        if($res[$k]['share_num']>0){
                           $i++; 
                        }
                    }else{
                        $res[$k]['share_num'] =  0;
                    } 
                }
            }
            
            //下一节是否可点击
            if($i==$rcount){
                $last = 1;
            }
            //获取下一节的id
            $lastInfo = $coursecate->getCourseCatalogueInfo(['catalogue_id'=>['gt',$catalogue_id],'goods_id'=>$goods_id],'catalogue_id,catalogue_name');
            $this->assign('lastInfo',$lastInfo);
            $this->assign('last',$last);
            $this->assign('res',$res);
            $this->assign('catalogue_id',$catalogue_id);
            $this->assign('goods_id',$goods_id);
            $this->assign('uid',$uid);
            return view($this->style . 'Courses/video_view');
        }
    }
    /**
     * 关注&收藏
     *
     */
    public function follow()
    {
        $uid = $this->uid;
        if (empty($uid)) {
            echo 5;
            exit;
        }
        $state = request()->post('state', 0);
        $cover_id = request()->post('cover_id', 0);
        $cover_name = request()->post('cover_name', 0);
        $member = new MemberService();
        $member_info = $member->getUserInfo();
        $CourseFollow = new CourseFollow();
        $follow_info = $CourseFollow->getInfo(['id'=>$uid,'cover_id'=>$cover_id],'follow_id');
        $data = [
             'id'=>$uid,
             'id_name'=>$member_info['user_name'],
             'cover_id'=>$cover_id,
             'cover_name'=>$cover_name,
             'state'=>$state,
             'create_time'=>time()

        ];
        $course = new CourseService();
        if(empty($follow_info)){
            if($CourseFollow->save($data)){
                //课程收藏数量+1
                $course->updateFiledNum($cover_id,'collects',1);
                echo 1;
            }else{
                echo 2;
            }
        }else{
            if($CourseFollow->destroy(['follow_id'=>$follow_info['follow_id']])){
                //课程收藏数量-1
                $course->updateFiledNum($cover_id,'collects',2);
                echo 3;
            }else{
                echo 4;
            }
        }
    }
    /**
     * 专题列表
     *
     */
    public function special_list()
    {
        if(request()->isAjax()){
            $page_index = request()->get("page_index", 1);
            $page_size = request()->post("page_size", PAGESIZE);
            //专题课程
            $course = new CourseService();
            $coursespecial = new CourseClass();
            $special_list = $coursespecial->getGoodsCategoryList($page_index, $page_size,['is_visible'=>1,'is_special'=>1,'level'=>1],'sort,category_id desc','category_id,category_pic,category_name,description');
           if(!empty($special_list['data'])){
                // 获取课程名称
                foreach ($special_list['data'] as $k => $v) {
                    $course_list = array();
                    if (! empty($v['category_id'])) {
                        $course_list = $course->getSearchGoodsList(1,2,['category_id'=>$v['category_id'],'state'=>1],'sort,goods_id','goods_id,goods_name');
                        $special_list['data'][$k]['course_list'] = $course_list['data'];
                    }
                }
                return json_encode($special_list);
            }else{
                return 0;
            }
            
        }else{

            return view($this->style . 'Courses/special_list');
        }
    }
    /**
     * 专题课程详情
     *
     */
    public function specialdetail()
    {
        $course = new CourseService();
        $courseclass = new CourseClass();
        $category_id = request()->get("id", 0);
        if(request()->isAjax()){

        }else{
            $category = $courseclass->getGoodsCategoryDetail($category_id);
            $this->assign("class", $category);
            $this->assign("category_id", $category_id);
            return view($this->style . 'Courses/specialdetail');
        }
    }

    /**
     * 课程评价
     */
    public function assess()
    {
        if(request()->isAjax()){
            $course = new CourseService();
            $CourseAssess = new CourseAssess();
            $uid = $this->uid;
            $goods_id = request()->post("goods_id", 0);
            $score = request()->post("score", 0);
            $content = request()->post("content", 0);
            $member = new MemberService();
            $member_info = $member->getUserInfo();
            $course_info = $course->getGoodsDetail($goodsId);
            if($score>=8){
                $explain_type = 1; 
            }else if($score<8&&$score>4){
                $explain_type = 2; 
            }if($score<=4){
                $explain_type = 3; 
            }
            $result = $CourseAssess->addCourseAssess($uid, $member_info['user_name'], $member_info['user_headimg'], $goods_id, $course_info['goods_name'], $course_info['picture_detail']['pic_cover'], $score, $content, $explain_type);
            if($result){
                echo 1;
            }else{
                echo 2;
            }
        }else{
            $goods_id = request()->get('id', 0);
            $this->assign("goods_id", $goods_id);
            return view($this->style . 'Courses/assess');
        }
    }

    /**
     * 课程评价
     */
    public function assessList()
    {
        $course = new CourseService();
        if(request()->isAjax()){
            $page_index = request()->post('page_index');
            $page_size = request()->post('page_size', PAGESIZE);
            $goodsId = request()->post('goods_id', 0);
            $condition["goods_id"] = $goodsId;
            $condition["is_show"] = 1;
            $assessList = $course->getGoodsEvaluateList($page_index, $page_size, $condition, 'addtime desc');
            if(!empty($assessList['data'])){
                return json_encode($assessList);
            }else{
                return 0;
            }
        }else{
            $goodsId = request()->get('id', 0);
            //获取课程信息
            $course_info = $course->getGoodsDetail($goodsId);
            $this->assign("course_info", $course_info);
            $this->assign("goods_id", $goodsId);
            return view($this->style . 'Courses/assessList');
        }
    }

}