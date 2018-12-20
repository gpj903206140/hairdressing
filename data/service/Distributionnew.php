<?php
namespace data\service;

/**
 * 分销服务层
 */
use data\api\IDistributionnew as IDistributionnew;
use data\service\BaseService as BaseService;
use data\model\NsRankRromotersModel as NsRankRromoters;
use data\model\NsGoodsModel as NsGoods;
use data\model\UserModel as UserModel;
use data\model\NsOrderModel as Order;
use data\model\NsDistributionOrderModel as DistributionOrder;
use think\Cache;

class Distributionnew extends BaseService implements IDistributionnew
{

    private $RankRromoters;
    private $NsGoods;
    private $User;

    function __construct()
    {
        parent::__construct();
        
    }

    /*
     * 推广员列表
     * (non-PHPdoc)
     * @see \data\api\IDistributionnew::getRankRromotersList()
     */
    public function getRankRromotersList($page_index = 1, $page_size = 0, $condition = '', $order = 'brand_initial asc', $field = '*')
    { 
        $this->RankRromoters = new NsRankRromoters();
        $data = array($page_index, $page_size, $condition, $order, $field);
        $data = json_encode($data);
        
        $cache = Cache::tag("ns_distribution_rromoter")->get("getRankRromotersList".$data);
        /*if(empty($cache))
        {*/
            $list = $this->RankRromoters->pageQuery($page_index, $page_size, $condition, $order, $field);
            Cache::tag("ns_distribution_rromoter")->set("getRankRromotersList".$data, $list);
            return $list;
        /*}else{
            return $cache;
        }*/
    
    }

    /*
     *推广员等级修改
     * (non-PHPdoc)
     * @see \data\api\IDistributionnew::UpdateRankRromoters()
     */
    public function UpdateRankRromoters($level_id, $level_name, $level_money, $level_0, $level_1)
    {
        $this->RankRromoters = new NsRankRromoters();
        Cache::tag("ns_distribution_rromoter")->clear();
        $data = array(
            'level_id' => $leve_id,
            'level_name' => $level_name,
            'level_money' => $level_money,
            'level_0' => $level_0,
            'level_1' => $level_1,
        );
        $res = $this->RankRromoters->save($data, [
            "level_id" => $level_id
        ]);
        $this->addUserLog($this->uid, 1, '分销', '修改推广员等级', '修改推广员等级:'.$level_name);
        $data['level_id'] = $level_id;
        hook("RankRromotersSaveSuccess", $data);
        return $res;
        
        // TODO Auto-generated method stub
    }

    /*
     * 删除推广员信息
     *
     * (non-PHPdoc)
     * @see \data\api\IDistributionnew::deleteRankRromoters()
     */
    public function deleteRankRromoters($level_id_array)
    {
        $this->RankRromoters = new NsRankRromoters();
        Cache::tag("ns_distribution_rromoter")->clear();
        $this->User = new UserModel();
        $count = $this->User->getCount("level_id in({$level_id_array})");
        if($count>0){
            $res = -1;
            return $res;
        }
        $res = $this->RankRromoters->destroy($level_id_array);
        hook("RankRromotersDeleteSuccess", [
            'level_id' => $level_id_array
        ]);
        $this->addUserLog($this->uid, 1, '分销', '删除推广员等级', '删除推广员等级');
        return $res;
        // TODO Auto-generated method stub
    }

