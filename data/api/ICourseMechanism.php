<?php
namespace data\api;
/**
 * 合作机构接口(考虑多级合作机构)
 */
interface ICourseMechanism
{
    /**
     * 合作机构
     * @param number $page_index
     * @param number $page_size
     * @param string $condition
     * @param string $order
     * @param string $field
     */
    function getCourseMechanismList($page_index=1, $page_size=0, $condition = '', $order = '', $field = '*');
    /**
     * 添加或者修改合作机构信息
     * @param unknown $goods_classid  添加时$goods_classid=0
     * @param unknown $data
     */
    function addOrEditCourseMechanism($mechanism_id, $mechanism_name, $is_visible, $description='', $sort=0, $category_pic, $pc_custom_template, $wap_custom_template);
    /**
     * 删除合作机构信息
     * @param unknown $goods_classid_array
     */
    function deleteCourseMechanism($category_id);

    /**
     * 获取合作机构列表应用后台
     */
    function getMechanismTreeUseInAdmin();

    /**
	 * 获取分类树，（暂时是查询两级）
	 */
	function getCourseMechanismTree($pid);

	/**
     * 获取合作机构的子分类(一级)
     * @param unknown $pid
     */
    function getCourseMechanismListByParentId($pid);

    /**
     * 获取指定合作机构的详情
     * @param unknown $goods_classid
     */
    function getCourseMechanismDetail($category_id);
}