<?php
namespace data\model;

use data\model\BaseModel as BaseModel;
/**
 * 分销推广员表
 *
 */
class NsRankRromotersModel extends BaseModel {

    protected $table = 'ns_distribution_rromoter';
    protected $rule = [
        'level_id'  =>  '',
    ];
    protected $msg = [
        'level_id'  =>  '',
    ];

}