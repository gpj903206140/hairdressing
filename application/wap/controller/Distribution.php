<?php
namespace app\wap\controller;

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
use think\Db as Dbs;
use data\service\Goods as GoodsService;
use data\model\NsRankRromotersModel as NsRankRromoters;
use data\model\NsOrderModel as Order;
use data\model\UserModel as User;
use data\model\NsGoodsModel as goods;
use data\model\NsDistributionRelationsModel as Relations;
use data\model\NsDistributionOrderModel as DistributionOrder;
use data\service\Distributionnew as Distributionnews;
use data\model\ConfigModel;

/**
 * 分销
 *
 * @author Administrator
 *        
 */
class Distribution extends BaseController
{

    public $notice;

    public $login_verify_code;

    public function __construct()
    {
        parent::__construct();
    }

    /**
     * 检测用户
     */
    private function checkLogin()
    {
        $uid = $this->uid;
        if (empty($uid)) {
            $redirect = __URL(__URL__ . "/wap/login");
            $this->redirect($redirect); // 用户未登录
        }
        $is_member = $this->user->getSessionUserIsMember();
        if (empty($is_member)) {
            $redirect = __URL(__URL__ . "/wap/login");
            $this->redirect($redirect); // 用户未登录
        }
    }
    /**
     * 申请推广员
     */ 
    public function applyPeople()
    {  
        $user = new user();
        $Distributionnews = new Distributionnews();
        $uid = Session::get('appuid');
        if(request()->isAjax()){
            $fileName = INTERCALATE;
            $set = array();
            $config_model = new ConfigModel();
            $thisconfig = $config_model->getInfo(['key'=>'CONFIG_DISTRIBUTION'],'value');
            $set = json_decode($thisconfig['value'],true);
            $data['level_id'] = request()->post('level_id',0);
            $data['level_name'] = request()->post('level_name','');
            $data['Pid'] = 10;
            $data['WxId'] = 0;
            $data['applyTime'] = time();
            if($set['is_start']==0){
                $data['is_promoters'] = 1;
                $number = $user->getInfo(array('is_promoters'=>1),'max(uid),number');
                $count = substr($number['number'],-6,6);
                $data['number'] = TGY_NUMBER_QZ.substr(strval(($count+1)+1000000),1,6);
            }elseif($set['is_start']==1){
                $data['is_promoters'] = 2;
            }
            $user->startTrans();
            $result2 = $user->save($data,['uid'=>$uid]);
            //查找上级推广员
            /*$arr = $Distributionnews->searchLevel(LEVEL,$arr=array(),$FxLevel=1,$uid,$uid,$data['WxId']);
            $Relations = new Relations();
            if(!empty($arr)){
               $result1 = $Relations->saveAll($arr); 
            }else{
               $result1 = true;
            }*/
            //if(!empty($result1)&&$result2||$result1&&$result2){
            if($result2){
                $res = 1;
                $user->commit();
            }else{
                $res = 0;
                $user->rollback();
            }
            
            return AjaxReturn($res);
        }else{
            $order = new Order();
            $RankRromoters = new NsRankRromoters();
            $is_promoters = $user->getInfo(['uid'=>$uid], 'is_promoters');
            $list = $RankRromoters->getQuery([], '*', 'level_id', $group='');
            
            $order_money = $order->getInfo(['is_deleted'=>0,'order_status'=>['neq','5'],'buyer_id'=>$uid], 'sum(order_money) as order_money');
            if(empty($order_money['order_money'])){
                $order_money['order_money'] = '0.00';
            }
            $this->assign('order_money',$order_money['order_money']);
            $this->assign('is_promoters',$is_promoters['is_promoters']);
            $this->assign('list',$list);
            return view($this->style . 'Distribution/applyPeople');
        }
        
    }
    
    /**
     * 我的团队
     */
    public function myTeam()
    {
        $relations = new Relations();
        $uid = Session::get('appuid');
        $row = \think\Db::table('ns_distribution_relations a,sys_user b')->field('b.nick_name,b.number,b.reg_time,b.user_headimg')->where("a.Pid={$uid} and a.ChildId=b.uid")->select();
        $user = new user();
        $row[] = $user->getInfo(['uid'=>$this->uid],'nick_name,number,reg_time,user_headimg');
        $this->assign('row',$row);
        return view($this->style . 'Distribution/myTeam');
    }
    
