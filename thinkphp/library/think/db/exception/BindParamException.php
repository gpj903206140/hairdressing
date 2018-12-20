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

/**
 * PDO参数绑定异常
 */
class BindParamException extends DbException 
{

    /**
     * BindParamException constructor.
     * @param string $message
     * @param array  $config
     * @param string $sql
     * @param array    $bind
     * @param int    $code
     */
    public function __construct($message, $config, $sql, $bind, $code = 10502)
    {
        $this->setData('Bind Param', $bind);
        parent::__construct($message, $config, $sql, $code);
    }
}
