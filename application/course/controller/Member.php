<?php
namespace app\course\controller;

use data\service\Config;
use data\service\Member\MemberAccount as MemberAccount;
use data\service\Member as MemberService;
use data\service\NfxPromoter;
use data\service\NfxShopConfig;
use data\service\Order as OrderService;
use data\service\Platform;
use data\service\promotion\PromoteRewardRule;
use data\service\Promotion;
use data\service\Shop;
use data\service\Verification;
use data\service\UnifyPay;
use data\service\WebSite;
use data\service\Weixin;
use think\Request;
use think;
use think\Session;
use data\service\Goods as GoodsService;
use data\model\UserModel as User;
use data\model\NsDistributionRelationsModel as DistributionRelations;
use data\service\Article as CmsService;
use data\extend\PHPSMS\smsSend;
use data\model\ConfigModel;

use data\service\Course as CourseService;
use data\model\NsCourseFollowModel as CourseFollow;

/**
 * 会员
 *
 * @author Administrator
 *        
 */
class Member extends BaseController
{

    public $notice;

    public $login_verify_code;

    public function __construct()
    {
        parent::__construct();
        $this->checkLogin();
        // 是否开启验证码
        $web_config = new Config();
        $this->login_verify_code = $web_config->getLoginVerifyCodeConfig($this->instance_id);
        $this->assign("login_verify_code", $this->login_verify_code["value"]);
        // 是否开启通知
        $instance_id = 0;
        $web_config = new Config();
        $noticeMobile = $web_config->getNoticeMobileConfig($instance_id);
        $noticeEmail = $web_config->getNoticeEmailConfig($instance_id);
        $this->notice['noticeEmail'] = $noticeEmail[0]['is_use'];
        $this->notice['noticeMobile'] = $noticeMobile[0]['is_use'];
        $this->assign("notice", $this->notice);
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
     * 用户首页
     *
     */
    public function index()
    {
        $member = new MemberService();
        $member_info = $member->getMemberDetail($this->instance_id);
        $this->assign('member_info', $member_info);
        //手机号绑定
        $shop_id = request()->get('shop_id', 0);
        $_SESSION['bund_pre_url'] = Request::instance()->domain() . $_SERVER['REQUEST_URI'];
        $uid = $this->user->getSessionUid();
        // 查询账户信息
        // $user = new UserModel();
        // $nick_name = $user->getInfo(["uid" => $this->uid], "nick_name");
        
        if (! empty($member_info['user_info']['user_headimg'])) {
            $member_img = $member_info['user_info']['user_headimg'];
        } elseif (! empty($member_info['user_info']['qq_openid'])) {
            $member_img = $member_info['user_info']['qq_info_array']['figureurl_qq_1'];
        } elseif (! empty($member_info['user_info']['wx_openid'])) {
            $member_img = '0';
        } else {
            $member_img = '0';
        }
        $this->assign("shop_id", $shop_id);
        $this->assign('qq_openid', $member_info['user_info']['qq_openid']);
        $this->assign('member_img', $member_img);
        return view($this->style . 'Member/index');
    }
    
    /**
     * 个人信息
     *
     */
    public function means()
    {
        if(request()->isAjax()){
            $member = new MemberService();
            $user_name = request()->post('user_name', '');
            $sex = request()->post('sex', 0);
            $member = $member->updateUsernameSex($this->uid,$user_name,$sex);
            if($member){
                echo 1;
            }else{
                echo 2;
            }
        }else{
            $shop_id = request()->get('shop_id', 0);
            $_SESSION['bund_pre_url'] = Request::instance()->domain() . $_SERVER['REQUEST_URI'];
            $uid = $this->user->getSessionUid();
            $member = new MemberService();
            $member_info = $member->getMemberDetail();
            $this->assign('member_info', $member_info);
            
            if (! empty($member_info['user_info']['user_headimg'])) {
                $member_img = $member_info['user_info']['user_headimg'];
            } elseif (! empty($member_info['user_info']['qq_openid'])) {
                $member_img = $member_info['user_info']['qq_info_array']['figureurl_qq_1'];
            } elseif (! empty($member_info['user_info']['wx_openid'])) {
                $member_img = '0';
            } else {
                $member_img = '0';
            }
            $this->assign("shop_id", $shop_id);
            $this->assign('qq_openid', $member_info['user_info']['qq_openid']);
            $this->assign('member_img', $member_img);
            return view($this->style . 'Member/means');
        }
    }

    /**
     * 线下课订单
     *
     */
    public function wirelower_order()
    {
        return view($this->style . 'Member/wirelower_order');
    }

    /**
     * 我的收藏
     *
     */
    public function my_collect()
    {
        $courseervice = new CourseService();
        $course_type = request()->get("course_type", 0); //线上/线下课程
        if(request()->isAjax()){
            $page_index = request()->get("page_index", 1);
            $page_size = request()->post("page_size", PAGESIZE);
            $condition['state'] = 1;
            $condition['course_type'] = $course_type;
            $CourseFollow = new CourseFollow();
            $uid = $this->uid;
            $follow_list = $CourseFollow->getQuery(['id'=>$uid,'state'=>0],'cover_id','follow_id desc');
            if(empty($follow_list)){
                return 0;
            }
            foreach($follow_list as $v){
                $gid[] = $v['cover_id'];
            }
            $gid = implode(',',$gid);
            $condition['goods_id'] = ['in',$gid];
            $result = $courseervice->getSearchGoodsList($page_index, $page_size, $condition, 'sort,goods_id desc');
            if(!empty($result['data'])){
                return json_encode($result);
            }else{
                return 0;
            }
            
        }else{
            $this->assign('course_type', $course_type);
            return view($this->style . 'Member/my_collect');
        }
        
    }
    
    /**
     * 我的关注
     *
     */
    public function my_attention()
    {
        return view($this->style . 'Member/my_attention');
    }

    /**
     * 我的钱包
     *
     */
    public function my_wallet()
    {
        // 该店铺下的余额流水
        $member = new MemberService();
        // 用户在该店铺的账户余额总数
        $member_info = $member->getMemberDetail($this->uid);
        $this->assign("sum", $member_info['balance']);
        return view($this->style . 'Member/my_wallet');
    }

    /**
     * 全部提现 
     *
     */
    public function my_withdraw()
    {
        $member = new MemberService();
        if (request()->isAjax()) {
            // 提现
            $uid = $this->uid;
            $withdraw_no = time() . rand(111, 999);
            $bank_account_id = request()->post('bank_account_id', '');
            $cash = request()->post('cash', '');
            $shop_id = $this->instance_id;
            $retval = $member->addMemberBalanceWithdraw($shop_id, $withdraw_no, $uid, $bank_account_id, $cash);
            return AjaxReturn($retval);
        } else {
            $account_list = $member->getMemberBankAccount(1);
            // 获取会员余额
            $uid = $this->uid;
            $shop_id = $this->shop_id;
            $members = new MemberAccount();
            $account = $members->getMemberBalance($uid);
            $instance_id = $this->instance_id;
            $this->assign('shop_id', $instance_id);
            $this->assign('account', $account);
            $config = new Config();
            $balanceConfig = $config->getBalanceWithdrawConfig($shop_id);
            if ($balanceConfig["is_use"] == 0 || $balanceConfig["value"]["withdraw_multiple"] <= 0) {
                $this->error("当前店铺未开启提现，请联系管理员！");
            }
            $cash = $balanceConfig['value']["withdraw_cash_min"];
            $this->assign('cash', $cash);
            $poundage = $balanceConfig['value']["withdraw_multiple"];
            $this->assign('poundage', $poundage);
            $withdraw_message = $balanceConfig['value']["withdraw_message"];
            $this->assign('withdraw_message', $withdraw_message);
            
            $this->assign('account_list', $account_list);
            // 该店铺下的余额提现记录
            $member = new MemberService();
            $uid = $this->uid;
            $shopid = $this->instance_id;
            $condition['uid'] = $uid;
            $condition['shop_id'] = $shopid;
            $condition['type'] = 0;
            /* $condition['status'] = 1; */
            $withdraw_list = $member->getMemberBalanceWithdraw(1, 0, $condition,'ask_for_date desc');
            foreach ($withdraw_list['data'] as $k => $v) {
                if ($v['status'] == 1) {
                    $withdraw_list['data'][$k]['status'] = '已同意';
                } else 
                    if ($v['status'] == 0) {
                        $withdraw_list['data'][$k]['status'] = '已申请';
                    } else {
                        $withdraw_list['data'][$k]['status'] = '已拒绝';
                    }
            }
            // 用户在该店铺的账户余额总数
            $member_info = $member->getMemberDetail($this->instance_id);
            $config = new Config();
            $balanceConfig = $config->getBalanceWithdrawConfig($shopid);
            $this->assign("is_use", $balanceConfig['is_use']);
            $this->assign("sum", $member_info['balance']);
            $this->assign("withdraws", $withdraw_list);
            $this->assign("shopid", $shopid);
            return view($this->style . 'Member/my_withdraw');
        }
        
    }

    /**
     * 余额明细
     *
     */
    public function my_balance()
    {
        // 该店铺下的余额提现记录
        $member = new MemberService();
        $uid = $this->uid;
        $shopid = $this->instance_id;
        $condition['uid'] = $uid;
        $condition['shop_id'] = $shopid;
        $condition['type'] = 0;
        /* $condition['status'] = 1; */
        $withdraw_list = $member->getMemberBalanceWithdraw(1, 0, $condition,'ask_for_date desc');
        foreach ($withdraw_list['data'] as $k => $v) {
            if ($v['status'] == 1) {
                $withdraw_list['data'][$k]['status'] = '已同意';
            } else 
                if ($v['status'] == 0) {
                    $withdraw_list['data'][$k]['status'] = '已申请';
                } else {
                    $withdraw_list['data'][$k]['status'] = '已拒绝';
                }
        }
        // 用户在该店铺的账户余额总数
        $member_info = $member->getMemberDetail($this->instance_id);
        $config = new Config();
        $balanceConfig = $config->getBalanceWithdrawConfig($shopid);
        $this->assign("is_use", $balanceConfig['is_use']);
        $this->assign("sum", $member_info['balance']);
        $this->assign("withdraws", $withdraw_list);
        $this->assign("shopid", $shopid);
        return view($this->style . 'Member/my_balance');
    }
}