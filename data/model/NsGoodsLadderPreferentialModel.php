<?php

namespace data\model;
use think\Db;
use data\model\BaseModel as BaseModel;
/**
 * 系统模块表
 * @author Administrator
 *
 */
class NsGoodsLadderPreferentialModel extends BaseModel
{
    protected  $table = 'ns_goods_ladder_preferential';
    protected $rule = [
        'id'  =>  '',
    ];
    protected $msg = [
        'id'  =>  '',
    ];
}