<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2016  All rights reserved.
// +----------------------------------------------------------------------
// | Licensed (  )
// +----------------------------------------------------------------------
// | 
// +----------------------------------------------------------------------

namespace think\db\exception;

use think\exception\DbException;

class DataNotFoundException extends DbException 
{
    protected $table;

    /**
     * DbException constructor.
     * @param string $message
     * @param string $table
     * @param array $config
     */
    public function __construct($message, $table = '', Array $config = [])
    {
        $this->message  = $message;
        $this->table    = $table;

        $this->setData('Database Config', $config);
    }

    /**
     * 获取数据表名
     * @access public
     * @return string
     */
    public function getTable()
    {
        return $this->table;
    }
}
