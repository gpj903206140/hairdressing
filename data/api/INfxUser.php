<?php
namespace data\api;

/**
 * 系统地址接口
 */
interface INfxUser
{

    /*
    发放订单的二级分销佣金
     */
    function updateCommissionDistributionIssue($order_id);

    
}
