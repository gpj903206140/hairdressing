<?php
namespace data\model;

use data\model\BaseModel as BaseModel;
use data\model\NsCourseGroupModel as NsCourseGroupModel;
use data\model\NsGoodsSkuModel as NsGoodsSkuModel;
/**
 * 商品表视图
 * @author Administrator
 *
 */
class NsCourseViewModel extends BaseModel {

    protected $table = 'ns_course';
    
    /**
     * 获取列表返回数据格式
     * @param unknown $page_index
     * @param unknown $page_size
     * @param unknown $condition
     * @param unknown $order
     * @return unknown
     */
    public function getCourseViewList($page_index, $page_size, $condition, $order){
    
        $queryList = $this->getCourseViewQuery($page_index, $page_size, $condition, $order);
        $queryCount = $this->getCourseViewCount($condition);
        $list = $this->setReturnList($queryList, $queryCount, $page_size);
        return $list;
    }
    /**
     * 查询商品的视图
     * @param unknown $condition
     * @param unknown $field
     * @param unknown $order
     * @return unknown
     */
    public function getCourseViewQueryField($condition, $field, $order=""){
        $viewObj = $this->alias('ng')
            ->join('ns_course_class ngc','ng.category_id = ngc.category_id','left')
            ->join('sys_album_picture sap','ng.picture = sap.pic_id', 'left')
            ->field($field);
        $list = $viewObj->where($condition)
        ->order($order)
        ->select();
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
    public function getCourseViewQuery($page_index, $page_size, $condition, $order)
    {
        $viewObj = $this->alias('ng')
        ->join('ns_goods_category ngc','ng.category_id = ngc.category_id','left')
        ->join('sys_album_picture sap','ng.picture = sap.pic_id', 'left')
        ->field('ng.goods_id, ng.goods_name, ng.shop_id, ng.category_id, ng.group_id_array,
             ng.promotion_type, ng.goods_type, ng.market_price, ng.price, ng.promotion_price,  ng.clicks, ng.sales, ng.collects, ng.evaluates, 
            ng.shares, ng.picture, ng.keywords, ng.introduction, 
            ng.description, ng.QRcode, ng.is_hot, ng.is_recommend, 
            ng.is_new, ng.is_pre_sale, ng.is_bill, ng.state, ng.sale_date, ng.create_time, ng.score, 
            ng.update_time, ng.sort, ng.real_sales, ngc.category_id, ngc.category_name, sap.pic_cover_micro,sap.pic_cover_mid,sap.pic_cover_small,sap.pic_cover,sap.pic_id,sap.upload_type, sap.domain, sap.bucket ');
        $list = $this->viewPageQuery($viewObj, $page_index, $page_size, $condition, $order);
        /*if(!empty($list))
        {
            $goods_group_model = new NsCourseGroupModel();
            $goods_sku = new NsGoodsSkuModel();
            foreach ($list as $k=>$v)
            {
               
                //获取group列表
                $group_name_query = $goods_group_model->all($v['group_id_array']);
               
                $list[$k]['group_query'] = $group_name_query;
                //获取sku列表
                $sku_list = $goods_sku->where(['goods_id'=>$v['goods_id']])->select();
                
                $list[$k]['sku_list'] = $sku_list;
            }
        }*/
        return $list;
    }
    /**
     * 获取列表数量
     * @param unknown $condition
     * @return \data\model\unknown
     */
    public function getCourseViewCount($condition)
    {
        $viewObj = $this->alias('ng')
        ->join('ns_course_class ngc','ng.category_id = ngc.category_id','left')
        ->join('sys_album_picture sap','ng.picture = sap.pic_id', 'left')
        ->field('ng.goods_id');
        $count = $this->viewCount($viewObj,$condition);
        return $count;
    }
}