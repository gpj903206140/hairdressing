<?php
namespace data\model;

use data\model\BaseModel as BaseModel;
/**
 * 赠品活动表
 *  gift_id int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '赠品活动id ',
      start_time datetime NOT NULL COMMENT '赠品有效期开始时间',
      days int(10) UNSIGNED NOT NULL COMMENT '领取有效期(多少天)',
      end_time datetime NOT NULL COMMENT '赠品有效期结束时间',
      max_num varchar(50) NOT NULL COMMENT '领取限制(次/人 (0表示不限领取次数))',
      shop_id varchar(100) NOT NULL COMMENT '店铺id',
      shop_name varchar(255) NOT NULL COMMENT '店铺名称',
      create_time tinyint(3) UNSIGNED NOT NULL COMMENT '创建时间',
 */
class NsPromotionGiftViewModel extends BaseModel {

    protected $table = 'ns_promotion_gift';
    
    /**
     * 获取列表数量
     * @param unknown $condition
     * @return \data\model\unknown
     */
    public function getViewCount($condition)
    {
        $viewObj = $this->alias('npg')
        ->join('ns_promotion_gift_goods npgg','npg.gift_id = npgg.gift_id','left')
        ->field('npg.gift_id');
        $count = $this->viewCount($viewObj,$condition);
        return $count;
    }

}