    /**
     * 根据id获取推广员信息
     * 
     * @param unknown $module_id            
     */
    public function getRankRromotersInfo($level_id, $field = '*')
    {
        $this->RankRromoters = new NsRankRromoters();
        $cache = Cache::tag("ns_distribution_rromoter")->get("getRankRromotersInfo".$level_id.'_'.$field);
        //if(empty($cache))
        //{
            $info = $this->RankRromoters->getInfo(array(
                'level_id' => $level_id
            ), $field);
            Cache::tag("ns_distribution_rromoter")->set("getRankRromotersInfo".$level_id.'_'.$field, $info);
            return $info;
        //}else{
           // return $cache;
        //}
       
    }
    /*
     * 商品分销列表
     * (non-PHPdoc)
     * @see \data\api\IDistributionnew::getRankRromotersList()
     */
    public function getDistributionGoodList($page_index = 1, $page_size = 0, $condition = '', $order = 'brand_initial asc', $field = '*')
    { 
        $data = array($page_index, $page_size, $condition, $order, $field);
        $data = json_encode($data);
        //$cache = Cache::tag("ns_goods")->get("getDistributionGoodList".$data);
        //if(empty($cache))
        //{
            $this->NsGoods = new NsGoods();
            $viewObj = $this->NsGoods->alias("ng")
                ->join('sys_album_picture ng_sap', 'ng_sap.pic_id = ng.picture', 'left')
                ->field("ng.goods_id,ng.distribution_commission_rate,ng.is_open,ng.goods_name,ng.promotion_price,ng.market_price,ng.state,ng_sap.pic_cover_micro,ng.code,ng.create_time,ng.price");
            $queryList = $this->NsGoods->viewPageQuery($viewObj, $page_index, $page_size, $condition, $order);
            $queryCount = $this->getGoodsQueryCount($condition);
            $list = $this->NsGoods->setReturnList($queryList, $queryCount, $page_size);
            Cache::tag("ns_goods")->set("getDistributionGoodList".$data, $list);
            return $list;
        //}else{
           // return $cache;
       // }
    }
     /**
     * 获取商品查询数量，分页用
     *
     * @param unknown $condition            
     * @return unknown
     */
    public function getGoodsQueryCount($condition, $where_sql = "")
    {
        $goods_model = new NsGoods();
        $viewObj = $goods_model->alias('ng');
        if (! empty($where_sql)) {
            $count = $goods_model->viewCountNew($viewObj, $condition, $where_sql);
        } else {
            $count = $goods_model->viewCount($viewObj, $condition);
        }
        return $count;
    }
    /*
     *商品分销开/关
     * (non-PHPdoc)
     * @see \data\api\IDistributionnew::modifyGoodsDistribution()
     */
    public function modifyGoodsDistribution($goods_ids, $is_open)
    {
        $this->NsGoods = new NsGoods();
        Cache::tag("ns_goods")->clear();
        $data = array(
            'goods_id' => array('in',$goods_ids),
            'is_open' => $is_open,
        );
        $res = $this->NsGoods->save($data, [
            "goods_id" => array('in',$goods_ids)
        ]);
        $this->addUserLog($this->uid, 1, '分销', '商品分销开/关', '商品分销开/关:'.$goods_ids);
        $data['goods_id'] = array('in',$goods_ids);
        hook("modifyGoodsDistributionSuccess", $data);
        return $res;
        
        // TODO Auto-generated method stub
    }
    /**
     * 获取商品分销比率
     */
    public function getDistributionSetting($goods_id,$field='*')
    {
        $this->NsGoods = new NsGoods();
        $cache = Cache::tag("ns_goods")->get("getDistributionSetting".$goods_id.'_'.$field);
        if(empty($cache))
        {
            $info = $this->NsGoods->getInfo(array(
                'goods_id' => $goods_id
            ), $field);
            Cache::tag("ns_goods")->set("getDistributionSetting".$goods_id.'_'.$field, $info);
            return $info;
        }else{
            return $cache;
        }
    }
    /**
     * 商品分销比率设定
     */
    public function updateDistributionSetting($distribution_commission_rate, $condition,$condition_type)
    {
        $this->NsGoods = new NsGoods();
        Cache::tag("ns_goods")->clear();
        $data = array(
            'distribution_commission_rate' => $distribution_commission_rate,
        );
        if(!empty($condition)&&$condition_type==1){
           $res = $this->NsGoods->save($data, [
             "goods_id" => array('in',$condition)
           ]); 
        }elseif(empty($condition)&&$condition_type==3){
           $res = $this->NsGoods->save($data, [
             "goods_id" => array('gt',0)
           ]);
        }
        $this->addUserLog($this->uid, 1, '分销', '商品分销比率设定', '商品分销比率设定:'.$goods_ids);
        $data['goods_id'] = array('in',$goods_ids);
        hook("updateDistributionSettingSuccess", $data);
        return $res;
    }
    /**
     * 推广员管理
     */
    public function promotersTubeList($page_index = 1, $page_size = 0, $condition = '', $order = 'uid asc', $field = '*')
    {
        $this->User = new UserModel();
        $data = array($page_index, $page_size, $condition, $order, $field);
        $data = json_encode($data);
        //
        /*$cache = Cache::tag("ns_user")->get("promotersTubeList".$data);
        if(empty($cache))
        {*/
            $list = $this->User->pageQuery($page_index, $page_size, $condition, $order, $field);
            $order = new Order();
            foreach($list['data'] as $k=>$v){
                $list['data'][$k]['parent_name'] = '无';
                $list['data'][$k]['parent_number'] = '无';
                //$list['data'][$k]['level_id'] = '';
                 if($v['Pid']>0){
                    $parent_name = $this->User->getInfo(['uid'=>$v['Pid']],'nick_name,number,level_id');
                    if(!empty($parent_name['nick_name'])){
                        $list['data'][$k]['parent_name'] = $parent_name['nick_name'];
                        $list['data'][$k]['parent_number'] = $parent_name['number'];
                        //$list['data'][$k]['level_id'] = $parent_name['level_id'];
                    }
                }
               $list['data'][$k]['promoter_num'] = $this->User->getCount(['Pid'=>$v['uid']]);
                $order_money = $order->getSum(['is_deleted'=>0,'order_status'=>['in',"4,10"],'buyer_id'=>$v['uid']],'order_money');
                $list['data'][$k]['order_money'] = 0.00;
                if(!empty($order_money)){
                    $list['data'][$k]['order_money'] = $order_money;
                }
            }
            
            Cache::tag("ns_user")->set("promotersTubeList".$data, $list);
            return $list;
        /*}else{
            return $cache;
        }*/
    }
    /**
     * 推广员佣金
     */
    public function commissionList($page_index = 1, $page_size = 0, $condition = '', $order = 'uid asc', $field = '*')
    {
        $this->User = new UserModel();
        $data = array($page_index, $page_size, $condition, $order, $field);
        $data = json_encode($data);
        $cache = Cache::tag("ns_user")->get("commissionList".$data);
        if(empty($cache))
        {
            $list = $this->User->pageQuery($page_index, $page_size, $condition, $order, $field);
            
            Cache::tag("ns_user")->set("commissionList".$data, $list);
            return $list;
        }else{
            return $cache;
        }
    }
    /**
     * 分销佣金明细
     */
    public function commissions($page_index = 1, $page_size = 0, $condition = '', $order = 'uid asc', $field = '*')
    {
        $DistributionOrder = new DistributionOrder();
        $this->User = new UserModel();
        $data = array($page_index, $page_size, $condition, $order, $field);
        $data = json_encode($data);
        $cache = Cache::tag("ns_distribution_order")->get("commissions".$data);
        if(empty($cache))
        {
            $list = $DistributionOrder->pageQuery($page_index, $page_size, $condition, $order, $field);
            foreach($list['data'] as $k=>$v){
                $list['data'][$k]['user'] = $this->User->getInfo(['uid'=>$v['receiptor_id']],'nick_name,number');
            }

            Cache::tag("ns_distribution_order")->set("commissions".$data, $list);
            return $list;
        }else{
            return $cache;
        }
    }
    /**
     * 循环查找上级推广员信息放入数组
     */
    public function searchLevel($level,$arr,$FxLevel,$Pid,$ChildId,$WxId)
    {   
        if($level>$FxLevel){
            $user = new UserModel();
            $userCon = $user->getInfo(['uid'=>$Pid],'Pid');
            if($userCon['Pid']>0){
                $arr[$FxLevel-1]['ChildId'] = $ChildId;
                $arr[$FxLevel-1]['WxId'] = $WxId;
                $arr[$FxLevel-1]['Pid'] = $userCon['Pid'];
                $arr[$FxLevel-1]['FxLevel'] = $FxLevel;
                $arr = $this->searchLevel($level,$arr,$FxLevel+1,$userCon['Pid'],$ChildId,$WxId);
            }
            
        }
        return $arr;
    }
}