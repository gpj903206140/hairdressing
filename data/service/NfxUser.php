<?php
namespace data\service;

/**
 * 订单
 */
use data\api\INfxUser as INfxUser;
use data\model\BaseModel;
use data\model\NsOrderGoodsModel;

class NfxUser extends BaseService implements INfxUser
{

    function __construct()
    {
        parent::__construct();
    }
    /*
    发放订单的二级分销佣金
     */
    function updateCommissionDistributionIssue($order_id){
        $fileName = INTERCALATE;
        $set = array();
        if(file_exists($fileName)){
           if($set = file_get_contents($fileName)){
             $set = json_decode($set,true);
           }
        }
        $order_goods = new NsOrderGoodsModel();
        $orderList = $order_goods->getQuery(['order_id'=>$order_id],'*','order desc');
        dump(['order_id'=>$order_id]);exit;
        print_r($orderList);exit;
        if($set['is_open']==1){
            if($set['distribution_use']==0){ //使用利润  

            }else if($set['distribution_use']==1){ //销售价格  

            }
        }
        
    }
    
}