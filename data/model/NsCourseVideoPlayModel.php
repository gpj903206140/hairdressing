<?php
namespace data\model;

use data\model\BaseModel as BaseModel;

class NsCourseVideoPlayModel extends BaseModel {

    protected $table = 'ns_course_video_play';
    protected $rule = [
        'play_id'  =>  '',
    ];
    protected $msg = [
        'play_id'  =>  '',
    ];
}