<?php
namespace data\model;

use data\model\BaseModel as BaseModel;
/**
 * 团购活动表
 * @author Administrator
 *
 */
class NsPromotionGroupBuyModel extends BaseModel {

    protected $table = 'ns_promotion_group_buy';
    protected $rule = [
        'group_id'  =>  '',
    ];
    protected $msg = [
        'group_id'  =>  '',
    ];

}