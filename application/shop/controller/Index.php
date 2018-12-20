<?php
namespace app\shop\controller;

use data\service\Article;
use data\service\Goods;
use data\service\GoodsCategory;
use data\service\Platform;
use think\Cookie;
use \think\Session as Session;

/**
 * 首页控制器
 */
class Index extends BaseController
{

    public function __construct()
    {
        //http://localhost/shopping9/index.php?s=/shop/index/index&voucher=21
        //http://f7.wjxit.com/index.php?s=/shop/index/index&voucher=21
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
        $default_client = request()->cookie("default_client", "");
        $web_info = $this->web_site->getWebSiteInfo();
        $voucher = request()->get('voucher','');
        $voucher2 = Session::get('voucher');
        if (isset($voucher)&&!empty($voucher)||isset($voucher2)&&!empty($voucher2)) {
            if(!empty($voucher)){
               Session::set('voucher', $voucher); 
            }
        }else{
            $redirect = __URL(__URL__ . "/wap");
            $this->redirect($redirect);
            exit();
        }
        if ($default_client == "shop") {
            // do something
        } elseif (request()->isMobile() && $web_info['wap_status'] != 2) {
            $redirect = __URL(__URL__ . "/wap");
            $this->redirect($redirect);
            exit();
        }
        if ($web_info['web_status'] == 2) {
            webClose($web_info['close_reason']);
        }
        
        // 当切换到PC端时，隐藏右下角返回手机端按钮
        if (! request()->isMobile() && $default_client == "shop") {
            $default_client = "";
        }
        // 公告
        $platform = new Platform();
        $notice = $platform->getNoticeList(1, 10, [
            "shop_id" => $this->instance_id
        ], "sort");
        $this->assign("notice", $notice["data"]);
        
        // 资讯中心
        $article = new Article();
        $article_list = $article->getArticleList(1, 11, [
            "status" => 2,
            'category'=>8
        ], 'public_time desc');

        $this->assign("article_list", $article_list['data']);
        
        $this->assign('is_head_goods_nav', 1); // 代表默认显示以及分类
                                               
        // 楼层版块新
        $good_category = new GoodsCategory();
        $shop_id = $this->instance_id;
        $block_list = $good_category->getGoodsCategoryBlockList($shop_id);
        if (! empty($block_list)) {
            foreach ($block_list as $k => $v) {
                if (! empty($v['ad_picture'])) {
                    $block_list[$k]['ad_list'] = json_decode($v['ad_picture'], true);
                }
                if ($v['ad_picture'] == "" && empty($v['brand_list'])) {
                    $block_list[$k]["block_width"] = 100;
                    $block_list[$k]["goods_block_width"] = 19.80;
                    $block_list[$k]["goods_num"] = 10;
                } elseif (($v['ad_picture'] != "" && empty($v['brand_list'])) || ($v['ad_picture'] == "" && ! empty($v['brand_list']))) {
                    $block_list[$k]["block_width"] = 80;
                    $block_list[$k]["goods_block_width"] = 24.85;
                    $block_list[$k]["goods_num"] = 8;
                } else {
                    $block_list[$k]["block_width"] = 60;
                    $block_list[$k]["goods_block_width"] = 33.15;
                    $block_list[$k]["goods_num"] = 6;
                }
            }
        }
        $goods_brand_list = $good_category->getGoodsBrandList(1, 5, [
            "brand_recommend" => 1
        ], '', '');
        $this->assign('block_list', $block_list);
        $this->assign('goods_brand_list', $goods_brand_list);
        
        // 限时折扣
        $goods = new Goods();
        $page = request()->get('page', 1);
        $category_id = request()->get('category_id', 0);
        
        // 获取当前时间
        $current_time = $this->getCurrentTime();
        $this->assign('ms_time', $current_time);
        
        $condition['ng.state'] = 1;
        $condition['status'] = 1;
        if (! empty($category_id)) {
            $condition['category_id_1'] = $category_id;
        }
        $discount_list = $goods->getDiscountGoodsList($page, 5, $condition, 'end_time');

        $assign_get_list = array(
            'page' => $page,
            'page_count' => $discount_list['page_count'], // 总页数
            'total_count' => $discount_list['total_count'], // 总条数
            'discount_list' => $discount_list['data'], // 店铺分页
            'category_id' => $category_id
        ); // 已选中商品分类一级
        foreach ($assign_get_list as $key => $value) {
            $this->assign($key, $value);
        }
        // 商品促销
        // $this->getRecommendGoodsList();
        
        // 友情链接
        $link_list = $platform->getLinkList(1, 0, [
            "is_show" => 1
        ], 'link_sort desc');
        $this->assign("link_list", $link_list["data"]);
        return view($this->style . 'Index/index');
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
     * 限时折扣(单独界面)
     *
     * @return \think\response\View
     */
    public function discount()
    {
        $goods = new Goods();
        $page = request()->get('page', 1);
        $category_id = request()->get('category_id', 0);
        $condition['ng.state'] = 1;
        $condition['status'] = 1;
        if (! empty($category_id)) {
            $condition['category_id_1'] = $category_id;
        }
        $discount_list = $goods->getDiscountGoodsList($page, PAGESIZE, $condition, 'end_time');
        $assign_get_list = array(
            'page' => $page,
            'page_count' => $discount_list['page_count'], // 总页数
            'total_count' => $discount_list['total_count'], // 总条数
            'discount_list' => $discount_list['data'], // 店铺分页
            'category_id' => $category_id
        ); // 已选中商品分类一级
        foreach ($discount_list['data'] as $k => $v) {
            $sale_down = $v['price'] - $v['promotion_price'];
            // 四舍五入取小数点后两位有效数字
            $sale_price = round($sale_down, 2);
            $discount_list['data'][$k]['sale_down'] = $sale_price;
        }
        
        foreach ($assign_get_list as $key => $value) {
            $this->assign($key, $value);
        }
        $this->assign('is_head_goods_nav', 1); // 代表默认显示以及分类
        $this->assign("title_before", "限时折扣");
        return view($this->style . 'Index/discount');
    }

    /**
     * 平台促销板块信息
     */
    public function controlCommendBlock()
    {
        $Platform = new Platform();
        $condition = [
            'class_type' => 2,
            'is_use' => 1,
            'show_type' => 0
        ];
        $recommend_block = $Platform->getPlatformGoodsRecommendClass($condition);
        foreach ($recommend_block as $k => $v) {
            // 获取模块下商品
            $goods_list = $Platform->getPlatformGoodsRecommend($v['class_id']);
            if (empty($goods_list)) {
                unset($recommend_block[$k]);
            }
        }
        $this->assign("recommend_block", $recommend_block);
    }

    /**
     * 发送短信
     */
    public function sms($mobile = '18649313172')
    {
        // if(request()->isPost()){
        $Send = new \data\extend\Send();
        $result = $Send->sms([
            'param' => [
                'code' => '123456',
                'time' => '60秒'
            ],
            'mobile' => $mobile,
            'template' => 'SMS_43210099'
        ]);
        if ($result !== true) {
            return $this->error($result);
        }
        return $this->success('短信下发成功！');
        // }
        // return $this->fetch();
    }

    /**
     * 商品促销
     * 已废弃
     */
    public function getRecommendGoodsList()
    {
        $Platform = new Platform();
        $recommend_goods_list = $Platform->getRecommendGoodsQuery($this->instance_id);
        $this->assign("recommend_goods_list", $recommend_goods_list);
    }

    public function recommend_test()
    {
        $goods_service = new Goods();
        $goods_list = $goods_service->getRecommendGoodsQuery1(1, PAGESIZE, "FIND_IN_SET(2,group_id_array)");
        print_r(json_encode($goods_list));
    }

    /**
     * 删除设置页面打开cookie
     */
    public function deleteClientCookie()
    {
        Cookie::delete("default_client");
    }

    public function testTag()
    {
        return view($this->style . "Index/testTag");
    }
}