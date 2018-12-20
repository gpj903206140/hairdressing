<?php
namespace data\model;

use data\model\BaseModel as BaseModel;

/**
 * 会员提现账号
 *
 * id int(11) NOT NULL AUTO_INCREMENT,
 * uid int(11) NOT NULL COMMENT '会员id',
 * account_type int(11) DEFAULT 1 COMMENT '账户类型，1：银行卡，2：微信，3：支付宝',
 * account_type_name varchar(30) DEFAULT '银行卡' COMMENT '账户类型名称：银行卡，微信，支付宝',
 * branch_bank_name varchar(50) DEFAULT NULL COMMENT '支行信息（银行卡类型用）',
 * realname varchar(50) NOT NULL DEFAULT '' COMMENT '真实姓名',
 * account_number varchar(50) NOT NULL DEFAULT '' COMMENT '提现账号',
 * mobile varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
 * is_default int(11) NOT NULL DEFAULT 0 COMMENT '是否默认账号',
 * create_date int(11) DEFAULT 0 COMMENT '创建日期',
 * modify_date int(11) DEFAULT 0 COMMENT '修改日期',
 * PRIMARY KEY (id),
 * INDEX IDX_member_bank_account_uid (uid)
 */
class NsMemberBankAccountModel extends BaseModel
{

    protected $table = 'ns_member_bank_account';

    protected $rule = [
        'id' => ''
    ];

    protected $msg = [
        'id' => ''
    ];
}