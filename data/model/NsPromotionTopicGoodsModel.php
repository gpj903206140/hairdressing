<?php
namespace data\model;

use data\model\BaseModel as BaseModel;
/**
 * 专题活动商品表
  discount_goods_id int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  topic_id int(11) NOT NULL COMMENT '对应专题活动',
  goods_id int(11) NOT NULL COMMENT '商品ID',
  status tinyint(4) NOT NULL DEFAULT 0 COMMENT '活动状态',
  goods_name varchar(255) NOT NULL DEFAULT '' COMMENT '商品名称',
  goods_picture int(11) NOT NULL COMMENT '商品图片',
  start_time int(11) DEFAULT 0 COMMENT '开始时间',
  end_time int(11) DEFAULT 0 COMMENT '结束时间',
 */
class NsPromotionTopicGoodsModel extends BaseModel {

    protected $table = 'ns_promotion_topic_goods';
    protected $rule = [
        'topic_goods_id'  =>  '',
    ];
    protected $msg = [
        'topic_goods_id'  =>  '',
    ];

}