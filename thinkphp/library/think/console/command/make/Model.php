<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2016  All rights reserved.
// +----------------------------------------------------------------------
// | Licensed (  )
// +----------------------------------------------------------------------
// | Author: 刘志淳 <chun@engineer.com>
// +----------------------------------------------------------------------

namespace think\console\command\make;

use think\console\command\Make;

class Model extends Make
{
    protected $type = "Model";

    protected function configure()
    {
        parent::configure();
        $this->setName('make:model')
            ->setDescription('Create a new model class');
    }

    protected function getStub()
    {
        return __DIR__ . '/stubs/model.stub';
    }

    protected function getNamespace($appNamespace, $module)
    {
        return parent::getNamespace($appNamespace, $module) . '\model';
    }
}
