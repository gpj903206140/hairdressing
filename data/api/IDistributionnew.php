<?php
namespace data\api;
/**
 * 分销接口
 */
interface IDistributionnew
{
    /**
     * 获取推广员列表
     * @param number $page_index
     * @param number $page_size
     * @param string $condition
     * @param string $order
     * @param string $field
     */
    function getRankRromotersList($page_index=1, $page_size=0, $condition = '', $order = '', $field = '*');
    
    /**
     * 添加或修改品牌
     * @param unknown $leve_id
     * @param unknown $level_name
     * @param unknown $level_money
     * @param unknown $level_0
     * @param unknown $level_1
     * 
     */
    function UpdateRankRromoters($leve_id, $level_name, $level_money, $level_0, $level_1);
    
    /**
     * 删除推广员等级
     * @param unknown $brand_id_array
     */
    function deleteRankRromoters($level_id_array);

    /**
     * 商品分销列表
     * @param unknown $brand_id_array
     */
    function getDistributionGoodList($page_index=1, $page_size=0, $condition = '', $order = '', $field = '*');
    /*
     *商品分销开/关
     * @param unknown $goods_ids
     * @param unknown $is_open
     */
    public function modifyGoodsDistribution($goods_ids, $is_open);
    /**
     * 获取商品分销比率
     */
    public function getDistributionSetting($goods_id,$field);
    /**
     * 商品分销比率设定
     */
    public function updateDistributionSetting($distribution_commission_rate, $condition,$condition_type);
    /**
     * 推广员管理
     */
    public function promotersTubeList($page_index, $page_size, $condition, $order, $field);
    /**
     * 推广员佣金
     */
    public function commissionList($page_index, $page_size, $condition, $order, $field);
    /**
     * 分销佣金明细
     */
    public function commissions($page_index, $page_size, $condition, $order, $field);
    /**
     * 循环查找上级推广员信息放入数组
     */
    public function searchLevel($level,$arr,$FxLevel,$Pid,$ChildId,$WxId);
}

?>