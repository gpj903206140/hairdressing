<?php
namespace data\model;

use data\model\BaseModel as BaseModel;
/**
 * 课程老师表
 *
 */
class NsCourseAssessModel extends BaseModel {

    protected $table = 'ns_course_assess';
    protected $rule = [
        'id'  =>  '',
    ];
    protected $msg = [
        'id'  =>  '',
    ];
}