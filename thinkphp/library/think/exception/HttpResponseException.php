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

use think\Response;

class HttpResponseException extends \RuntimeException
{
    /**
     * @var Response
     */
    protected $response;

    public function __construct(Response $response)
    {
        $this->response = $response;
    }

    public function getResponse()
    {
        return $this->response;
    }

}
