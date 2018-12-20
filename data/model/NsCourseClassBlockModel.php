<?php
namespace data\model;

use data\model\BaseModel as BaseModel;
/**
 * 商城首页分类楼层模块
 * @author Administrator
 *
 */
class NsCourseClassBlockModel extends BaseModel {

    protected $table = 'ns_course_class_block';
    protected $rule = [
        'ad_picture'  =>  'no_html_parse'
    ];
    protected $msg = [
        'ad_picture'  =>  ''
    ];
    

}