<?php

namespace data\model;

use data\model\BaseModel as BaseModel;
/**
 * 营销游戏类型
 */

class NsPromotionGameTypeModel extends BaseModel {

    protected $table = 'ns_promotion_game_type';
    protected $rule = [
        'game_type'  =>  '',
    ];
    protected $msg = [
        'game_type'  =>  '',
    ];
}