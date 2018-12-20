<?php
namespace data\model;

use data\model\BaseModel as BaseModel;
/**
 * 商品分组表（改名为商品标签）
 * @author Administrator
 *
 */
class NsGoodsGroupModel extends BaseModel {

    protected $table = 'ns_goods_group';
    protected $rule = [
        'group_id'  =>  '',
    ];
    protected $msg = [
        'group_id'  =>  '',
    ];
    

}