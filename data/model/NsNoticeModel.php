<?php
namespace data\model;

use data\model\BaseModel as BaseModel;
/**
  * 店铺公告表
 */

class NsNoticeModel extends BaseModel {

    protected $table = 'ns_notice';
    protected $rule = [
        'id'  =>  '',
        'notice_content'  =>  'no_html_parse',
    ];
    protected $msg = [
        'id'  =>  '',
        'notice_content'  =>  'no_html_parse',
    ];
}