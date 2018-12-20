<?php

namespace data\model;

use data\model\BaseModel as BaseModel;
/**
 * 手机端自定义模板表
 */
class SysWapCustomTemplateModel extends BaseModel {
    
    protected $table = 'sys_wap_custom_template';
    protected $rule = [
        'id'  =>  '',
        'template_data'  =>  'no_html_parse',
    ];
    protected $msg = [
        'id'  =>  '',
        'config'  =>  '',
    ];
}