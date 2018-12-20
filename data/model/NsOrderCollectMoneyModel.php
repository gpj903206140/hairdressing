<?php
namespace data\model;

use data\model\BaseModel as BaseModel;
/**
 * 收银
 * @author Administrator
 *
 */
class NsOrderCollectMoneyModel extends BaseModel {

    protected $table = 'ns_order_collect_money';
    protected $rule = [
        'collect_id'  =>  '',
    ];
    protected $msg = [
        'collect_id'  =>  '',
    ];

}