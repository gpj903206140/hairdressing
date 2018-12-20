<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------

// +----------------------------------------------------------------------
// | Licensed (  )
// +----------------------------------------------------------------------

// +----------------------------------------------------------------------

namespace think\model;

use think\Model;

class Pivot extends Model
{

    /**
     * 构造函数
     * @access public
     * @param array|object $data 数据
     * @param string $table 中间数据表名
     */
    public function __construct($data = [], $table = '')
    {
        if (is_object($data)) {
            $this->data = get_object_vars($data);
        } else {
            $this->data = $data;
        }

        $this->table = $table;
    }

}
