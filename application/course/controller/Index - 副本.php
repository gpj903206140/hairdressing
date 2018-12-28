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
            
        }else{
            $this->getindex();
            $page_index = request()->get("page_index", 1);
            $page_size = 5;//request()->post("page_size", PAGESIZE);
            $category_id = request()->get("category_id", -1); // 分类Id
            if($category_id==-1){
                $condition['ng.is_recommend'] = 1;
            }elseif($category_id>0){
                $condition['ng.category_id'] = $category_id;
            }
            $course_type = request()->get("course_type", 0); //线上/线下课程
            $state = request()->get("state", 0); 
            if($state==0){
                $order = 'ng.goods_id desc';
            }elseif($state==1){
                $order = 'ng.sales desc';
            }if($state==2){
                $order = 'ng.sort';
            }
            $condition['ng.course_type'] = $course_type; 
            $result = $courseervice->getGoodsViewList($page_index, $page_size, $condition, $order);
            if(!empty($result['data'])){
                // 根据商品分组id，查询标签名称
                foreach ($result['data'] as $k => $v) {
                    if (! empty($v['group_id_array'])) {
                        $goods_group_id = explode(',', $v['group_id_array']);
                        $goods_group_name = '';
                        foreach ($goods_group_id as $key => $val) {
                            $course_group = new CourseGroup();
                            $goods_group_info = $course_group->getGoodsGroupDetail($val);
                            if (! empty($goods_group_info)) {
                                $goods_group_name .= $goods_group_info['group_name'] . ',';
                            }
                        }
                        $goods_group_name = rtrim($goods_group_name, ',');
                        $result["data"][$k]['goods_group_name'] = explode(',',$goods_group_name);
                    }
                }
            }
            //获取推荐课程
            $course = new Course();
            $where = array();
            $where = ['is_recommend'=>1,'state'=>1];
            if($category_id>0){
               $where['category_id'] = $category_id; 
            }
            $recommend_list = $course->getSearchGoodsList(3,0,$where,'sort,goods_id desc','*');
            $this->assign("recommend_list", $recommend_list);
            $this->assign("course_list", $result);
            $this->assign("state", $state);
            $this->assign("course_type", $course_type);
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
            $condition['is_visible'] = 1;
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