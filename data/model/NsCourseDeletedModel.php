<?php
namespace data\model;

use data\model\BaseModel as BaseModel;
/**
 * 商品表 回收站表
 * @author Administrator
 *
 */
class NsCourseDeletedModel extends BaseModel {

    protected $table = 'ns_course_deleted';
    
    protected $rule = [
        'goods_id'  =>  '',
        'description'  =>  'no_html_parse',
        'goods_spec_format'  =>  'no_html_parse'
    ];
    protected $msg = [
        'goods_id'  =>  '',
        'description'  =>  '',
        'goods_spec_format'  =>  'no_html_parse'
    ];
    

}