<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK IT ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016  All rights reserved.
// +----------------------------------------------------------------------
// | Licensed (  )
// +----------------------------------------------------------------------
// | Author:  <>
// +----------------------------------------------------------------------

namespace think\exception;

class RouteNotFoundException extends HttpException
{

    public function __construct()
    {
        parent::__construct(404);
    }

}
