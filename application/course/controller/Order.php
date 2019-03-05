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
            $order = new OrderService();
            // 获取支付编号
            $out_trade_no = $order->getOrderTradeNo();
            $order_id = request()->post('order_id', 0); // 订单ID
            $order_no = request()->post('order_no', 0); // 订单号
            //$integral = request()->post('integral', 0); // 积分
            $goods_id = request()->post('goods_id', ''); // 课程Id
            $payment_type = request()->post('payment_type', ''); // 支付方式
            $user_money = request()->post("account_balance", 0); // 使用余额
            $goods_money = request()->post("goods_money", 0); // 课程价格
            $discount_price = request()->post("discount_price", 0); // 课程会员价
            $order_id = $order->courseOrderCreate($order_id,$out_trade_no, $order_no, $goods_id, $payment_type,$user_money,$goods_money,$discount_price,1);
            $_SESSION['unpaid_goback'] = __URL(__URL__ . "/course/order/orderdetail?orderId=" . $order_id);
            // 订单创建标识，表示当前生成的订单详情已经创建好了。用途：订单创建成功后，返回上一个界面的路径是当前创建订单的详情，而不是首页
            $_SESSION['order_create_flag'] = 1;
            
            if ($order_id > 0) {
                return AjaxReturn($out_trade_no);
            } else {
                return AjaxReturn($order_id);
            }
        }else{
            $uid = $this->uid;
            $order = new OrderService();
            //获取课程信息
            $course = new CourseService();
            $goodsId = request()->get('goods_id', 0);
            $order_id = request()->get('order_id', 0);
            $course_info = $course->getGoodsDetail($goodsId);
            if($order_id==0){ 
                //获取当前会员可获取的优惠
                $member = new Member();
                $memberInfo = $member->getMemberInfo($this->uid);
                $memberLevelInfo = $member->getMemberLevelInfo($memberInfo['member_level']);
                if(!empty($memberLevelInfo)){
                    $course_info['discount_price'] = $course_info['price']*$memberLevelInfo['goods_discount'];
                    $course_info['goods_discount'] = $memberLevelInfo['goods_discount'];
                }else{
                    $course_info['discount_price'] = $course_info['price'];
                    $course_info['goods_discount'] = 0;
                }
                
                //订单编号 
                $OrderBusiness = new OrderBusiness();
                $order_no = $OrderBusiness->createOrderNo($uid);
                $this->assign("order_no", $order_no);
            }else{ //待付款订单
                $orderInfo = $order->getCourseOrderOne($order_id,$field);
                $this->assign("order_no", $orderInfo['order_no']);
                $course_info['discount_price'] = $orderInfo['pay_money'];
                $course_info['goods_discount'] = 0;
            }
            // 用户的账户余额总数
            $member = new MemberService();
            $member_info = $member->getMemberDetail($uid);
            $this->assign("code", $orderInfo['out_trade_no']);
            $this->assign("sum", $member_info['balance']);
            $this->assign('course_info',$course_info);
            $this->assign("goods_id", $goodsId);
            $this->assign("order_id", $order_id);
            return view($this->style . 'Order/course_buy');
        }
        
    }

    /**
     * 关闭课程订单
     */
    public function ourCourseOrder()
    {
        $order_id = request()->get('order_id', 0); 
        $OrderService = new OrderService();
        $return = $OrderService->ourCourseOrder($order_id);
        echo $return;
    }
    
}