<?php
namespace app\wap\controller;

use data\service\Config;
use data\service\Goods;
use data\service\GoodsCategory;
use data\service\Member as MemberService;
use data\service\Platform;
use data\service\promotion\PromoteRewardRule;
use data\service\WebSite;
use think\Cookie;
use data\service\Promotion;
use data\service\Shop;
use data\model\NcCmsArticleModel as cmsArticle;

class Index extends BaseController
{

    /**
     * 商品楼层板块每层显示商品个数
     *
     * @var unknown
     */
    public $category_good_num = 4;

    /**
     * 商品标签板块每层显示商品个数
     *
     * @var unknown
     */
    public $recommend_goods_num = 4;

    /**
     * 手机端首页
     *
     * @return Ambigous <\think\response\View, \think\response\$this, \think\response\View>
     */
    public function index()
    {
        $platform = new Platform();
        $good_category = new GoodsCategory();
        $goods = new Goods();
        $config = new Config();
        $member = new MemberService();
        $this->web_site = new WebSite();
        $shop_id = $this->instance_id;
        
        //首页导航
        $shop = new Shop();
        $navigation_list = $shop ->ShopNavigationList(1, 0, ['type'=>2, 'is_show'=>1], "sort");
        $this->assign("navigation_list", $navigation_list["data"]);

        // 获取分类列表
        $goodsCategoryList = $good_category->getCategoryTreeUseInShopIndex();
        $this->assign("goodsCategoryList", $goodsCategoryList);

        //TOP 单品
        $hot_list = $goods->getGoodsListNew(1,5,['ng.state'=>1], 'ng.sales desc,ng.sort desc,create_time desc');
        $this->assign("hot_list", $hot_list);

        //精选活动
        $CategoryGoodsList = $goodsCategoryList;
        foreach($CategoryGoodsList as $cat=>$cate){
            $catgoods = $goods->getGoodsListNew(1,3,['ng.state'=>1,'ng.category_id'=>$cate['category_id']], 'ng.sales desc,ng.sort desc,create_time desc');
            $CategoryGoodsList[$cat]['goods'] = empty($catgoods['data'])?array():$catgoods['data'];

        }
        $this->assign("CategoryGoodsList", $CategoryGoodsList);

         // 客服
        $config_service = new Config();
        $customservice_config = $config_service->getcustomserviceConfig($shop_id);
        if (empty($customservice_config)) {
            $list['id'] = '';
            $list['value']['service_addr'] = '';
        }
        
        $this->assign("customservice_config", $customservice_config);

        // 分享
        $ticket = $this->getShareTicket();
        $this->assign("signPackage", $ticket);
        // 网站信息
        $web_info = $this->web_site->getWebSiteInfo();
        
        // 首页轮播图
        $plat_adv_list = $platform->getPlatformAdvPositionDetail(1105);
        $this->assign('plat_adv_list', $plat_adv_list);
        
        // 首页新品推荐下方广告位
        $index_adv_one = $platform->getPlatformAdvPositionDetail(1188);
        $this->assign('index_adv_one', $index_adv_one);
        
        // 首页楼层版块
        $block_list = $good_category->getGoodsCategoryBlockQuery($shop_id, $this->category_good_num);
        $this->assign('block_list', $block_list);
        // 资讯中心
        $cmsArticle = new cmsArticle();
        $cmsList = $cmsArticle->pageQuery(1,5,['status'=>2,'category'=>8],'commend_flag desc,sort, create_time desc','article_id,title,summary,image,click,create_time,commend_flag');
        $this->assign('cmsList', $cmsList);
        // 限时折扣列表
        $condition['status'] = 1;
        $condition['ng.state'] = 1;
        $discount_list = $goods->getDiscountGoodsList(1, 3, $condition, 'end_time');

        if (! empty($discount_list['data'])) {
            foreach ($discount_list['data'] as $k => $v) {
                $v['discount'] = str_replace('.00', '', $v['discount']);
            }
        }
        $this->assign('discount_list', $discount_list['data']);
        
        // 获取当前时间
        $current_time = $this->getCurrentTime();
        $this->assign('ms_time', $current_time);
        
        // 公众号配置查询
        $wchat_config = $config->getInstanceWchatConfig($this->instance_id);
        
        $is_subscribe = 0; // 标识：是否显示顶部关注 0：[隐藏]，1：[显示]
        if ($web_info["is_show_follow"] == 1) {
            // 检查是否配置过微信公众号
            if (! empty($wchat_config['value'])) {
                if (! empty($wchat_config['value']['appid']) && ! empty($wchat_config['value']['appsecret'])) {
                    // 如何判断是否关注
                    if (isWeixin()) {
                        if (! empty($this->uid)) {
                            // 检查当前用户是否关注
                            $user_sub = $this->user->checkUserIsSubscribeInstance($this->uid, $this->instance_id);
                            if ($user_sub == 0) {
                                // 未关注
                                $is_subscribe = 1;
                            }
                        }
                    }
                }
            }
        }
        
        $this->assign("is_subscribe", $is_subscribe);
        
        // 公众号二维码获取
        $this->assign('web_info', $web_info);
        $source_user_name = "";
        $source_img_url = "";
        $source_uid = request()->get('source_uid', '');
        if (! empty($source_uid)) {
            $_SESSION['source_uid'] = $source_uid;
            $user_info = $member->getUserInfoByUid($_SESSION['source_uid']);
            if (! empty($user_info)) {
                $source_user_name = $user_info["nick_name"];
                if (! empty($user_info["user_headimg"])) {
                    $source_img_url = $user_info["user_headimg"];
                }
            }
        }
        // 公告
        $platform = new Platform();
        $notice = $platform->getNoticeList(1, '', [
            "shop_id" => $this->instance_id
        ], "sort");
        $this->assign("notice", $notice["data"]);
        // 首页公告
        // $notice_arr = $config->getNotice(0);
        // $this->assign('notice', $notice_arr);
        $this->assign('source_user_name', $source_user_name);
        $this->assign('source_img_url', $source_img_url);
        
        // 首页优惠券
        $coupon_list = $member->getMemberCouponTypeList($this->instance_id, $this->uid);
        $this->assign('coupon_list', $coupon_list);
        
        // 游戏活动
        $promotion = new Promotion();
        $gameList = $promotion->getPromotionGamesList(1, 0, [
            'status' => 1,
            "activity_images" => [
                "neq",
                ""
            ]
        ], 'game_id desc');
        $this->assign("gameList", $gameList);
        
        // 判断是否开启了自定义模块
        if ($this->custom_template_is_enable == 1) {
            // 获取自定义模板信息
            $this->redirect(__URL(\think\Config::get('view_replace_str.APP_MAIN') . "/CustomTemplate/customTemplateIndex"));
        } else {
            
            return view($this->style . 'Index/index');
        }
    }

