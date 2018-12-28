<?php
namespace data\model;

use data\model\BaseModel as BaseModel;
/**
 * 课程老师表
 *
 */
class NsCourseTeacherModel extends BaseModel {

    protected $table = 'ns_course_Teacher';
    protected $rule = [
        'teacher_id'  =>  '',
    ];
    protected $msg = [
        'teacher_id'  =>  '',
    ];
}