     /**
     * 我的佣金
     */
    public function myCommission()
    {
        $user = new user();
        $uid = $this->uid;
        $userCon = $user->getInfo(['uid'=>$uid],'total_commission,can_commission,stop_commission');
        $DistributionOrder = new DistributionOrder();
        $commission_money = $DistributionOrder->getSum(['receiptor_id'=>$uid,'is_issue'=>0],'commission_money');
        $grandTotal = $userCon['total_commission']+$commission_money;
        //分销佣金(团队佣金)
        //$team_money = Dbs::table('ns_distribution_relations a,ns_distribution_order b')->where("a.Pid={$uid} and a.ChildId=b.receiptor_id and is_issue in(0,1)")->sum('commission_money');
        //$this->assign('team_money',$team_money);
        $this->assign('grandTotal',$grandTotal);
        $this->assign('commission_money',$commission_money);
        $this->assign('userCon',$userCon);
        return view($this->style . 'Distribution/myCommission');
    }
    /**
     * 分销佣金
     */
    public function distributionCommission()
    {
        //$data = $this->distributionCommissionList();
        //$this->assign('data',$data);
        return view($this->style . 'Distribution/distributionCommission');
    }
    public function distributionCommissionList(){
        $uid = $this->uid;
        $page_num = 2;
        $page = request()->post('page', 1);
        $type = request()->post('type', 1);
        if($type==1){
            $res = "a.receiptor_id={$uid} and ";
        }elseif($type==2){
            $Relations = new Relations();
            $childId = $Relations->getQuery(['Pid'=>$uid],'ChildId','nexu_id desc');
            if(!empty($childId)){
                $id = "";
                foreach($childId as $key=>$value){
                    $id .= ','.$value['ChildId'];
                }
                $id = trim($id,',');
                $res = "a.receiptor_id in({$id}) and ";
            }else{
                return 0;
            }

        }
        $offset = $page<=1?$page_num*($page-1):$page_num*($page-1);
        $where = $res." a.is_issue < 2 and a.order_id=b.order_id and b.order_id=c.order_id and a.goods_id=c.goods_id and a.receiptor_id=d.uid and c.goods_picture=e.pic_id";
        $field = "a.commission_rate,a.goods_id,a.add_time,a.profit,a.commission_money,a.distribution_commission_rate,a.receiptor_id,a.buyer_id,c.price,b.order_no,c.num,c.goods_name,c.sku_name,d.nick_name as receiptor_name,e.pic_cover_micro";
        $data['data'] = Dbs::table('ns_distribution_order a,ns_order b,ns_order_goods c,sys_user d,sys_album_picture e')->field($field)->where($where)->limit($offset.','.$page_num)->order('a.add_time desc')->select();
        //dump($where);
        //dump('ns_distribution_order a,ns_order b,ns_order_goods c,sys_user d,sys_album_picture e'.$table);
        $user = new user();
        $goods = new goods();
        foreach($data['data'] as $k=>$v){
            $buyer_name = $user->getInfo(['uid'=>$v['buyer_id']],'nick_name');
            $data['data'][$k]['buyer_name'] = $buyer_name['nick_name'];
            $data['data'][$k]['add_time'] = date('Y-m-d H:i:s',$v['add_time']);
            $goodkind = $goods->getInfo(['goods_id'=>$v['goods_id']],'goods_kind');
            $data['data'][$k]['goods_kind'] = $goodkind['goods_kind'];
        }
        $count = Dbs::table('ns_distribution_order')->field('dorder_id')->where(['receiptor_id'=>$uid])->count();
        $data['page_count'] = ceil($count/$page_num);
        return $data;
    }
    /**
     * 明细
     */
    public function detailed()
    {
        // 佣金提现记录
        $member = new MemberService();
        $uid = $this->uid;
        $shopid = $this->instance_id;
        $condition['uid'] = $uid;
        $condition['shop_id'] = $shopid;
        $condition['type'] = 1; 
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
        /*$member_info = $member->getMemberDetail($this->instance_id);
        $config = new Config();
        $balanceConfig = $config->getBalanceWithdrawConfig($shopid);
        $this->assign("is_use", $balanceConfig['is_use']);
        $this->assign("sum", $member_info['balance']);*/
        $this->assign("withdraws", $withdraw_list);
        //$this->assign("shopid", $shopid);
        return view($this->style . 'Distribution/detailed');
    }
    /**
     * 推广中心
     */
    public function extensionCenter()
    {
        $member = new MemberService();
        $member_info = $member->getMemberDetail($this->instance_id);
        // 头像
        if (! empty($member_info['user_info']['user_headimg'])) {
            $member_img = $member_info['user_info']['user_headimg'];
        } else {
            $member_img = '0';
        }
        $this->assign('member_info', $member_info);
        $this->assign('member_img', $member_img);
        $relations = new Relations();
       //我的团队
        $res['teamNum'] = $relations->getCount(['Pid'=>$this->uid])+1;
        //我的佣金
        $res['commission'] = $is_promoters['total_commission']-$is_promoters['stop_commission']; 
        $this->assign('res',$res);
        //佣金
        $user = new user();
        $order = new Order();
        $uid = $this->uid;
        $userCon = $user->getInfo(['uid'=>$uid],'total_commission,can_commission,stop_commission');
        $DistributionOrder = new DistributionOrder();
        $commission_money = $DistributionOrder->getSum(['receiptor_id'=>$uid,'is_issue'=>0],'commission_money');
        $grandTotal = $userCon['total_commission']+$commission_money;
        //分销佣金(团队佣金)
        //$team_money = Dbs::table('ns_distribution_relations a,ns_distribution_order b')->where("a.Pid={$uid} and a.ChildId=b.receiptor_id and is_issue in(0,1)")->sum('commission_money');
        //佣金明细
        $detail_money = $DistributionOrder->getSum(['receiptor_id'=>$uid,'is_issue'=>['in','0,1']],'commission_money');
        //总业绩
        $where = "buyer_id={$uid} and order_status!=-1 ";
        $score['total_score'] = $order->getSum($where,'order_money');
        //本月业绩
        $BeginDate = date('Y-m-01',strtotime(date('Y-m-d')));
        $BeginDates = strtotime($BeginDate);
        $LastDate = strtotime(date('Y-m-d',strtotime("{$BeginDate} +1 month -1 day")));
        $where1 = $where." and create_time between $BeginDates and $LastDate";
        $score['this_month'] = $order->getSum($where1,'order_money');
        //上月业绩
        $BeginDate2 = strtotime(date('Y-m-01',strtotime("-1 month")));
        $LastDate2 = strtotime(date('Y-m-t',strtotime("-1 month")));
        $where2 = $where." and create_time between $BeginDate2 and $LastDate2";
        $score['last_month'] = $order->getSum($where2,'order_money');
        //今日新增
        $dateTime = strtotime(date('Y-m-d 00:00:00',time()));
        $where3 = $where." and create_time>{$dateTime}";
        $score['today'] = $order->getSum($where3,'order_money');
        $this->assign('score',$score);
        $this->assign('detail_money',$detail_money);
        $this->assign('team_money',$team_money);
        $this->assign('grandTotal',$grandTotal);
        $this->assign('commission_money',$commission_money);
        $this->assign('userCon',$userCon);
        return view($this->style . 'Distribution/extensionCenter');
    }
    /**
     * 佣金申请提现
     */
    public function distributionToWithdraw()
    {
        $member = new MemberService();
        if (request()->isAjax()) {
            // 提现
            $uid = $this->uid;
            $withdraw_no = time() . rand(111, 999);
            $bank_account_id = request()->post('bank_account_id', '');
            $cash = request()->post('cash', '');
            $shop_id = $this->instance_id;
            $retval = $member->addDistributionBalanceWithdraw($shop_id, $withdraw_no, $uid, $bank_account_id, $cash,1);
            return AjaxReturn($retval);
        } else {
            $account_list = $member->getMemberBankAccount(1);
            // 获取可提现佣金
            $uid = $this->uid;
            $shop_id = $this->shop_id;
            $user = new user();
            $account = $user->getInfo(['uid'=>$uid],'total_commission,can_commission,stop_commission');
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
            return view($this->style . "Distribution/distributionToWithdraw");
        }
    }
}