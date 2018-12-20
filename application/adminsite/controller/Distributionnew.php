<?php
namespace app\adminsite\controller;
use Think\DB;

use data\model\RromotersModel;
use data\service\Distributionnew as Distributionnews;
use data\model\UserModel as User;
use think\Db as Dbs;
use data\service\Order as OrderService;
use data\model\NsDistributionOrderModel as DistributionOrder;
use data\model\NsDistributionRelationsModel as DistributionRelations;
use data\service\Member\MemberAccount;
use data\service\Member as MemberService;
use data\service\Config as WebConfig;
use data\model\ConfigModel;
/**
 * 分销控制器
 */
class Distributionnew extends BaseController
{

    public function __construct()
    {
        parent::__construct();
    }

    /**
     * 分销设置
     */
    public function intercalate()
    {
       if (request()->isAjax()) {
           $post = request()->post();
           if($post['is_open']==0){
              $post['is_audit'] = 0;
              $post['is_start'] = 0;
              $post['is_set'] = 0;
           }
            //判断是否批量设置为推广员
            if($post['is_set']==1){
                $user = new user();
                $data['level_id'] = request()->post('level_id',0);
                $data['level_name'] = request()->post('level_name','');
                $data['Pid'] = 10;
                $data['WxId'] = 0;
                $data['applyTime'] = time();

                $RankRromoters = new RromotersModel;
                $level = $RankRromoters->getFirstData([], 'level_id');
                $data['level_id'] = $level['level_id'];
                $data['level_name'] = $level['level_name'];
                $data['Pid'] = 10;
                $data['WxId'] = 0;
                $data['is_promoters'] = 1;
                $userList = $user->getQuery(['is_promoters'=>0,'user_status'=>1,'is_system'=>0,'is_member'=>1],'uid','reg_time');
                $userCount = count($userList);
                $i = 0;
                foreach($userList as $k=>$v){
                  $number = $user->getInfo(array('is_promoters'=>1),'max(uid),number');
                  $count = substr($number['number'],-6,6);
                  $data['number'] = TGY_NUMBER_QZ.substr(strval(($count+1)+1000000),1,6);
                  //$result = $user->save($data,['uid'=>$v['uid']]);
                  $result = Dbs::table('sys_user')->where('uid', $v['uid'])->update($data);
                  if($result!==false){
                      $i++;
                  }
                }
               // echo $i.'==='.$userCount;exit;
                if($i!=$userCount){
                   foreach($userList as $k=>$v){
                      $datas['level_id'] = 0;
                      $datas['level_name'] = '';
                      $datas['Pid'] = 0;
                      $datas['WxId'] = 0;
                      $datas['applyTime'] = time();
                      $datas['level_id'] = 0;
                      $datas['level_name'] = '';
                      $datas['Pid'] = 0;
                      $datas['WxId'] = 0;
                      $datas['is_promoters'] = 0;
                      $datas['number'] = '';
                      $result = $user->save($datas,['uid'=>$v['uid']]);
                      if($result!==false){
                          $i++;
                      }
                   }
                   $res = 0;
                   return $res;
                }
                  
            }
           $config_model = new ConfigModel();
           $config_post['is_open'] = $post['is_open'];
           $config_post['is_audit'] = $post['is_audit'];
           $config_post['is_start'] = $post['is_start'];
           $config_post['is_set'] = $post['is_set'];
           $config_post['distribution_use'] = $post['distribution_use'];
           $row['value'] = json_encode($config_post,JSON_UNESCAPED_UNICODE);
           $row['is_use'] = $post['is_open'];
           $row['key'] = 'CONFIG_DISTRIBUTION';
           $row['desc'] = '分销设置';
           $keyid = $config_model->getInfo(['key'=>'CONFIG_DISTRIBUTION'],'id');
           if(!empty($keyid)){
               $row['modify_time'] = time();
               $res = $config_model->save($row,['id'=>$keyid['id']]);
           }else{
               $row['create_time'] = time();
               $res = $config_model->save($row);
           }
           return Ajaxreturn($res);
        }else{
           $set = array();
           $config_model = new ConfigModel();
           $thisconfig = $config_model->getInfo(['key'=>'CONFIG_DISTRIBUTION'],'value');
           $set = json_decode($thisconfig['value'],true);
           $this->assign('set',$set);
           return view($this->style . "Distributionnew/intercalate"); 
        }
        
    }
    /**
     * 推广员等级
     */
    public function rankRromotersList()
    {
       if (request()->isAjax()) {
            $page_index = request()->post("page_index", 1);
            $page_size = request()->post("page_size", PAGESIZE);
            $search_text = request()->post("search_text", "");
            $Distributionnews = new Distributionnews();
            $result = $Distributionnews->getRankRromotersList($page_index, $page_size, [
                //'level_id' => $this->instance_id,
                'level_name' => array(
                    "like",
                    "%" . $search_text . "%"
                )
            ], "level_id asc");

            return $result;
        }
        return view($this->style . "Distributionnew/rankRromotersList");
    }
    /**
     * 推广员等级添加
     */
    public function addrankRromoters()
    {
       if (request()->isAjax()) {
            $post = request()->post();
            $data['level_name'] = $post['level_name'];
            $data['level_money'] = $post['level_money'];
            $data['level_0'] = $post['level_0'];
            $data['level_1'] = $post['level_1'];
            $data['addtime'] = date('Y-m-d',time());
            $Rromoters = new RromotersModel;
            if($Rromoters->save($data)){
                $res = 3;
            }else{
               $res = 0;
            }
            return Ajaxreturn($res);
        }else{
            return view($this->style . "Distributionnew/addrankRromoters");
        }
        
    }
    /**
     * 推广员等级修改
     */
    public function updaterankRromoters()
    {
        $Distributionnews = new Distributionnews();
        if (request()->isAjax()) {
            $level_id = request()->post('level_id', '');
            $level_name = request()->post('level_name', '');
            $level_money = request()->post('level_money', '');
            $level_0 = request()->post('level_0', 0);
            $level_1 = request()->post('level_1', 0);
            $res = $Distributionnews->UpdateRankRromoters($level_id, $level_name, $level_money, $level_0, $level_1);
            return AjaxReturn($res);
        } else {
            $level_id = request()->get('level_id', '');
            if (! is_numeric($level_id)) {
                $this->error('未获取到信息');
            }
            
            $rank_info = $Distributionnews->getRankRromotersInfo($level_id);
            if (empty($rank_info)) {
                return $this->error("没有查询到推广员等级信息");
            }
            $this->assign('rank_info', $rank_info); 
            return view($this->style . "Distributionnew/updaterankRromoters");
        }
    }
    /**
     * 删除推广员等级
     */
    public function deleteRankRromoters()
    {
        $level_id = request()->post('level_id', '');
        $Distributionnews = new Distributionnews();
        $res = $Distributionnews->deleteRankRromoters($level_id);
        return AjaxReturn($res);
    }
    /**
     * 推广员管理-我的团队
     */
    public function teamList()
    {
       if (request()->isAjax()) {
            $uid = request()->post("uid", 0);
            $user = new user();
            $result = $user->getQuery("Pid={$uid} or uid={$uid}",'uid,number,nick_name,level_name,applyTime','applyTime desc');
            return $result;
        }
    }
    /**
     * 推广员管理-我的团队导出
     */
    public function teamDataExcel()
    {
        $xlsName = "团队数据列表";
        $xlsCell = array(
            array(
                'number',
                '推广员编号'
            ),
            array(
                'nick_name',
                '昵称'
            ),
            array(
                'level_name',
                '等级'
            ),
            array(
                'role',
                '推广员'
            ),
            array(
                'applyTime',
                '申请时间'
            ),
        );
        $promoter_id = request()->get('promoter_id',0);
        $user = new user();
        $list = $user->getQuery("Pid={$promoter_id} or uid={$promoter_id}",'uid,number,nick_name,level_name,applyTime','applyTime desc');

        foreach ($list as $k => $v) {
            $list[$k]["applyTime"] = getTimeStampTurnTime($v["applyTime"]); // 创建时间
            $list[$k]["role"] = '推广员';
        }
        dataExcel($xlsName, $xlsCell, $list);
    }
    /**
     * 推广员管理- 0 已审核   1 待审核
     */
    public function stayPromotersTubeList()
    {  
       $state = request()->get("state", 0);
       if (request()->isAjax()) {
            $page_index = request()->post("page_index", 1);
            $page_size = request()->post("page_size", PAGESIZE);
            $user_name = request()->post("user_name", '');
            $user_phone = request()->post("user_phone", '');
            $is_promoters = request()->post("is_promoters", '');
            $Distributionnews = new Distributionnews();
            $start_date = request()->post('start_date') == '' ? 0 : getTimeTurnTimeStamp(request()->post('start_date'));
            $end_date = request()->post('end_date') == '' ? 0 : getTimeTurnTimeStamp(request()->post('end_date'));
            if ($start_date != 0 && $end_date != 0) {
                $condition["applyTime"] = [
                    [
                        ">",
                        $start_date
                    ],
                    [
                        "<",
                        $end_date
                    ]
                ];
            } elseif ($start_date != 0 && $end_date == 0) {
                $condition["applyTime"] = [
                    [
                        ">",
                        $start_date
                    ]
                ];
            } elseif ($start_date == 0 && $end_date != 0) {
                $condition["applyTime"] = [
                    [
                        "<",
                        $end_date
                    ]
                ];
            }

             if(empty($is_promoters)){
                if($state==0){
                    $condition['is_promoters'] = 1;
                }elseif($state==1){
                    $condition['is_promoters'] = array('gt','1');
                }
            }else{
                $condition['is_promoters'] = array('in',$is_promoters);
            }
            $condition['user_name'] = array("like","%" . $user_name . "%");
            $condition['user_tel'] = array("like","%" . $user_phone . "%");
            $result = $Distributionnews->promotersTubeList($page_index, $page_size, $condition, "applyTime desc");

            return $result;
        }else{
            $Rromoters = new RromotersModel;
            $RromotersList = $Rromoters->getQuery([],'level_id,level_name','level_id');
            $this->assign('RromotersList',$RromotersList);
            $this->assign('state',$state);
            return view($this->style . "Distributionnew/stayPromotersTubeList");
        }
    }
    /**
     * 推广员管理-通过/拒绝
     */
    public function stayPromotersAudit()
    {
       if (request()->isAjax()) {
            $user = new user();
            $is_promoters = request()->post("is_promoters", 2);
            $uid = request()->post("uid", 0);
            $data['is_promoters'] = $is_promoters;
            $number = $user->getInfo(array('is_promoters'=>1),'max(uid),number');
            $count = substr($number['number'],-6,6);
            $data['number'] = TGY_NUMBER_QZ.substr(strval(($count+1)+1000000),1,6);
            $res = $user->save($data,['uid'=>$uid]);
            return AjaxReturn($res);
        }
    }
    /**
     * 推广员管理-删除
     */
    public function stayPromotersDelete()
    {
       if (request()->isAjax()) {
            $user = new user();
            $relations = new DistributionRelations();
            $uid = request()->post("uid", 0);
            $data['is_promoters'] = 0;
            $data['applyTime'] = 0;
            $data['WxId'] = 0;
            $data['Pid'] = 0;
            $data['level_id'] = 0;
            $data['level_name'] = '';
            $user->startTrans();
            $result1 = $user->save($data,['uid'=>$uid]);
            $result2 = $relations->destroy(['ChildId'=>$uid]);
            if($result1&&$result2){
               $res = 1;
               $user->commit();
            }else{
               $res = 0;
               $user->rollback();
            }
            return AjaxReturn($res);
        }
    }
    /**
     * 推广员管理-修改上级
     */
    public function updateSuperior()
    {
       if (request()->isAjax()) {
            $uid = request()->post("promoter_id", 0);
            $number = request()->post("parent_promoter", '');
            $user = new user();
            $relations = new DistributionRelations();
            $row = $user->getInfo(['number'=>$number,'is_promoters'=>1],'uid,WxId');
            if($row['uid']==$uid||empty($row)){
                $this->error();
                return ;
            }
            $user->startTrans();
            $result1 = $user->ModifyTableField('uid',$uid,'Pid',$row['uid']);
            $nexu = $relations->getInfo(['ChildId'=>$uid,'FxLevel'=>1],'nexu_id');
            if(!empty($nexu)){
               $result2 = $relations->save(['Pid'=>$row['uid']],['nexu_id'=>$nexu['nexu_id']]);
            }else{
               $data['FxLevel'] = 1;
               $data['WxId'] = $row['WxId'];
               $data['ChildId'] = $uid;
               $data['Pid'] = $row['uid'];
               $result2 = $relations->save($data);
            }
            if($result1&&$result2){
                $user->commit();
                $res = 1;
            }else{
                $user->rollback();
                $res = 0;
            }
            return AjaxReturn($res);
        }
    }
    /**
     * 推广员管理-修改等级
     */
    public function updatePromoterLevel()
    {
       if (request()->isAjax()) {
            $uid = request()->post("promoter_id", 0);
            $level_id = request()->post("level_id", 0);
            $user = new user();
            $row = $user->getInfo(['uid'=>$uid,'level_id'=>$level_id],'uid');
            if(!empty($row)){
                $this->error();
                return ;
            }
            $Rromoters = new RromotersModel;
            $level = $Rromoters->getInfo(['level_id'=>$level_id],'level_name');
            $res = $user->save(['level_id'=>$level_id,'level_name'=>$level['level_name']],['uid'=>$uid]);
            return AjaxReturn($res);
        }
    }
    /**
     * 商品分销
     */
    public function distributionGoodList()
    {
       if (request()->isAjax()) {
            
            $page_index = request()->post("page_index", 1);
            $page_size = request()->post("page_size", PAGESIZE);
            $search_text = request()->post("search_text", "");
            $start_date = request()->post('start_date') == '' ? 0 : getTimeTurnTimeStamp(request()->post('start_date'));
            $end_date = request()->post('end_date') == '' ? 0 : getTimeTurnTimeStamp(request()->post('end_date'));
            if ($start_date != 0 && $end_date != 0) {
                $condition["ng.create_time"] = [
                    [
                        ">",
                        $start_date
                    ],
                    [
                        "<",
                        $end_date
                    ]
                ];
            } elseif ($start_date != 0 && $end_date == 0) {
                $condition["ng.create_time"] = [
                    [
                        ">",
                        $start_date
                    ]
                ];
            } elseif ($start_date == 0 && $end_date != 0) {
                $condition["ng.create_time"] = [
                    [
                        "<",
                        $end_date
                    ]
                ];
            }
            $condition["ng.state"] = 1;
            $condition["ng.goods_name"] = array("like","%" . $search_text . "%");
            $Distributionnews = new Distributionnews();
            $result = $Distributionnews->getDistributionGoodList($page_index, $page_size, $condition, "ng.goods_id desc");
            //dump($result);
            return $result;
        }
        return view($this->style . "Distributionnew/distributionGoodList");
    }
    /**
     * 商品分销开/关
     */
    public function modifyGoodsDistribution()
    {
       if (request()->isAjax()) {
            $Distributionnews = new Distributionnews();
            $goods_ids = request()->post('goods_ids', '');
            $is_open = request()->post('is_open', '');
            $res = $Distributionnews->modifyGoodsDistribution($goods_ids, $is_open);
            return AjaxReturn($res);
        }
    }
    /**
     * 获取商品分销比率
     */
    public function getDistributionSetting()
    {
       if (request()->isAjax()) {
            $Distributionnews = new Distributionnews();
            $goods_id = request()->post('goods_id', '');
            $result = $Distributionnews->getDistributionSetting($goods_id,'distribution_commission_rate');
            return $result;
        }
    }
    /**
     * 商品分销比率设定
     */
    public function updateDistributionSetting()
    {
       if (request()->isAjax()) {
            $Distributionnews = new Distributionnews();
            $distribution_commission_rate = request()->post('distribution_commission_rate', '');
            $condition = request()->post('condition', '');
            $condition_type = request()->post('condition_type', '');
            $res = $Distributionnews->updateDistributionSetting($distribution_commission_rate, $condition,$condition_type);
            return AjaxReturn($res);
        }
    }
    /**
     * 推广员佣金
     */
    public function commissionList()
    {
       if (request()->isAjax()) {
            $page_index = request()->post("page_index", 1);
            $page_size = request()->post("page_size", PAGESIZE);
            $nick_name = request()->post("user_name", '');
            $Distributionnews = new Distributionnews();
            $start_date = request()->post('start_date') == '' ? 0 : getTimeTurnTimeStamp(request()->post('start_date'));
            $end_date = request()->post('end_date') == '' ? 0 : getTimeTurnTimeStamp(request()->post('end_date'));
            if ($start_date != 0 && $end_date != 0) {
                $condition["reg_time"] = [
                    [
                        ">",
                        $start_date
                    ],
                    [
                        "<",
                        $end_date
                    ]
                ];
            } elseif ($start_date != 0 && $end_date == 0) {
                $condition["reg_time"] = [
                    [
                        ">",
                        $start_date
                    ]
                ];
            } elseif ($start_date == 0 && $end_date != 0) {
                $condition["reg_time"] = [
                    [
                        "<",
                        $end_date
                    ]
                ];
            }
            $condition['is_promoters'] = 1;
            $condition['nick_name'] = array("like","%" . $nick_name . "%");
            $result = $Distributionnews->commissionList($page_index, $page_size, $condition, "uid desc");

            return $result;
        }
        return view($this->style . "Distributionnew/commissionList");
    }
    /**
     * 二级分销
     */
    public function distributionLevelList()
    {
       if (request()->isAjax()) {
            $page_index = request()->post('page_index', 1);
            $page_size = request()->post('page_size', PAGESIZE);
            $start_date = request()->post('start_date') == "" ? 0 : getTimeTurnTimeStamp(request()->post('start_date'));
            $end_date = request()->post('end_date') == "" ? 0 : getTimeTurnTimeStamp(request()->post('end_date'));
            $user_name = request()->post('user_name', '');
            $order_no = request()->post('order_no', '');
            $order_status = request()->post('order_status', '');
            $receiver_mobile = request()->post('receiver_mobile', '');
            $condition['is_deleted'] = 0; // 未删除订单
            if ($start_date != 0 && $end_date != 0) {
                $condition["create_time"] = [
                    [
                        ">",
                        $start_date
                    ],
                    [
                        "<",
                        $end_date
                    ]
                ];
            } elseif ($start_date != 0 && $end_date == 0) {
                $condition["create_time"] = [
                    [
                        ">",
                        $start_date
                    ]
                ];
            } elseif ($start_date == 0 && $end_date != 0) {
                $condition["create_time"] = [
                    [
                        "<",
                        $end_date
                    ]
                ];
            }
            if (! empty($order_status)) {
                $condition['order_status'] = $order_status; // 订单类型
            }
            if (! empty($user_name)) {
                $condition['user_name'] = $user_name;
            }
            if (! empty($order_no)) {
                $condition['order_no'] = $order_no;
            } 
            $order_service = new OrderService();
            $DistributionOrder = new DistributionOrder();
            $user = new User();
            $result = $order_service->getOrderList($page_index, $page_size, $condition, 'create_time desc');
            foreach($result['data'] as $k=>$v){
                foreach($v['order_item_list'] as $key=>$val){
                  $commission_distribution_list = $DistributionOrder->getQuery(['goods_id'=>$val['goods_id'],'order_id'=>$v['order_id']],'*','dorder_id');
                  $list['data'][$k]['order_item_list'][$key]['commission_distribution_list'] = array();
                  if(!empty($commission_distribution_list)){
                    foreach($commission_distribution_list as $c=>$item){
                       $commission_distribution_list[$c]['user'] = $user->getInfo(['uid'=>$item['receiptor_id']],'user_name,nick_name,number');
                    }
                    $result['data'][$k]['order_item_list'][$key]['commission_distribution_list'] = $commission_distribution_list;
                  }
                  
                }
                
            }
            return $result;
        }else{
            return view($this->style . "Distributionnew/distributionLevelList");
        }
        
    }
    /**
     * 会员提现
     */
    public function withdrawCashList()
    {
       if (request()->isAjax()) {
          $member = new MemberService();
            $page_index = request()->post('page_index','');
            $user_phone = request()->post('user_phone','');
            $user_name = request()->post('user_name','');
            $start_date = request()->post('start_date') == "" ? 0 : getTimeTurnTimeStamp(request()->post('start_date'));
            $end_date = request()->post('end_date') == "" ? 0 : getTimeTurnTimeStamp(request()->post('end_date'));
            
            //通过会员昵称获取会员id 组装id条件
            $uid_string = "";
            $where = array();
            if ($user_name != "") {
                $where["nick_name"] = array(
                    "like",
                    "%" . $user_name . "%"
                );
            }
            if (! empty($where)) {
                $uid_string = $this->getUserUids($where);
                if ($uid_string != "") {
                    $condition["uid"] = array(
                        "in",
                        $uid_string
                    );
                } else {
                    $condition["uid"] = 0;
                }
            }
            
            //手机号搜索条件
            if ($user_phone != "") {
                $condition["mobile"] = array(
                    "like",
                    "" . $user_phone . "%"
                );
            }
            
            //时间搜索条件
            if ($start_date != 0 && $end_date != 0) {
                $condition["ask_for_date"] = [
                    [
                        ">",
                        $start_date
                    ],
                    [
                        "<",
                        $end_date
                    ]
                ];
            } elseif ($start_date != 0 && $end_date == 0) {
                $condition["ask_for_date"] = [
                    [
                        ">",
                        $start_date
                    ]
                ];
            } elseif ($start_date == 0 && $end_date != 0) {
                $condition["ask_for_date"] = [
                    [
                        "<",
                        $end_date
                    ]
                ];
            }
            $condition["type"] = 1;
            $condition["shop_id"] = $this->instance_id;
            $list = $member->getMemberBalanceWithdraw($page_index, PAGESIZE, $condition, 'ask_for_date desc');
            return $list;
        }else{
            $config_service = new WebConfig();
            $data1 = $config_service->getTransferAccountsSetting($this->instance_id, 'wechat');
            $data2 = $config_service->getTransferAccountsSetting($this->instance_id, 'alipay');
            if (! empty($data1)) {
                $wechat = json_decode($data1['value'], true);
            }
            if (! empty($data2)) {
                $alipay = json_decode($data2['value'], true);
            }
            $this->assign("wechat", $wechat);
            $this->assign("alipay", $alipay);
            return view($this->style . "Distributionnew/withdrawCashList");
        }
        
    }
    /**
     * 查寻符合条件的数据并返回id （多个以“,”隔开）
     *
     * @param unknown $condition            
     * @return string
     */
    public function getUserUids($condition)
    {
        $member = new MemberService();
        $list = $member->getMemberAll($condition);
        $uid_string = "";
        foreach ($list as $k => $v) {
            $uid_string = $uid_string . "," . $v["uid"];
        }
        if ($uid_string != "") {
            $uid_string = substr($uid_string, 1);
        }
        return $uid_string;
    }
    /**
     * 分销拒绝提现请求
     *
     * @return Ambigous <multitype:unknown, multitype:unknown unknown string >
     */
    public function userDistributionCommissionWithdrawRefuse()
    {
        $id = request()->post('id','');
        $status = request()->post('status','');
        $remark = request()->post('remark','');
        $member = new MemberService();
        $retval = $member->userDistributionCommissionWithdrawRefuse($this->instance_id, $id, $status, $remark);
        return AjaxReturn($retval);
    }
    /**
     * 佣金提现审核
     */
    public function userDistributionCommissionWithdrawAudit()
    {
        $id = request()->post('id','');
        $status = request()->post('status','');
        $transfer_type = request()->post('transfer_type','');
        $transfer_name = request()->post('transfer_name','');
        $transfer_money = request()->post('transfer_money','');
        $transfer_remark = request()->post('transfer_remark','');
        $transfer_no = request()->post('transfer_no','');
        $transfer_account_no = request()->post('transfer_account_no','');
        $type_id = request()->post('type_id','');
        $member = new MemberService();
        $retval = $member->DistributionBalanceWithdrawAudit($this->instance_id, $id, $status, $transfer_type, $transfer_name, $transfer_money, $transfer_remark, $transfer_no, $transfer_account_no, $type_id);
        return $retval;
    }
    /**
     * 帐户详情
     */
    public function accountDetails()
    {
       if (request()->isAjax()) {
            $Distributionnews = new Distributionnews();
            $uid = request()->post("uid", 0);
            $page_index = request()->post("page_index", 1);
            $page_size = request()->post("page_size", PAGESIZE);
            $start_date = request()->post('startDate') == '' ? 0 : getTimeTurnTimeStamp(request()->post('startDate'));
            $end_date = request()->post('endDate') == '' ? 0 : getTimeTurnTimeStamp(request()->post('endDate'));
            if ($start_date != 0 && $end_date != 0) {
                $condition["add_time"] = [
                    [
                        ">",
                        $start_date
                    ],
                    [
                        "<",
                        $end_date
                    ]
                ];
            } elseif ($start_date != 0 && $end_date == 0) {
                $condition["add_time"] = [
                    [
                        ">",
                        $start_date
                    ]
                ];
            } elseif ($start_date == 0 && $end_date != 0) {
                $condition["add_time"] = [
                    [
                        "<",
                        $end_date
                    ]
                ];
            }
            $condition['receiptor_id'] = $uid;
            $result = $Distributionnews->commissions($page_index, $page_size, $condition, "add_time desc");
            return $result;
        }else{
            $uid = request()->get('uid',0);
            $user = new User();
            $DistributionRelations = new DistributionRelations();
            $row = $user->getInfo(['uid'=>$uid],'stop_commission,can_commission,total_commission,number,level_name,nick_name,is_promoters,Pid');
            if($row['Pid']>0){
              $parent_name = $user->getInfo(['uid'=>$row['Pid']],'nick_name');
              $row['parent_name'] = $parent_name['nick_name'];
            }
            $peopleNum = $DistributionRelations->getCount(['Pid'=>$uid]);
            $row['peopleNum'] = $peopleNum+1;
            $this->assign('row',$row);
            $this->assign('uid',$uid);
            return view($this->style . "Distributionnew/accountDetails");
        }
        
    }
    /**
     * 分销佣金明细
     */
    public function commissions()
    {
       
       if (request()->isAjax()) {
            $uid = request()->post("uid", 0);
            $type_id = request()->post("type_id", 0);
            $page_index = request()->post("page_index", 1);
            $page_size = request()->post("page_size", PAGESIZE);
            $Distributionnews = new Distributionnews();
            $result = $Distributionnews->commissions($page_index, $page_size, ['receiptor_id'=>$uid,'is_issue'=>$type_id], "add_time desc");

            return $result;
        }else{
          $uid = request()->get("uid", 0);
          $type_id = request()->get("type_id", 0);
          $this->assign('uid',$uid);
          $this->assign('type_id',$type_id);
          return view($this->style . "Distributionnew/commissions");
        }
        
    }

}