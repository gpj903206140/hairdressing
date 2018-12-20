<?php
namespace data\model;

use data\model\BaseModel as BaseModel;
use think\Validate;
/**
 cms文章分类表
 *  class_id int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类编号 ',
 *             name varchar(50) NOT NULL COMMENT '分类名称',
 *             sort tinyint(1) UNSIGNED NOT NULL DEFAULT 255 COMMENT '排序',
 */

class NcCmsArticleCommentModel extends BaseModel{
    protected $table = 'nc_cms_article_comment';
    protected $rule = [
        'comment_id'  =>  '',
        
    ];
    protected $msg = [
        'comment_id'  =>  '',
    ];
}