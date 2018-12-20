<?php
namespace data\model;

use data\model\BaseModel as BaseModel;
/**
 * 发送通知的记录表
 */
class NoticeRecordsModel extends BaseModel {

    protected $table = 'sys_notice_records';
    protected $rule = [
        'id'  =>  '',
        "send_config"=>'no_html_parse',
        "notice_context"=>'no_html_parse',
        "send_message"=>'no_html_parse'
    ];
    protected $msg = [
        'id'  =>  '',
        "send_config"=>'',
        "notice_context"=>'',
        "send_message"=>""
    ];
}