<?php
namespace data\model;

use data\model\BaseModel as BaseModel;
/**
 * 收银
 * @author Administrator
 *
 */
class NsOrderContinuedMoneyModel extends BaseModel {

    protected $table = 'ns_order_continued_money';
    protected $rule = [
        'continued_id'  =>  '',
    ];
    protected $msg = [
        'continued_id'  =>  '',
    ];

}