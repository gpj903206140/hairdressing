<?php
namespace data\api;

interface IVerification
{
    /**
     * 获取核销人员列表
     * @param unknown $page_index
     * @param unknown $page_size
     * @param unknown $condition
     * @param unknown $order
     */
    function getVerificationPersonnelList($page_index, $page_size, $condition, $order);
    
    /**
     * 添加核销人员
     * @param unknown $uid
     * @param unknown $shop_id
     */
    function addVerificationPersonne($uid, $shop_id);
}