    public function index2()
    {
        $platform = new Platform();
        $good_category = new GoodsCategory();
        $goods = new Goods();
        $config = new Config();
        $member = new MemberService();
        $this->web_site = new WebSite();
        $shop_id = $this->instance_id;
        
        //首页导航
        $shop = new Shop();
        $navigation_list = $shop ->ShopNavigationList(1, 0, ['type'=>2, 'is_show'=>1], "sort");
        $this->assign("navigation_list", $navigation_list["data"]);
        
        // 分享
        $ticket = $this->getShareTicket();
        $this->assign("signPackage", $ticket);
        // 网站信息
        $web_info = $this->web_site->getWebSiteInfo();
        
        // 首页轮播图
        $plat_adv_list = $platform->getPlatformAdvPositionDetail(1105);
        $count = count($plat_adv_list['adv_list']);
        $this->assign('adv', $plat_adv_list['adv_list'][$count-1]);
        $this->assign('plat_adv_list', $plat_adv_list);
        
        // 首页新品推荐下方广告位
        $index_adv_one = $platform->getPlatformAdvPositionDetail(1188);
        $this->assign('index_adv_one', $index_adv_one);
        
        // 首页楼层版块
        $block_list = $good_category->getGoodsCategoryBlockQuery($shop_id, $this->category_good_num);
        $this->assign('block_list', $block_list);
        // 资讯中心
        $cmsArticle = new cmsArticle();
        $cmsList = $cmsArticle->pageQuery(1,5,['status'=>2,'category'=>8],'commend_flag desc,sort, create_time desc','article_id,title,summary,image,click,create_time,commend_flag');
        $this->assign('cmsList', $cmsList);
        // 限时折扣列表
        $condition['status'] = 1;
        $condition['ng.state'] = 1;
        $discount_list = $goods->getDiscountGoodsList(1, 2, $condition, 'end_time');
        if (! empty($discount_list['data'])) {
            foreach ($discount_list['data'] as $k => $v) {
                $v['discount'] = str_replace('.00', '', $v['discount']);
            }
        }
        $this->assign('discount_list', $discount_list['data']);
        
        // 获取当前时间
        $current_time = $this->getCurrentTime();
        $this->assign('ms_time', $current_time);
        
        // 公众号配置查询
        $wchat_config = $config->getInstanceWchatConfig($this->instance_id);
        
        $is_subscribe = 0; // 标识：是否显示顶部关注 0：[隐藏]，1：[显示]
        if ($web_info["is_show_follow"] == 1) {
            // 检查是否配置过微信公众号
            if (! empty($wchat_config['value'])) {
                if (! empty($wchat_config['value']['appid']) && ! empty($wchat_config['value']['appsecret'])) {
                    // 如何判断是否关注
                    if (isWeixin()) {
                        if (! empty($this->uid)) {
                            // 检查当前用户是否关注
                            $user_sub = $this->user->checkUserIsSubscribeInstance($this->uid, $this->instance_id);
                            if ($user_sub == 0) {
                                // 未关注
                                $is_subscribe = 1;
                            }
                        }
                    }
                }
            }
        }
        
        $this->assign("is_subscribe", $is_subscribe);
        
        // 公众号二维码获取
        $this->assign('web_info', $web_info);
        $source_user_name = "";
        $source_img_url = "";
        $source_uid = request()->get('source_uid', '');
        if (! empty($source_uid)) {
            $_SESSION['source_uid'] = $source_uid;
            $user_info = $member->getUserInfoByUid($_SESSION['source_uid']);
            if (! empty($user_info)) {
                $source_user_name = $user_info["nick_name"];
                if (! empty($user_info["user_headimg"])) {
                    $source_img_url = $user_info["user_headimg"];
                }
            }
        }
        // 公告
        $platform = new Platform();
        $notice = $platform->getNoticeList(1, '', [
            "shop_id" => $this->instance_id
        ], "sort");
        $this->assign("notice", $notice["data"]);
        // 首页公告
        // $notice_arr = $config->getNotice(0);
        // $this->assign('notice', $notice_arr);
        $this->assign('source_user_name', $source_user_name);
        $this->assign('source_img_url', $source_img_url);
        
        // 首页优惠券
        $coupon_list = $member->getMemberCouponTypeList($this->instance_id, $this->uid);
        $this->assign('coupon_list', $coupon_list);
        
        // 游戏活动
        $promotion = new Promotion();
        $gameList = $promotion->getPromotionGamesList(1, 0, [
            'status' => 1,
            "activity_images" => [
                "neq",
                ""
            ]
        ], 'game_id desc');
        $this->assign("gameList", $gameList);
        
        // 判断是否开启了自定义模块
        if ($this->custom_template_is_enable == 1) {
            // 获取自定义模板信息
            $this->redirect(__URL(\think\Config::get('view_replace_str.APP_MAIN') . "/CustomTemplate/customTemplateIndex"));
        } else {
            
            return view($this->style . 'Index/index2');
        }
    }
    /**
     * 得到当前时间戳的毫秒数
     *
     * @return number
     */
    public function getCurrentTime()
    {
        $time = time();
        $time = $time * 1000;
        return $time;
    }
    
