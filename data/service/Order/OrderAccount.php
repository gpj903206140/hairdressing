<?php
namespace data\service\Order;
use data\service\BaseService as BaseService;
use data\model\NsOrderModel;
use data\model\NsOrderGoodsModel;
/**
 * 订单账户表
 */
class OrderAccount extends BaseService
{
    /**
     * 获取一段时间之内店铺订单支付统计
     * @param unknown $start_time
     * @param unknown $end_time
     */
    public function getShopOrderSum($shop_id, $start_time, $end_time)
    {
        $order_model = new NsOrderModel();
          $condition["create_time"] = [
               [
                   ">=",
                   getTimeTurnTimeStamp($start_time)
               ],
               [
                   "<=",
                   getTimeTurnTimeStamp($end_time)
               ]
           ];
          $condition['order_status']= array('NEQ', 0);
          $condition['order_status']= array('NEQ', 5);
          if($shop_id != 0)
          {
              $condition['shop_id']= array('NEQ', 0);
          }
          $order_sum = $order_model->getSum($condition,'pay_money');
          if(!empty($order_sum))
          {
              return $order_sum;
          }else{
              return 0;
          }
    }
    /**
     * 获取在一段时间之内订单收入明细表
     * @param unknown $shop_id
     * @param unknown $start_time
     * @param unknown $end_time
     * @param unknown $page_index
     * @param unknown $page_size
     */
    public function getShopOrderSumList($shop_id, $start_time, $end_time, $page_index, $page_size){
        $order_model = new NsOrderModel();
        $condition["create_time"] = [
            [
                ">=",
                getTimeTurnTimeStamp($start_time)
            ],
            [
                "<=",
                getTimeTurnTimeStamp($end_time)
            ]
        ];
        $condition['order_status']= array('NEQ', 0);
        $condition['order_status']= array('NEQ', 5);
        if($shop_id != 0)
        {
            $condition['shop_id']= array('NEQ', 0);
        }
        $list = $order_model->pageQuery($page_index, $page_size, $condition, 'create_time desc', '*');
        return $list;
        
    }
    /**
     * 获取店铺在一段时间之内退款统计
     * @param unknown $shop_id
     * @param unknown $start_time
     * @param unknown $end_time
     */
    public function getShopOrderSumRefund($shop_id, $start_time, $end_time)
    {
        $order_model = new NsOrderModel();
        $condition["create_time"] = [
            [
                ">=",
                getTimeTurnTimeStamp($start_time)
            ],
            [
                "<=",
                getTimeTurnTimeStamp($end_time)
            ]
        ];
        $condition['order_status']= array('not in', '0,5');
        if($shop_id != 0)
        {
            $condition['shop_id']= array('NEQ', 0);
        }
        $order_sum = $order_model->getSum($condition, 'refund_money');
        return $order_sum;
        
    }
    /**
     * 获取订单在一段时间之内退款列表
     * @param unknown $shop_id
     * @param unknown $start_time
     * @param unknown $end_time
     * @param unknown $page_index
     * @param unknown $page_size
     */
    public function getShopOrderRefundList($shop_id, $start_time, $end_time, $page_index, $page_size)
    {
        $order_model = new NsOrderModel();
        $condition["create_time"] = [
            [
                ">=",
                getTimeTurnTimeStamp($start_time)
            ],
            [
                "<=",
                getTimeTurnTimeStamp($end_time)
            ]
        ];
        $condition['order_status']= array('NEQ', 0);
        $condition['order_status']= array('NEQ', 5);
        $condition['refund_money'] = array('GT', 0);
        if($shop_id != 0)
        {
            $condition['shop_id']= array('NEQ', 0);
        }
         $list = $order_model->pageQuery($page_index, $page_size, $condition, 'create_time desc', '*');
        return $list;
    }
    /**
     * 查询一段时间下单量
     * @param unknown $shop_id
     * @param unknown $start_date
     * @param unknown $end_date
     * @return unknown|number
     */
    public function getShopSaleSum($condition){
        $order_model = new NsOrderModel();
        $order_sum = $order_model->getSum($condition,'pay_money');
        if(!empty($order_sum))
        {
            return $order_sum;
        }else{
            return 0;
        }
    }
    /**
     * 查询一点时间下单用户
     * @param unknown $shop_id
     * @param unknown $start_date
     * @param unknown $end_date
     * @return unknown|number
     */
    public function getShopSaleUserSum($condition){
        
        $order_model = new NsOrderModel();
        $order_sum = $order_model->distinct(true)->field('buyer_id')->where($condition)->select();
        if(!empty($order_sum))
        {
            return count($order_sum);
        }else{
            return 0;
        }
    }
    /**
     * 查询一段时间下单量
     * @param unknown $shop_id
     * @param unknown $start_date
     * @param unknown $end_date
     * @return unknown|number
     */
    public function getShopSaleNumSum($condition){
        $order_model = new NsOrderModel();
        $order_sum = $order_model->getCount($condition);
        if(!empty($order_sum))
        {
            return $order_sum;
        }else{
            return 0;
        }
    }
    /**
     * 查询一段时间内下单商品数
     * @param unknown $shop_id
     * @param unknown $start_date
     * @param unknown $end_date
     * @return unknown|number
     */
    public function getShopSaleGoodsNumSum($condition){
        $order_model = new NsOrderModel();
        $order_list = $order_model->where($condition)->select();
        $order_string1 = "";
        $order_string2 = "";
        $goods_num = 0;
        foreach($order_list as $k=>$v){
            if($v['order_status']!=10){
                $order_id1 =  $v["order_id"];
                $order_string1 = $order_string1.",".$order_id1;
            }else{
                $order_id2 =  $v["order_id"];
                $order_string2 = $order_string2.",".$order_id2; 
            }
            
        }
        $order_goods_model = new NsOrderGoodsModel();
        if($order_string1 != ''){
            $order_string1 = substr($order_string1,1);
            $condition = array(
                'order_id' => array('in', $order_string1)
            );
            $goods_num += $order_goods_model->getSum($condition,"num");
        }
        if($order_string2 != ''){
            $order_string2 = substr($order_string2,1);
            $condition = array(
                'order_id' => array('in', $order_string2)
            );
            $goods_num += $goods_num2 = $order_goods_model->getCount($condition,"order_id");
        }
        if(!empty($goods_num))
        {
            return $goods_num;
        }else{
            return 0;
        }
    }
    
}