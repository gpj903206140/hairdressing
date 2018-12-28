<?php
namespace data\model;

use data\model\BaseModel as BaseModel;
/**
 * 收藏&关注表
 * @author Administrator
 *
 */
class NsCourseFollowModel extends BaseModel {

    protected $table = 'ns_course_follow';
    protected $rule = [
        'follow_id'  =>  '',
    ];
    protected $msg = [
        'follow_id'  =>  '',
    ];

}