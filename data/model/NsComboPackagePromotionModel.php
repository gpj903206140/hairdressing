<?php
namespace data\model;
use think\Db;
use data\model\BaseModel as BaseModel;
/**
 * 功能说明：商品组合套餐表
 */
class NsComboPackagePromotionModel extends BaseModel
{
    protected $table = 'ns_combo_package_promotion';
    protected $rule = [
        'id'  =>  '',
    ];
    protected $msg = [
        'id'  =>  '',
    ];
}
