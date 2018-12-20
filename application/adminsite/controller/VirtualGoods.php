<?php
namespace app\adminsite\controller;


use data\service\VirtualGoods as VirtualGoodsService;
/**
 *
 */
class VirtualGoods extends BaseController
{

    public function __construct()
    {
        parent::__construct();
    }
    
    /**
     * 获取虚拟商品列表
     */
    public function virtualGoodsList(){
        
        if(request()->isAjax())
        {
            $virtualGoods = new VirtualGoodsService();
            $page_index = request()->post('page_index', 1);
            $page_size = request()->post('page_size', PAGESIZE);
            $search_name = request()->post('search_name', '');
            $use_status = request()->post('use_status', '');
            $virtual_code = request()->post('virtual_code', '');
            
            $condition = array();
            if($search_name != ''){
                $condition["ng.goods_name"] = array(
                    'like',
                    '%' . $search_name . '%'
                );
            }
            if($virtual_code != ''){
                $condition["nvg.virtual_code"] = $virtual_code;
            }
            if($use_status != ''){
                $condition["nvg.use_status"] = $use_status;
            }
            $order = "nvg.virtual_goods_id desc";
            $list = $virtualGoods -> getVirtualGoodsList($page_index, $page_size, $condition, $order);
            return $list;      
        }
        
        $type = request()->get('type', '');
        
        return view($this->style. "VirtualGoods/virtualGoodsList");
    }
}