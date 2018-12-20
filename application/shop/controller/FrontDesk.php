<?php
namespace app\shop\controller;

use data\service\Article;
use data\service\Goods;
use data\service\GoodsCategory;
use data\service\Platform;
use think\Cookie;
use data\model\AlbumClassModel as AlbumClass;
use data\model\AlbumPictureModel as AlbumPicture;
use data\service\Promotion;
use data\model\NsCouponTypeModel as NsCouponTypeModel;
use data\service\Article as CmsService;
/**
 * 首页控制器
 */
class FrontDesk extends BaseController
{

    public function __construct()
    {
        parent::__construct();
    }

    public function _empty($name)
    {}
    
    /*
     * 平台首页
     *
     * @return \think\response\View
     */
    public function index()
    {
        //获取轮播图
        $AlbumClass = new AlbumClass();
        $AlbumPicture = new AlbumPicture();
        $AlbumClassList = $AlbumClass->getQuery(['index_slide'=>1],'album_id','sort desc');
        if(!empty($AlbumClassList)){
            $album_id = '';
            foreach($AlbumClassList as $v){
                $album_id .= ','.$v['album_id'];
            }
            $album_id = trim($album_id,',');
        }else{
            $album_id = 0;
        }//['album_id'=>['in','('.$album_id.')']]
        $AlbumPictureList = $AlbumPicture->getQuery("album_id in({$album_id})",'pic_id,pic_cover_big,pic_cover','upload_time desc');
        $this->assign("AlbumPictureList", $AlbumPictureList);
        // 资讯中心
        $article = new Article();
        $article_list = $article->getArticleList(1, 11, [
            "status" => 2,
            'category'=>8
        ], 'commend_flag desc,sort,create_time desc');
        $this->assign("article_list", $article_list['data']);
        // 关于我们
        $about_list = $article->getArticleList(1, 1, [
            "status" => 2,
            'category'=>9
        ], 'public_time desc');
        $this->assign("about_list", $about_list['data'][0]);     
        //优惠券
        $coupon_type = new NsCouponTypeModel();
        $coupon_type_id = $coupon_type->getInfo(['is_show'=>1],'coupon_type_id', 'create_time desc');
        if (! empty($coupon_type_id)) {
            $promotion = new Promotion();
            $condition['coupon_type_id'] = [
                'eq',
                $coupon_type_id['coupon_type_id']
            ];
            $data = $promotion->getCouponTypeDetail($coupon_type_id['coupon_type_id']);
            $this->assign('data', $data);
        }
        $path = $this->showMemberCouponQecode($coupon_type_id);
        $this->assign('code_path', $path);
        return view($this->style . 'FrontDesk/index');
    }
    /**
     * 制作用户分享优惠券二维码
     */
    function showMemberCouponQecode($coupon_type_id)
    {
        $uid = ! empty($this->uid) ? $this->uid : 0;
        
        $url = __URL(__URL__ . '/wap/goods/getCoupon?coupon_type_id=' . $coupon_type_id . '&source_uid=' . $uid);
        
        // 查询并生成二维码
        
        $upload_path = "upload/qrcode/coupon_qrcode";
        if (! file_exists($upload_path)) {
            mkdir($upload_path, 0777, true);
        }
        $path = $upload_path . '/coupon_' . $coupon_type_id . '_' . $uid . '.png';
        if (! file_exists($path)) {
            getQRcode($url, $upload_path, "coupon_" . $coupon_type_id . '_' . $uid);
        }
        return $path;
    }
    /*
     * 资讯列表
     *
     * @return \think\response\View
     */
    public function articleList()
    {
        $article = new CmsService();
        $category = request()->get('category', '1');
        switch($category){
            case 1:
                $category_name='眼部整形';
            break;
            case 2:
                $category_name='鼻部整形';
            break;
            case 3:
                $category_name='面部精雕';
            break;
            case 4:
                $category_name='美肤中心';
            break;
            case 5:
                $category_name='胸部整形';
            break;
            case 6:
                $category_name='面部年轻化';
            break;
            case 7:
                $category_name='身材管理';
            break;
            case 8:
                $category_name='资讯中心';
            break;
            case 9:
                $category_name='关于我们';
            break;
            case 10:
                $category_name='联系我们';
            break;
            case 11:
                $category_name='专家团队';
            break;
            default:
            $category_name='';
        }
        $this->assign("category_name", $category_name);
        $page_index = request()->get('page', '1');
        $class_id = request()->get('id', '');
        $pid = request()->get('class_id', '');
        if($class_id>0){
            $condition = [
                'nca.class_id' => $class_id
            ];
        }
        
        $condition['nca.category'] = $category;
        $PAGESIZE = 2;
        $result = $article->getArticleList($page_index, $PAGESIZE , $condition, 'nca.commend_flag desc,nca.sort,nca.create_time desc');
        $cmsList = $article->getArticleClass(1, 0, '', 'sort');
        $articleClass = $article->getArticleClassDetail($class_id);
        $name = $articleClass['name'];
        $this->assign("category", $category);
        $this->assign("name", $name);
        $this->assign('page_count', $result['page_count']);
        $this->assign('total_count', $result['total_count']);
        $this->assign('page', $page_index);
        $this->assign('result', $result['data']);
        $this->assign('cmsList', $cmsList['data']);
        $this->assign("pid", $pid);
        $this->assign('class_id', $class_id);
        return view($this->style . 'FrontDesk/articleList');
    }
    /*
     * 资讯详情
     *
     * @return \think\response\View
     */
    public function articleDetails()
    {
        $cms = new CmsService();
        $category = request()->get('category', '1');
        switch($category){
            case 1:
                $category_name='眼部整形';
            break;
            case 2:
                $category_name='鼻部整形';
            break;
            case 3:
                $category_name='面部精雕';
            break;
            case 4:
                $category_name='美肤中心';
            break;
            case 5:
                $category_name='胸部整形';
            break;
            case 6:
                $category_name='面部年轻化';
            break;
            case 7:
                $category_name='身材管理';
            break;
            case 8:
                $category_name='资讯中心';
            break;
            case 9:
                $category_name='关于我们';
            break;
            case 10:
                $category_name='联系我们';
            break;
            case 11:
                $category_name='专家团队';
            break;
            default:
            $category_name='';
        }
        $this->assign("category_name", $category_name);
        $this->assign("category", $category);
        // 文章ID
        if (empty($article_id)) {
            $article_id = request()->get('article_id', '');
        }
        
        $class_id = request()->get('id', '');
        $pid = request()->get('class_id', '');
        
        $info = null;
        if (! empty($article_id)) {
            $info = $cms->getArticleDetail($article_id);
            if (empty($info)) {
                echo '<script>window.history.back(-1);</script>';
            }
            $class_id = $info["class_id"];
            $articleClass = $cms->getArticleClassDetail($class_id);
            $pid = $articleClass['pid'];
        } else {
            echo '<script>window.history.back(-1);</script>';
        }
        $content = htmlspecialchars_decode(html_entity_decode($info["content"], ENT_COMPAT, "UTF-8"), ENT_COMPAT);
        $info["content"] = $content;
        // 标题title(文章详情页面)
        $this->assign('info', $info);
        return view($this->style . 'FrontDesk/articleDetails');
    }
    /*
     * 医学美容
     *
     * @return \think\response\View
     */
    public function cosmetology()
    {
        // 美丽资讯
        $article = new Article();
        $category = request()->get('category', '1');
        $article_list = $article->getArticleList(1, 11, [
            "status" => 2,
            'category'=>8
        ], 'commend_flag desc,sort,create_time desc');
        $this->assign("article_list", $article_list['data']);
        // 相关项目
        $Relevant_list = $article->getArticleList(1, 3, [
            "status" => 2,
            'category'=>$category
        ], 'commend_flag desc,sort,create_time desc');
        $this->assign("Relevant_list", $Relevant_list['data']);
        // 专家团队
        $expert_list = $article->getArticleList(1, 4, [
            "status" => 2,
            'category'=>11
        ], 'commend_flag desc,sort,create_time desc');
        $this->assign("expert_list", $expert_list['data']);
        $this->assign("category", $category);
        return view($this->style . 'FrontDesk/cosmetology');
    }
    /*
     * 专家团队列表
     *
     * @return \think\response\View
     */
    public function expertList()
    {
        $article = new CmsService();
        $category = request()->get('category', '1');
        $page_index = request()->get('page', '1');
        $class_id = request()->get('id', '');
        $pid = request()->get('class_id', '');
        if(!empty($pid)){
            $condition = [
                'nca.class_id' => $class_id,
            ];
        }
        $condition['nca.category'] = 11;
        $condition['nca.status'] = 2;
        $PAGESIZE = 2;
        $result = $article->getArticleList($page_index, $PAGESIZE , $condition, 'nca.commend_flag desc,nca.sort,nca.create_time desc');
        // 美丽资讯
        $article = new Article();
        $category = request()->get('category', '1');
        $article_list = $article->getArticleList(1, 11, [
            "status" => 2,
            'category'=>8
        ], 'commend_flag desc,sort,create_time desc');
        $this->assign("article_list", $article_list['data']);
        // 相关项目
        $Relevant_list = $article->getArticleList(1, 3, [
            "status" => 2,
            'category'=>$category
        ], 'commend_flag desc,sort,create_time desc');
        $this->assign("Relevant_list", $Relevant_list['data']);
        $this->assign('page_count', $result['page_count']);
        $this->assign('total_count', $result['total_count']);
        $this->assign('page', $page_index);
        $this->assign('result', $result['data']);
        $this->assign("pid", $pid);
        $this->assign('class_id', $class_id);
        return view($this->style . 'FrontDesk/expertList');
    }
    /**
     * 帮助中心
     */
    public function help()
    {
        $platform = new Platform();
        $document_id = request()->get("id", "");
        $class_id = request()->get("class_id", "");
        if (!empty($document_id) && ! is_numeric($document_id)) {
            
            $redirect = __URL(__URL__ . '/index');
            $this->redirect($redirect);
        }
        if (!empty($class_id) && ! is_numeric($class_id)) {
            
            $redirect = __URL(__URL__ . '/index');
            $this->redirect($redirect);
        }
        $platform_help_class = $platform->getPlatformHelpClassList(1, 0, '', 'sort');
        $this->assign('platform_help_class', $platform_help_class['data']); // 帮助中心分类列表
        
        $platform_help_document = $platform->getPlatformHelpDocumentList(1, 0, 'is_visibility=1', 'sort');
        $this->assign('platform_help_document', $platform_help_document['data']); // 帮助中心列表
        
        if (empty($document_id)) {
            $is_exit = false;
            foreach ($platform_help_class['data'] as $class) {
                if ($is_exit) {
                    break;
                }
                foreach ($platform_help_document['data'] as $document) {
                    if ($class['class_id'] == $document['class_id']) {
                        $is_exit = true;
                        $title = $document['title'];
                        $content = $document['content'];
                        $classid = $document['class_id'];
                        $documentid = $document['id'];
                        break;
                    }
                }
            }
            $help_document_info = array(
                'title' => $title,
                'content' => $content
            );
            if(empty($class_id)){
                $class_id = $classid;
            }
            if(empty($document_id)){
                $document_id = $documentid;
            }
            $this->assign('help_document_info', $help_document_info); // 帮助中心信息详情
                                                                      
            // 帮助中心地址栏title(帮助中心详情页)
            $this->assign('title_before', $help_document_info['title']);
            $seoconfig['seo_desc'] = $help_document_info['title'];
            $this->assign("seoconfig", $seoconfig);
        } else {
            $help_document_info = $platform->getPlatformHelpDocumentList(1, 0, [
                'id' => $document_id,
                'is_visibility' => 1
            ], 'sort');
            if (empty($help_document_info['data'])) {
                $redirect = __URL(__URL__ . '/index');
                $this->redirect($redirect);
            }
            $this->assign('help_document_info', $help_document_info['data'][0]); // 帮助中心信息详情
                                                                                 
            // 帮助中心地址栏title(帮助中心详情页)
            $this->assign('title_before', $help_document_info['data'][0]['title']);
            $seoconfig['seo_desc'] = $help_document_info['data'][0]['title'];
            $this->assign("seoconfig", $seoconfig);
        }
        $this->assign("title_before", "帮助中心");
        $this->assign('document_id', $document_id);
        $this->assign('class_id', $class_id);
        return view($this->style . 'FrontDesk/help');
    }
}