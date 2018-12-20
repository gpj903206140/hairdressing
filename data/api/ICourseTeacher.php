<?php
namespace data\api;
/**
 * 合作老师接口(考虑多级合作老师)
 */
interface ICourseTeacher
{
    /**
     * 合作老师
     * @param number $page_index
     * @param number $page_size
     * @param string $condition
     * @param string $order
     * @param string $field
     */
    function getCourseTeacherList($page_index=1, $page_size=0, $condition = '', $order = '', $field = '*');
    /**
     * 添加或者修改合作老师信息
     * @param unknown $goods_classid  添加时$goods_classid=0
     * @param unknown $data
     */
    function addOrEditCourseTeacher($mechanism_id, $teacher_id, $teacher_name, $is_visible, $description='', $sort=0, $teacher_pic, $pc_custom_template, $wap_custom_template);
    /**
     * 删除合作老师信息
     * @param unknown $goods_classid_array
     */
    function deleteCourseTeacher($teacher_id);

    /**
     * 获取合作老师列表应用后台
     */
    function getTeacherTreeUseInAdmin($mechanism_id);

    /**
	 * 获取分类树，（暂时是查询两级）
	 */
	function getCourseTeacherTree($pid);

	/**
     * 获取合作老师的子分类(一级)
     * @param unknown $pid
     */
    function getCourseTeacherListByParentId($pid);

    /**
     * 获取指定合作老师的详情
     * @param unknown $goods_classid
     */
    function getCourseTeacherDetail($teacher_id);
}