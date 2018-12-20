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

class HttpException extends \RuntimeException
{
    private $statusCode;
    private $headers;

    public function __construct($statusCode, $message = null, \Exception $previous = null, array $headers = [], $code = 0)
    {
        $this->statusCode = $statusCode;
        $this->headers    = $headers;

        parent::__construct($message, $code, $previous);
    }

    public function getStatusCode()
    {
        return $this->statusCode;
    }

    public function getHeaders()
    {
        return $this->headers;
    }
}
