<?php
namespace app\course\controller;

use data\model\AlbumPictureModel;
use data\model\NsCartModel;
use data\model\NsGoodsModel;
use data\model\NsOrderModel;
use data\service\Config;
use data\service\Express;
use data\service\Goods;
use data\service\Member;
use data\service\Member as MemberService;
use data\service\Order\Order as OrderOrderService;
use data\service\Order\OrderGoods;
use data\service\Order as OrderService;
use data\service\promotion\GoodsExpress as GoodsExpressService;
use data\service\promotion\GoodsMansong;
use data\service\Promotion;
use data\service\promotion\GoodsPreference;
use data\service\Shop;
use data\model\NsGoodsSkuModel;
use data\service\promotion\PromoteRewardRule;
use data\service\WebSite;
use data\service\Order\OrderGroupBuy;
use data\service\GroupBuy;
use data\service\Goods as GoodsService;
use data\model\NsOrderCollectMoneyModel as CollectMoney;

use data\service\Course as CourseService;
use data\service\Order\Order as OrderBusiness;

/**
 * 订单控制器
 *
 * @author Administrator
 *        
 */
class Order extends BaseController
{

    public function __construct()
    {
        parent::__construct();
        $this->checkLogin();
    }

    /**
     * 检测用户
     */
    private function checkLogin()
    {
        $uid = $this->uid;
        if (empty($uid)) {
            $redirect = __URL(__URL__ . "/course/login");
            $this->redirect($redirect); // 用户未登录
        }
        $is_member = $this->user->getSessionUserIsMember();
        if (empty($is_member)) {
            $redirect = __URL(__URL__ . "/course/login");
            $this->redirect($redirect); // 用户未登录
        }
    }

    /**
     * 课程购买页面
     */
    public function course_buy()
    {
        if(request()->isAjax()){
            
        }else{
            //获取课程信息
            $course = new CourseService();
            $goodsId = request()->get('goods_id', 0);
            $course_info = $course->getGoodsDetail($goodsId);
            $this->assign('course_info',$course_info);
            // 用户的账户余额总数
            $member = new MemberService();
            $member_info = $member->getMemberDetail($this->uid);
            $this->assign("sum", $member_info['balance']);
            //订单编号 
            $OrderBusiness = new OrderBusiness();
            $order_no = $OrderBusiness->createOrderNo($this->uid);
            $this->assign("order_no", $order_no);
            return view($this->style . 'Order/course_buy');
        }
        
    }
    
}