    /**
     * 限时折扣
     */
    public function discount()
    {
        $platform = new Platform();
        // 限时折扣广告位
        $discounts_adv = $platform->getPlatformAdvPositionDetail(1163);
        $this->assign('discounts_adv', $discounts_adv);
        if (request()->isAjax()) {
            $goods = new Goods();
            $category_id = request()->get('category_id', '0');
            $page_index = request()->get("page", 1);
            $condition['status'] = 1;
            $condition['ng.state'] = 1;
            if (! empty($category_id)) {
                $condition['category_id_1'] = $category_id;
            }
            $discount_list = $goods->getDiscountGoodsList($page_index, PAGESIZE, $condition, "ng.sort asc,ng.create_time desc");
            foreach ($discount_list['data'] as $k => $v) {
                $v['discount'] = str_replace('.00', '', $v['discount']);
                $v['promotion_price'] = str_replace('.00', '', $v['promotion_price']);
                $v['price'] = str_replace('.00', '', $v['price']);
            }
            return $discount_list;
        } else {
            $goods_category = new GoodsCategory();
            $goods_category_list_1 = $goods_category->getGoodsCategoryList(1, 0, [
                "is_visible" => 1,
                "level" => 1
            ]);
            
            // 获取当前时间
            $current_time = $this->getCurrentTime();
            $this->assign('ms_time', $current_time);
            $this->assign('goods_category_list_1', $goods_category_list_1['data']);
            $this->assign("title_before", "限时折扣");
            return view($this->style . 'Index/discount');
        }
    }

