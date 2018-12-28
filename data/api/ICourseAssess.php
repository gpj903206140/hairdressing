<?php
namespace data\api;
/**
 * 课程评价接口
 */
interface ICourseAssess
{
    /**
     * 合作老师
     * @param number $page_index
     * @param number $page_size
     * @param string $condition
     * @param string $order
     * @param string $field
     */
    function getCourseAssessList($page_index=1, $page_size=0, $condition = '', $order = '', $field = '*');
    /**
     * 添加或者修改合作老师信息
     * @param unknown $goods_classid  添加时$goods_classid=0
     * @param unknown $data
     */
    function addCourseAssess($uid, $member_name, $head_img, $goods_id, $goods_name, $goods_image, $score, $content, $explain_type);
    /**
     * 删除合作老师信息
     * @param unknown $goods_classid_array
     */
    function deleteCourseAssess($goods_id,$assess_id);

}