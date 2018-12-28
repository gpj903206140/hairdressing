<?php
namespace data\api;
/**
 * 课程目录接口(考虑多级课程目录)
 */
interface ICourseCatalogue
{
    /**
     * 课程目录
     * @param number $page_index
     * @param number $page_size
     * @param string $condition
     * @param string $order
     * @param string $field
     */
    function getCourseCatalogueList($page_index=1, $page_size=0, $condition = '', $order = '', $field = '*');
    /**
     * 添加或者修改课程目录信息
     * @param unknown $goods_classid  添加时$goods_classid=0
     * @param unknown $data
     */
    function addOrEditCourseCatalogue($goods_id, $catalogue_id, $catalogue_name, $is_visible, $description='', $sort=0, $catalogue_pic, $video_url, $pc_custom_template, $wap_custom_template);
    /**
     * 删除课程目录信息
     * @param unknown $goods_classid_array
     */
    function deleteCourseCatalogue($goods_id,$catalogue_id);

    /**
     * 获取课程目录列表应用后台
     */
    function getCatalogueTreeUseInAdmin($goods_id);

    /**
	 * 获取分类树，（暂时是查询两级）
	 */
	function getCourseCatalogueTree($pid);

	/**
     * 获取课程目录的子分类(一级)
     * @param unknown $pid
     */
    function getCourseCatalogueListByParentId($pid);

    /**
     * 获取指定课程目录的详情
     * @param unknown $goods_classid
     */
    function getCourseCatalogueDetail($catalogue_id);

    /*
     * 添加分享记录
     */
    function addCourseVideoShare($goods_id,$catalogue_id,$video_id,$uid);

}