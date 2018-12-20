<?php
namespace data\model;

use data\model\BaseModel as BaseModel;
use data\model\NsGoodsGroupModel as NsGoodsGroupModel;
/**
 * 回收商品表视图
 * @author Administrator
 *
 */
class NsCourseDeletedViewModel extends BaseModel {

    protected $table = 'ns_course_deleted';
    
    /**
     * 获取列表返回数据格式
     * @param unknown $page_index
     * @param unknown $page_size
     * @param unknown $condition
     * @param unknown $order
     * @return unknown
     */
    public function getGoodsViewList($page_index, $page_size, $condition, $order){
    
        $queryList = $this->getGoodsViewQuery($page_index, $page_size, $condition, $order);
        $queryCount = $this->getGoodsrViewCount($condition);
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
    public function getGoodsViewQuery($page_index, $page_size, $condition, $order)
    {
        /*$viewObj = $this->alias('ng')
        ->join('ns_goods_category ngc','ng.category_id = ngc.category_id','left')
        ->field('ng.goods_id, ng.goods_name, ng.shop_id, ng.category_id, ng.group_id_array,
             ng.promotion_type, ng.goods_type, ng.market_price, ng.price, ng.promotion_price, 
            ng.is_member_discount, ng.clicks, ng.sales, ng.collects, ng.star, ng.evaluates, 
            ng.shares, ng.picture, ng.keywords, ng.introduction, 
            ng.description, ng.QRcode, ng.is_hot, ng.is_recommend, 
            ng.is_new, ng.is_pre_sale, ng.is_bill, ng.state, ng.sale_date, ng.create_time, 
            ng.update_time, ng.sort, ng.real_sales, ngc.category_id, ngc.category_name, ');*/
        $viewObj = $this->alias("ng")
            ->join('sys_album_picture ng_sap', 'ng_sap.pic_id = ng.picture', 'left')
            ->field("ng.goods_id,ng.goods_name,ng.promotion_price,ng.crowd,ng.total_num,ng.market_price,ng.goods_type,ng.introduction,ng.state,ng.is_hot,ng.is_recommend,ng.is_new,ng.sales,ng_sap.pic_cover_micro,ng.create_time,ng.QRcode,ng.price,ng.total_num,ng.real_sales,ng.sort,ng.group_id_array,ng.allow_delete");
        $list = $this->viewPageQuery($viewObj, $page_index, $page_size, $condition, $order);
        if(!empty($list))
        {
            $goods_group_model = new NsGoodsGroupModel();
            foreach ($list as $k=>$v)
            {
               
                //获取group列表
                $group_name_query = $goods_group_model->all($v['group_id_array']);
               
                $list[$k]['group_query'] = $group_name_query;
            
            }
        }
        return $list;
    }
    /**
     * 获取列表数量
     * @param unknown $condition
     * @return \data\model\unknown
     */
    public function getGoodsrViewCount($condition)
    {
        $viewObj = $this->alias('ng')
        ->join('ns_goods_category ngc','ng.category_id = ngc.category_id','left')
        ->join('sys_album_picture sap','ng.picture = sap.pic_id', 'left')
        ->field('ng.goods_id');
        $count = $this->viewCount($viewObj,$condition);
        return $count;
    }
}