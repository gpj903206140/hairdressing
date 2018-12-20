<?php
namespace data\api;

/**
 * 团购接口
 */
interface IGroupBuy
{
    /**
     * 团购列表
     * @param number $page_index
     * @param number $page_size
     * @param string $condition
     * @param string $order
     * @param string $field
     */
    function getPromotionGroupBuyList($page_index = 1, $page_size = 0, $condition = '', $order = '', $field = '*');
    
    /**
     * 获取团购活动详情
     * @param number $group_id
     */
    function getPromotionGroupBuyDetail($group_id);
    
    /**
     * 添加 修改团购
     * @param unknown $shop_id
     * @param unknown $goods_id
     * @param unknown $start_time
     * @param unknown $end_time
     * @param unknown $max_num
     * @param unknown $min_num
     * @param unknown $group_name
     * @param number $group_id
     */
    function addPromotionGroupBuy($shop_id, $goods_id, $start_time, $end_time, $max_num, $group_name, $price_json, $group_id = 0, $remark );
    
    /**
     * 获取商品团购活动信息
     */
    function getGoodsFirstPromotionGroupBuy($goods_id);
    
    /**
     * 删除团购活动
     * @param number $group_id
     */
    function delPromotionGroupBuy($group_id);
    
    /**
     * 团购订单创建
     * @param unknown $order_type
     * @param unknown $out_trade_no
     * @param unknown $pay_type
     * @param unknown $shipping_type
     * @param unknown $order_from
     * @param unknown $buyer_ip
     * @param unknown $buyer_message
     * @param unknown $buyer_invoice
     * @param unknown $shipping_time
     * @param unknown $receiver_mobile
     * @param unknown $receiver_province
     * @param unknown $receiver_city
     * @param unknown $receiver_district
     * @param unknown $receiver_address
     * @param unknown $receiver_zip
     * @param unknown $receiver_name
     * @param unknown $point
     * @param unknown $user_money
     * @param unknown $goods_sku_list
     * @param unknown $platform_money
     * @param unknown $pick_up_id
     * @param unknown $shipping_company_id
     * @param unknown $coin
     */
    function groupBuyOrderCreate($order_type, $out_trade_no, $pay_type, $shipping_type, $order_from, $buyer_ip, $buyer_message, $buyer_invoice, $shipping_time, $receiver_mobile, $receiver_province, $receiver_city, $receiver_district, $receiver_address, $receiver_zip, $receiver_name, $point, $user_money, $goods_sku_list, $platform_money, $pick_up_id, $shipping_company_id, $coin);
    
}
