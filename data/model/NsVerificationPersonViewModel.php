<?php
namespace data\model;

use data\model\BaseModel as BaseModel;
/**
 * 核销人员表
 * @author Administrator
 *
 */
class NsVerificationPersonViewModel extends BaseModel {
    protected $table = 'ns_verification_person';
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
        $viewObj = $this->alias('nvp')
        ->join('sys_user su','nvp.uid = su.uid','left')
        ->field('nvp.v_id, nvp.uid, nvp.shop_id, nvp.create_time, su.nick_name');
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
        $viewObj = $this->alias('nvp')
        ->join('sys_user su','nvp.uid = su.uid','left')
        ->field('nvp.v_id');
        $count = $this->viewCount($viewObj,$condition);
        return $count;
    }
    
    
}