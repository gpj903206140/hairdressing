<?php

namespace data\model;

use data\model\BaseModel as BaseModel;
/**
 * 快捷菜单
 */
class SysShortcutMenuModel extends BaseModel {
    protected $table = 'sys_shortcut_menu';
    protected $rule = [
        'id'  =>  '',
    ];
    protected $msg = [
        'id'  =>  '',
    ];
    
    /**
     * 获取列表返回数据格式
     * @param unknown $page_index
     * @param unknown $page_size
     * @param unknown $condition
     * @param unknown $order
     * @return unknown
     */
    public function getViewList($page_index, $page_size, $condition, $order){
    
        $queryList = $this->getViewQuery($page_index, $page_size, $condition, $order);
        $queryCount = $this->getViewCount($condition);
        $list = $this->setReturnList($queryList, $queryCount, $page_size);
        return $list;
    }
    /**
     * 获取列表
     * @param unknown $page_index
     * @param unknown $page_size
     * @param unknown $condition
     * @param unknown $order
     * @return \data\model\multitype:number
     */
    public function getViewQuery($page_index, $page_size, $condition, $order)
    {
        //设置查询视图
        $viewObj = $this->alias('ssm')
        ->join('sys_module sm','ssm.module_id = sm.module_id','left')
        ->field('ssm.id,sm.module_id,sm.module_name,sm.url,sm.module_picture');
        $list = $this->viewPageQuery($viewObj, $page_index, $page_size, $condition, $order);
        return $list;
    }
    /**
     * 获取列表数量
     * @param unknown $condition
     * @return \data\model\unknown
     */
    public function getViewCount($condition)
    {
        $viewObj = $this->alias('ssm')
        ->join('sys_module sm','ssm.module_id = sm.module_id','left')
        ->field('ssm.id');
        $count = $this->viewCount($viewObj,$condition);
        return $count;
    }
}

