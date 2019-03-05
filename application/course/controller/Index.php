<?php
namespace app\course\controller;

use data\service\Config;
use data\service\Course;
use data\service\CourseClass;
use data\service\CourseGroup as CourseGroup;
use data\service\CourseMechanism as CourseMechanism;
use data\service\CourseTeacher as CourseTeacher;
use data\service\Member as MemberService;
use data\service\Platform;
use data\service\promotion\PromoteRewardRule;
use data\service\WebSite;
use think\Cookie;
use data\service\Promotion;
use data\model\AlbumPictureModel as AlbumPicture;

use data\model\NsCourseFollowModel as CourseFollow;
class Index extends BaseController
{

    /**
     * 课程楼层板块每层显示课程个数
     *
     * @var unknown
     */
    public $class_course_num = 4;

    /**
     * 课程标签板块每层显示商品个数
     *
     * @var unknown
     */
    public $recommend_course_num = 4;
     public function __construct()
    {
        parent::__construct();
        $this->assign("fthis", '1');
    }
    /**
     * 手机端首页
     *
     */
    public function getindex()
    {
         // 客服
        $config_service = new Config();
        $customservice_config = $config_service->getcustomserviceConfig($shop_id);
        if (empty($customservice_config)) {
            $list['id'] = '';
            $list['value']['service_addr'] = '';
        }
        
        $this->assign("customservice_config", $customservice_config);
        $platform = new Platform();

        // 首页轮播图
        $plat_adv_list = $platform->getPlatformAdvPositionDetail(1105);
        $this->assign('plat_adv_list', $plat_adv_list);
        //获取课程分类
        $course_class = new CourseClass();
        $one_list = $course_class->getCategoryTreeUseInAdmin();
        $this->assign("class_list", $one_list);
        //获取推荐课程
        $course = new Course();
        $recommend_list = $course->getSearchGoodsList(3,0,['is_recommend'=>1,'state'=>1],'sort,goods_id desc','*');
        $this->assign("recommend_list", $recommend_list);
        //获取热门课程
        $course = new Course();
        $hot_list = $course->getSearchGoodsList(5,0,['is_hot'=>1,'state'=>1],'sort,goods_id desc','*');
        
        $hot_list['hot_one'] = $hot_list['data'][0];
        unset($hot_list['data'][0]);
        $this->assign("hot_list", $hot_list);
        //获取最新课程
        $course = new Course();
        $new_list = $course->getSearchGoodsList(4,0,['is_new'=>1,'state'=>1],'sort,goods_id desc','*');
        $this->assign("new_list", $new_list);
        //专题课程
        $coursespecial = new CourseClass();
        $special_list = $coursespecial->getGoodsCategoryList(10,0,['is_visible'=>1,'is_special'=>1,'level'=>1],'sort,category_id desc','category_id,category_pic,category_name');
        $this->assign("special_list", $special_list);
        //合作机构
        $course_mechanism = new CourseMechanism();
        $mechanism_list = $course_mechanism->getMechanismTreeUseInAdmin();
        $this->assign("mechanism_list", $mechanism_list);
    }
    /**
     * 手机端首页
     *
     */
    public function index()
    {
        $this->getindex();
        
        return view($this->style . 'Index/index');
    }
    /**
     * 分类首页
     *
     */
    public function class_index()
    {
        $courseervice = new Course();
        if(request()->isAjax()){
            //线上/线下课程
            $page_index = request()->post("page_index", 1);
            $page_size = 5;//request()->post("page_size", PAGESIZE);
            $category_id = request()->post("category_id", 0); // 分类Id
            $condition['state'] = 1;
            if($category_id>0){
                $condition['category_id'] = $category_id;
            }
            $course_type = request()->post("course_type", 0); 
            $state = request()->post("state", 0); 
            if($state==0){
                $order = 'goods_id desc';
            }elseif($state==1){
                $order = 'sales desc';
            }if($state==2){
                $order = 'sort';
            }
            $condition['course_type'] = $course_type; 
            $result = $courseervice->getSearchGoodsList($page_index, $page_size, $condition, $order);
            if(!empty($result['data'])){
                return json_encode($result);
            }else{
                return 0;
            }
        }else{
            $this->getindex();
            $category_id = request()->get("category_id", 0); // 分类Id
            //获取推荐课程
            $course = new Course();
            $where = array();
            $where = ['is_recommend'=>1,'state'=>1];
            if($category_id>0){
               $where['category_id'] = $category_id; 
            }
            $recommend_list = $course->getSearchGoodsList(3,0,$where,'sort,goods_id desc','*');
            $this->assign("recommend_list", $recommend_list);
            $this->assign("category_id", $category_id);
            return view($this->style . 'Index/class_index');
        }
        
        
    }
    /**
     * 合作机构
     */
    public function mechanism_list()
    {
        if(request()->isAjax()){
            $page_index = request()->get("page_index", 1);
            $page_size = request()->post("page_size", PAGESIZE);
            $is_attention = request()->get("is_attention", 0);
            $condition['is_visible'] = 1;
            if($is_attention==1){
                $uid = $this->uid;
                $CourseFollow = new CourseFollow();
                $follow_list = $CourseFollow->getQuery(['id'=>$uid,'state'=>1],'cover_id','follow_id desc');
                if(empty($follow_list)){
                    return 0;
                }
                foreach($follow_list as $v){
                    $gid[] = $v['cover_id'];
                }
                $gid = implode(',',$gid);
                $condition['mechanism_id'] = ['in',$gid];
            }
            $coursecate = new CourseMechanism();
            $result = $coursecate->getCourseMechanismList($page_index, $page_size, $condition, 'sort,mechanism_id desc');
            if(!empty($result['data'])){
                return json_encode($result);
            }else{
                return 0;
            }
        }else{
            
            return view($this->style . 'Index/mechanism_list');
        }
    }
    /**
     * 合作机构
     */
    public function mechanismdetail()
    {
        if(request()->isAjax()){

        }else{
            //机构详情
            $coursecate = new CourseMechanism();
            $mechanism_id = request()->get('id', '');
            $type = request()->get('type', 0);
            $mechanism = $coursecate->getCourseMechanismDetail($mechanism_id);
            $this->assign("data", $mechanism);
            //机构老师
            $course_teacher = new CourseTeacher();
            $teacher_list = $course_teacher->getTeacherTreeUseInAdmin($mechanism_id);
            $this->assign("teacher_list", $teacher_list);
            //作品墙
            $AlbumPicture = new AlbumPicture();
            $imgs = $AlbumPicture->getQuery(['shop_id'=>$mechanism_id],'pic_id,pic_cover,pic_cover_big,pic_cover_mid,pic_cover_small,pic_cover_micro','upload_time desc');
            //获取当前机构关注状态
            $uid = $this->uid;
            $CourseFollow = new CourseFollow();
            $follow_info = $CourseFollow->getInfo(['id'=>$uid,'cover_id'=>$mechanism_id,'state'=>1],'follow_id');
            empty($follow_info)?$state=0:$state=1;
            $this->assign("state", $state);
            $this->assign("imgs", $imgs);
            $this->assign("type", $type);
            $this->assign("mechanism_id", $mechanism_id);
            return view($this->style . 'Index/mechanismdetail');
        }
    }

    /**
     * 机构老师
     */
    public function teacherdetail()
    {
        if(request()->isAjax()){

        }else{
            //机构详情
            $mechanism_id = request()->get('mechanism_id', '');
            //机构老师
            $course_teacher = new CourseTeacher();
            $teacher_list = $course_teacher->getTeacherTreeUseInAdmin($mechanism_id);
            $this->assign("teacher_list", $teacher_list);
            $count = count($teacher_list)-1;
            $this->assign("last", $teacher_list[$count]);            
            return view($this->style . 'Index/teacherdetail');
        }
    }
    /**
     * 照片墙
     */
    public function photo_wall()
    {
        if(request()->isAjax()){

        }else{
            $mechanism_id = request()->get('mechanism_id', '');
            //作品墙
            $AlbumPicture = new AlbumPicture();
            $imgs = $AlbumPicture->getQuery(['shop_id'=>$mechanism_id],'pic_id,pic_cover,pic_cover_big,pic_cover_mid,pic_cover_small,pic_cover_micro','upload_time desc');
            $count = count($imgs)-1;
            $this->assign("last", $imgs[$count]);
            $this->assign("imgs", $imgs);
            return view($this->style . 'Index/photo_wall');
        }
    }
}