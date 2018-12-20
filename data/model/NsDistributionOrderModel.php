<?php
namespace data\model;
use data\model\BaseModel as BaseModel;
/**
 * 地区区县表
 */
class NsDistributionOrderModel extends BaseModel {

    protected $table = 'ns_distribution_order';
    protected $rule = [
        'dorder_id'  =>  '',
    ];
    protected $msg = [
        'dorder_id'  =>  '',
    ];
}