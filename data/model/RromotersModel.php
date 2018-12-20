<?php

namespace data\model;
use think\Db;
use data\model\BaseModel as BaseModel;
/**
 * 系统模块表
 * @author Administrator
 *
 */
class RromotersModel extends BaseModel
{
    protected  $table = 'ns_distribution_rromoter';
    protected $rule = [
        'id'  =>  '',
    ];
    protected $msg = [
        'id'  =>  '',
    ];
}