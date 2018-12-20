<?php
namespace data\service;

/**
 * 商品品牌服务层
 */
use data\service\BaseService as BaseService;
use data\model\NsGoodsBrandModel as NsGoodsBrand;
use data\model\AlbumPictureModel as AlbumPictureModel;
use data\api\IGoodsBrand as IGoodsBrand;
use think\Cache;

class GoodsBrand extends BaseService implements IGoodsBrand
{

    private $goods_brand;

    function __construct()
    {
        parent::__construct();
        $this->goods_brand = new NsGoodsBrand();
    }

    /*
     * (non-PHPdoc)
     * @see \data\api\IGoodsBrand::getGoodsBrandList()
     */
    public function getGoodsBrandList($page_index = 1, $page_size = 0, $condition = '', $order = 'brand_initial asc', $field = '*')
    {
        $data = array($page_index, $page_size, $condition, $order, $field);
        $data = json_encode($data);
        
        $cache = Cache::tag("niu_goods_brand")->get("getGoodsBrandList".$data);
        if(empty($cache))
        {
            $list = $this->goods_brand->pageQuery($page_index, $page_size, $condition, $order, $field);
            Cache::tag("niu_goods_brand")->set("getGoodsBrandList".$data, $list);
            return $list;
        }else{
            return $cache;
        }
    
    }

    /*
     * (non-PHPdoc)
     * @see \data\api\IGoodsBrand::addOrUpdateGoodsBrand()
     */
    public function addOrUpdateGoodsBrand($brand_id, $shop_id = 0, $brand_name, $brand_initial, $brand_class, $brand_pic, $brand_recommend, $sort, $brand_category_name = '', $category_id_array = '', $brand_ads, $category_name, $category_id_1, $category_id_2, $category_id_3)
    {
        Cache::tag("niu_goods_brand")->clear();
        $data = array(
            'shop_id' => $shop_id,
            'brand_name' => $brand_name,
            'brand_initial' => $brand_initial,
            'brand_pic' => $brand_pic,
            'brand_recommend' => $brand_recommend,
            'sort' => $sort,
            'brand_ads' => $brand_ads,
            'category_name' => $category_name,
            'category_id_1' => $category_id_1,
            'category_id_2' => $category_id_2,
            'category_id_3' => $category_id_3
        );
        if ($brand_id == "") {
            $res = $this->goods_brand->save($data);
            $data['brand_id'] = $this->goods_brand->brand_id;
            $this->addUserLog($this->uid, 1, '商品', '添加商品品牌', '添加商品品牌:'.$brand_name);
            hook("goodsBrandSaveSuccess", $data);
            return $this->goods_brand->brand_id;
        } else {
            $res = $this->goods_brand->save($data, [
                "brand_id" => $brand_id
            ]);
            $this->addUserLog($this->uid, 1, '商品', '修改商品品牌', '修改商品品牌:'.$brand_name);
            $data['brand_id'] = $brand_id;
            hook("goodsBrandSaveSuccess", $data);
            return $res;
        }
        
        // TODO Auto-generated method stub
    }

    /*
     * (non-PHPdoc)
     * @see \data\api\IGoodsBrand::ModifyGoodsBrandSort()
     */
    public function ModifyGoodsBrandSort($brand_id, $sort)
    {
        Cache::tag("niu_goods_brand")->clear();
        $data = array()

        ;
        $res = $this->goods_brand->save($data, [
            'brand_id' => $brand_id
        ]);
        return $res;
        // TODO Auto-generated method stub
    }

    /*
     * (non-PHPdoc)
     * @see \data\api\IGoodsBrand::ModifyGoodsBrandRecomend()
     */
    public function ModifyGoodsBrandRecomend($brand_id, $brand_recommend)
    {
        Cache::tag("niu_goods_brand")->clear();
        $data = array()

        ;
        $res = $this->goods_brand->save($data, [
            'brand_id' => $brand_id
        ]);
        return $res;
        // TODO Auto-generated method stub
    }

    /*
     * (non-PHPdoc)
     * @see \data\api\IGoodsBrand::deleteGoodsBrand()
     */
    public function deleteGoodsBrand($brand_id_array)
    {
        Cache::tag("niu_goods_brand")->clear();
        $res = $this->goods_brand->destroy($brand_id_array);
        hook("goodsBrandDeleteSuccess", [
            'brand_id' => $brand_id_array
        ]);
        $this->addUserLog($this->uid, 1, '商品', '删除商品品牌', '删除商品品牌');
        return $res;
        // TODO Auto-generated method stub
    }

    /**
     * 根据id获取商品品牌信息
     * 
     * @param unknown $module_id            
     */
    public function getGoodsBrandInfo($brand_id, $field = '*')
    {
        $cache = Cache::tag("niu_goods_brand")->get("getGoodsBrandInfo".$brand_id.'_'.$field);
        if(empty($cache))
        {
            $info = $this->goods_brand->getInfo(array(
                'brand_id' => $brand_id
            ), $field);
            Cache::tag("niu_goods_brand")->set("getGoodsBrandInfo".$brand_id.'_'.$field, $info);
            return $info;
        }else{
            return $cache;
        }
       
    }
}