    /**
     * 热销排行榜
     */
    public function topSelling()
    {
        if (request()->isAjax()) {
            $goods = new Goods();
            $category_id = request()->get('category_id', '0');
            $page_index = request()->get("page", 1);
            $condition['ng.state'] = 1;
            if (! empty($category_id)) {
                $condition['category_id'] = $category_id;
            }

            $goods_list = $goods->getGoodsListNew($page_index,PAGESIZE , $condition, 'ng.sales desc,ng.sort desc,create_time desc');  $condition['page_index'] = $page_index;          
            $goods_list['condition'] = $condition;
            return $goods_list;
        } else {
            $category_id = request()->get('category_id', '0');
            $goods_category = new GoodsCategory();
            $goods_category_list_1 = $goods_category->getGoodsCategoryList(1, 0, [
                "is_visible" => 1,
                "level" => 1
            ]);
            
            // 获取当前时间
            $current_time = $this->getCurrentTime();
            $this->assign('category_id', $category_id);
            $this->assign('ms_time', $current_time);
            $this->assign('goods_category_list_1', $goods_category_list_1['data']);
            $this->assign("title_before", "热销排行榜");
            return view($this->style . 'Index/topSelling');
        }
    }
    // 分享送积分
    public function shareGivePoint()
    {
        if (request()->isAjax()) {
            $rewardRule = new PromoteRewardRule();
            $url = request()->post('share_url', '');
            $url_arr = parse_url($url);
            if (stristr($url_arr['path'], 'goods/goodsdetail')) {
                
                $url_query_arr = explode('&', $url_arr['query']);
                $params = array();
                foreach ($url_query_arr as $param) {
                    $item = explode('=', $param);
                    $params[$item[0]] = $item[1];
                }
                if (! empty($params['id'])) {
                    hook('pointShareGoods', [
                        'goods_id' => $params['id']
                    ]);
                }
            }
            $res = $rewardRule->memberShareSendPoint($this->instance_id, $this->uid);
            return AjaxReturn($res);
        }
    }

    /**
     * 设置页面打开cookie
     */
    public function setClientCookie()
    {
        $client = request()->post('client', '');
        Cookie::set("default_client", $client);
        $cookie = request()->cookie('default_client', '');
        if ($cookie != "") {
            return AjaxReturn(1);
        }
    }

    /**
     * 首页领用优惠券
     */
    public function getCoupon()
    {
        $coupon_type_id = request()->post('coupon_type_id', 0);
        if (! empty($this->uid)) {
            $member = new MemberService();
            $retval = $member->memberGetCoupon($this->uid, $coupon_type_id, 2);
            return AjaxReturn($retval);
        } else {
            return AjaxReturn(NO_LOGIN);
        }
    }

    /**
     * 查看首页商城热卖更多
     */
    public function getGoodsHotList()
    {
        if (request()->isAjax()) {
            $goods_platform = new Platform();
            $condition['is_hot'] = 1;
            $goods_hot_list = $goods_platform->getPlatformGoodsList(1, 0, $condition);
            return $goods_hot_list;
        }
        $this->style = "wap/aozhou/";
        $style = "wap/aozhou/";
        $this->assign('style', $style);
        return view($this->style . 'Index/hot');
    }

    /**
     * 查看首页商城推荐更多 
     */
    public function getGoodsRecommendList()
    {
        if (request()->isAjax()) {
            $goods_platform = new Platform();
            $condition['is_recommend'] = 1;
            $goods_recommend_list = $goods_platform->getPlatformGoodsList(1, 0, $condition);
            return $goods_recommend_list;
        }
        $this->style = "wap/aozhou/";
        $style = "wap/aozhou/";
        $this->assign('style', $style);
        return view($this->style . 'Index/recommend');
    }

    /**
     * 公告详情
     * 
     * @return Ambigous <\think\response\View, \think\response\$this, \think\response\View>
     */
    public function noticeContent()
    {
        $notice_id = request()->get('id', '');
        $goods_platform = new Platform();
        $notice_info = $goods_platform->getNoticeDetail($notice_id);
        if (empty($notice_info)) {
            $this->error("未获取到公告信息");
        }
        $this->assign('article_info', $notice_info);
        
        // 上一篇
        $prev_info = $goods_platform->getNoticeList(1, 1, [
            "id" => array(
                "<",
                $notice_id
            )
        ], "id desc");
        $this->assign("prev_info", $prev_info['data'][0]);
        // 下一篇
        $next_info = $goods_platform->getNoticeList(1, 1, [
            "id" => array(
                ">",
                $notice_id
            )
        ], "id asc");
        $this->assign("next_info", $next_info['data'][0]);
        return view($this->style . 'Index/noticeContent');
    }

    /**
     * 公告列表
     */
    public function noticeList()
    {
        if (request()->isAjax()) {
            $page = request()->post("page", 1);
            $goods_platform = new Platform();
            $article_list = $goods_platform->getNoticeList($page, 0, '', 'sort desc');
            return $article_list;
        }
        return view($this->style . 'Index/noticeList');
    }
}