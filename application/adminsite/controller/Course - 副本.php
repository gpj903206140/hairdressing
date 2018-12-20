<?php
namespace app\adminsite\controller;
use Think\DB;

use data\service\Address;
use data\service\Album;
use data\service\Express as Express;
use data\service\Course as CourseService;
use data\service\GoodsBrand as GoodsBrand;
use data\service\CourseClass as CourseClass;
use data\service\CourseMechanism as CourseMechanism;
use data\service\CourseGroup as CourseGroup;
use data\service\Supplier;
use Qiniu\json_decode;
use think\Config;
use data\service\VirtualGoods;
use data\service\Config as ConfigService;
/**
 * 课程控制器
 */
class Course extends BaseController
{

    public function __construct()
    {
        parent::__construct();
    }

    /**
     * 课程列表
     */
    public function courseList()
    {
       $courseervice = new CourseService();
        if (request()->isAjax()) {
            $page_index = request()->post("page_index", 1);
            $page_size = request()->post("page_size", PAGESIZE);
            $start_date = request()->post('start_date') == '' ? 0 : getTimeTurnTimeStamp(request()->post('start_date'));
            $end_date = request()->post('end_date') == '' ? 0 : getTimeTurnTimeStamp(request()->post('end_date'));
            $goods_name = request()->post('goods_name', '');
            $goods_code = request()->post('code', '');
            $state_type = request()->post('state', '');
            $category_id_1 = request()->post('category_id_1', '');
            $category_id_2 = request()->post('category_id_2', '');
            $category_id_3 = request()->post('category_id_3', '');
            $selectGoodsLabelId = request()->post('selectGoodsLabelId', '');
            $supplier_id = request()->post('supplier_id', '');
            $stock_warning = request()->post("stock_warning", 0); // 库存预警
            $sort_rule = request()->post("sort_rule", ""); // 字段排序规则
            $goods_type = request()->post("goods_type", "all"); // 商品类型
            
            if($goods_type != "all"){
                $condition["ng.goods_kind"] = $goods_type;
            }
            
            if (! empty($selectGoodsLabelId)) {
                $selectGoodsLabelIdArray = explode(',', $selectGoodsLabelId);
                $selectGoodsLabelIdArray = array_filter($selectGoodsLabelIdArray);
                $str = "FIND_IN_SET(" . $selectGoodsLabelIdArray[0] . ",ng.group_id_array)";
                for ($i = 1; $i < count($selectGoodsLabelIdArray); $i ++) {
                    $str .= "AND FIND_IN_SET(" . $selectGoodsLabelIdArray[$i] . ",ng.group_id_array)";
                }
                $condition[""] = [
                    [
                        "EXP",
                        $str
                    ]
                ];
            }
            
            if ($start_date != 0 && $end_date != 0) {
                $condition["ng.create_time"] = [
                    [
                        ">",
                        $start_date
                    ],
                    [
                        "<",
                        $end_date
                    ]
                ];
            } elseif ($start_date != 0 && $end_date == 0) {
                $condition["ng.create_time"] = [
                    [
                        ">",
                        $start_date
                    ]
                ];
            } elseif ($start_date == 0 && $end_date != 0) {
                $condition["ng.create_time"] = [
                    [
                        "<",
                        $end_date
                    ]
                ];
            }
            
            if ($state_type >0) {
                $condition["ng.state"] = 0;
            }else{
                $condition["ng.state"] = 1;
            }
            if (! empty($goods_name)) {
                $condition["ng.goods_name"] = array(
                    "like",
                    "%" . $goods_name . "%"
                );
            }
            if (! empty($goods_code)) {
                $condition["ng.code"] = array(
                    "like",
                    "%" . $goods_code . "%"
                );
            }
            if ($category_id_3 != "") {
                $condition["ng.category_id_3"] = $category_id_3;
            } elseif ($category_id_2 != "") {
                $condition["ng.category_id_2"] = $category_id_2;
            } elseif ($category_id_1 != "") {
                $condition["ng.category_id_1"] = $category_id_1;
            }
            
            if ($supplier_id != '') {
                $condition['ng.supplier_id'] = $supplier_id;
            }
            
            $condition["ng.shop_id"] = $this->instance_id;
            
            // 库存预警
            if ($stock_warning == 1) {
                $condition['ng.min_stock_alarm'] = array(
                    "neq",
                    0
                );
                $condition['ng.stock'] = array(
                    "exp",
                    "<= ng.min_stock_alarm"
                );
            }
            
            $order = array();
            if (! empty($sort_rule)) {
                $sort_rule_arr = explode(",", $sort_rule);
                $sort_field = $sort_rule_arr[0];
                $sort_value = $sort_rule_arr[1];
                if ($sort_value == "a") {
                    $sort_value = "ASC";
                } elseif ($sort_value == "d") {
                    $sort_value = "DESC";
                } else {
                    $sort_value = "";
                }
                
                if (! empty($sort_value)) {
                    switch ($sort_field) {
                        case "price":
                            $order['ng.price'] = $sort_value;
                            break;
                        case "stock":
                            $order['ng.stock'] = $sort_value;
                            break;
                        case "sales":
                            $order['ng.sales'] = $sort_value;
                            break;
                        case "sort":
                            $order['ng.sort'] = $sort_value;
                            break;
                    }
                }
            } else {
                // 默认时间排序
                $order['ng.create_time'] = 'desc';
            }
            $result = $courseervice->getBackStageGoodsList($page_index, $page_size, $condition, $order);
            
            // 根据商品分组id，查询标签名称
            foreach ($result['data'] as $k => $v) {
                if (! empty($v['group_id_array'])) {
                    $goods_group_id = explode(',', $v['group_id_array']);
                    $goods_group_name = '';
                    foreach ($goods_group_id as $key => $val) {
                        $course_group = new CourseGroup();
                        $goods_group_info = $course_group->getGoodsGroupDetail($val);
                        if (! empty($goods_group_info)) {
                            $goods_group_name .= $goods_group_info['group_name'] . ',';
                        }
                    }
                    $goods_group_name = rtrim($goods_group_name, ',');
                    $result["data"][$k]['goods_group_name'] = $goods_group_name;
                }
            }
                        $result['post'] = $_POST;
            return $result;
        } else {
            $course_group = new CourseGroup();
            $groupList = $course_group->getGoodsGroupList(1, 0, [
                'shop_id' => $this->instance_id,
                'pid' => 0
            ]);

            if (! empty($groupList['data'])) {
                foreach ($groupList['data'] as $k => $v) {
                    $v['sub_list'] = $course_group->getGoodsGroupList(1, 0, 'pid = ' . $v['group_id']);
                }
            }
            $this->assign("goods_group", $groupList['data']);
            $search_info = request()->get('search_info', '');
            $this->assign("search_info", $search_info);
            // 查找一级商品分类
            $courseClass = new CourseClass();
            $oneGoodsCategory = $courseClass->getGoodsCategoryListByParentId(0);
            $this->assign("oneGoodsCategory", $oneGoodsCategory);
            // 供货商列表
            $supplier = new Supplier();
            $supplier_list = $supplier->getSupplierList();
            $this->assign("supplier_list", $supplier_list['data']);
            // 上下架
            $state_type = request()->get("state_type", "");
            $this->assign("state", $state_type);
            // 库存预警
            $stock_warning = request()->get("stock_warning", 0);
            $this->assign("stock_warning", $stock_warning);
            if($state_type == 2){
                $child_menu_list = array(
                    array(
                        'url' => "course/courselist",
                        'menu_name' => "出售中",
                        "active" => 0
                    ),
                    array(
                        'url' => "course/courselist?state_type=2",
                        'menu_name' => "已下架",
                        'active' => 1
                    ),
                    array(
                        'url' => "course/courselist?stock_warning=1",
                        'menu_name' => "库存预警",
                        "active" => 0
                    ),
                    array(
                        'url' => "course/recyclelist",
                        'menu_name' => "回收站",
                        "active" => 0
                    )
                );
            }else if($stock_warning == 1){
                $child_menu_list = array(
                    array(
                        'url' => "course/courselist",
                        'menu_name' => "出售中",
                        "active" => 0
                    ),
                    array(
                        'url' => "course/courselist?state_type=2",
                        'menu_name' => "已下架",
                        'active' => 0
                    ),
                    array(
                        'url' => "course/courselist?stock_warning=1",
                        'menu_name' => "库存预警",
                        "active" => 1
                    ),
                    array(
                        'url' => "course/recyclelist",
                        'menu_name' => "回收站",
                        "active" => 0
                    )
                );
            }else{
                $child_menu_list = array(
                    array(
                        'url' => "course/courselist",
                        'menu_name' => "出售中",
                        "active" => 1
                    ),
                    array(
                        'url' => "course/courselist?state_type=2",
                        'menu_name' => "已下架",
                        'active' => 0
                    ),
                    array(
                        'url' => "course/courselist?stock_warning=1",
                        'menu_name' => "库存预警",
                        "active" => 0
                    ),
                    array(
                        'url' => "course/recyclelist",
                        'menu_name' => "回收站",
                        "active" => 0
                    )
                );
            }
            
//             if ($stock_warning == 1) {
//                 $child_menu_list[0]['active'] = 0;
//                 $child_menu_list[1]['active'] = 1;
//             }
            $this->assign('child_menu_list', $child_menu_list);
            return view($this->style . "Course/courseList");
        }
        
    }
    /**
     * 添加商品
     */
    public function addCourse()
    {
        $course_group = new CourseGroup();
        $express = new Express();
        $course = new CourseService();
        $supplier = new Supplier();
        $goodsbrand = new GoodsBrand();
        $album = new Album();
        $virtual_goods = new VirtualGoods();
        
        $goodsId = request()->get('goodsId', 0);
        $groupList = $course_group->getGoodsGroupList(1, 0, [
            'shop_id' => $this->instance_id
        ]);
        
        $supplier_list = $supplier->getSupplierList();
        $this->assign("supplier_list", $supplier_list['data']);
        
        $goods_attr_id = 0; // 商品类目关联id
        if (isset($_COOKIE["goods_category_id"])) {
            $this->assign("goods_category_id", $_COOKIE["goods_category_id"]);
            $name = str_replace(":", "&gt;", $_COOKIE["goods_category_name"]);
            $this->assign("goods_category_name", $name);
            $goods_attr_id = $_COOKIE["goods_attr_id"];
        } else {
            $this->assign("goods_category_id", 0); // 修改商品时，会进行查询赋值 2016年12月9日 10:54:07
            $this->assign("goods_category_name", "");
        }
        $this->assign("goods_attr_id", $goods_attr_id);
        $goods_attribute_list = $course->getAttributeServiceList(1, 0, [
            'is_use' => 1
        ], "", "attr_id,attr_name");
        $this->assign("goods_attribute_list", $goods_attribute_list['data']); // 商品类型
        $this->assign("shipping_list", $express->shippingFeeQuery("")); // 物流
        $this->assign("group_list", $groupList['data']); // 分组
        if (empty($groupList['data'])) {
            $this->assign("group_str", '');
        } else {
            $this->assign("group_str", json_encode($groupList['data']));
        }
        $this->assign("goods_id", $goodsId);
        $this->assign("shop_type", 2);
        
        // 相册列表
        $detault_album_detail = $album->getDefaultAlbumDetail();
        $this->assign('detault_album_id', $detault_album_detail['album_id']);
        
        // 物流公司
        $expressCompanyList = $express->getExpressCompanyList(1, 0, [
            'shop_id' => $this->instance_id
        ]);
        $this->assign("expressCompanyList", $expressCompanyList['data']);
        
        // 虚拟商品分组
        $virtual_goods_group = $virtual_goods->getVirtualGoodsGroup();
        $this->assign("virtual_goods_group", $virtual_goods_group);
        
        $template_url = array();
        $config = new ConfigService();
        $pc_template = $config->getUsePCTemplate($this->instance_id);
        $wap_template = $config ->getUseWapTemplate($this->instance_id);

        $template_url["pc_template_url"] = "template/shop/".$pc_template['value'].'/Goods/';
        $template_url["wap_template_url"] = "template/wap/".$wap_template['value'].'/Goods/';
        $this->assign("template_url", $template_url);
        
        if ($goodsId > 0) {
            if (! is_numeric($goodsId)) {
                $this->error("参数错误");
            }
            $goods_info = $course->getGoodsDetail($goodsId);
            if (! empty($goods_info)) {
                $goods_info['presell_time'] = getTimeStampTurnTime($goods_info['presell_time']);
                $goods_info['sku_list'] = json_encode(isset($goods_info['sku_list'])?$goods_info['sku_list']:array());
               
                $goods_info['goods_group_list'] = json_encode($goods_info['goods_group_list']);
                $goods_info['img_list'] = json_encode($goods_info['img_list']);
                $goods_info['goods_attribute_list'] = json_encode($goods_info['goods_attribute_list']);
                // 判断规格数组中图片路径是id还是路径
                if (trim($goods_info['goods_spec_format']) != "") {
                    $album = new Album();
                    $goods_spec_array = json_decode($goods_info['goods_spec_format'], true);
                    foreach ($goods_spec_array as $k => $v) {
                        foreach ($v["value"] as $t => $m) {
                            if (is_numeric($m["spec_value_data"]) && $m["spec_show_type"] == 3) {
                                $picture_detail = $album->getAlubmPictureDetail([
                                    "pic_id" => $m["spec_value_data"]
                                ]);
                                if (! empty($picture_detail)) {
                                    $goods_spec_array[$k]["value"][$t]["spec_value_data_src"] = $picture_detail["pic_cover_micro"];
                                }
                            } else 
                                if (! is_numeric($m["spec_value_data"]) && $m["spec_show_type"] == 3) {
                                    $goods_spec_array[$k]["value"][$t]["spec_value_data_src"] = $m["spec_value_data"];
                                }
                        }
                    }
                    $goods_spec_format = json_encode($goods_spec_array, JSON_UNESCAPED_UNICODE);
                    $goods_info['goods_spec_format'] = $goods_spec_format;
                }
                $extent_sort = count($goods_info["extend_category"]);
                $this->assign("extent_sort", $extent_sort);
                if ($goods_info["group_id_array"] == "") {
                    $this->assign("edit_group_array", array());
                } else {
                    $this->assign("edit_group_array", explode(",", $goods_info["group_id_array"]));
                }
                /**
                 * 当前cookie中存的goodsid
                 */
                $update_goods_id = isset($_COOKIE["goods_update_goodsid"]) ? $_COOKIE["goods_update_goodsid"] : 0;
                if ($update_goods_id == $goodsId) {
                    // $category_name = str_replace(":", "&gt;", $_COOKIE["goods_category_name"]);
                    $category_name = str_replace(":", "", $_COOKIE["goods_category_name"]);
                    $goods_info["category_id"] = $_COOKIE["goods_category_id"];
                    $goods_info["category_name"] = $category_name;
                }
                $goods_info['description'] = str_replace(PHP_EOL, '', $goods_info['description']);
                
                // 规格数据转json
                if (! empty($goods_info["sku_picture_array"])) {
                    $sku_picture_array_str = json_encode($goods_info["sku_picture_array"]);
                } else {
                    $sku_picture_array_str = '';
                }
                $this->assign("sku_picture_array_str", $sku_picture_array_str);
                
                $brand_info = $goodsbrand->getGoodsBrandInfo($goods_info['brand_id'], 'brand_id,brand_name');
                $goods_info['brand_info'] = $brand_info;
                
                // 商品阶梯优惠
                $ladder_preferential = '';
                
                $this->assign("ladder_preferential", $ladder_preferential);
                
                // 查询虚拟商品数据
                $virtual_goods_type_info ='';
                if (! empty($virtual_goods_type_info)) {
                    $virtual_goods_type_info['value_info'] = json_decode($virtual_goods_type_info['value_info'], true);
                    $this->assign("virtual_goods_type_info", $virtual_goods_type_info);
                }
                
                $virtual_goods_count = 0;
                $this->assign("virtual_goods_count", $virtual_goods_count);
                
                $this->assign("goods_info", $goods_info);
            } else {
                $this->error("商品不存在");
            }
        }
        return view($this->style . "course/editCourse");
    }
    /**
     * 功能说明：添加或更新商品时 ajax调用的函数
     */
    public function CourseCreateOrUpdate()
    {
        $res = 0;
        $product = request()->post('product', '');
        $goods_kind = request()->post('goods_kind', '');
        $allow_delete = request()->post('allow_delete', '');
        $qrcode = request()->post('is_qrcode', ''); // 1代表 需要创建 二维码 0代表不需要
        if (! empty($product)) {
            $product = json_decode($product, true);
            $product['goods_type'] = 1;
            $shopId = $this->instance_id;
            $courseService = new CourseService();
            $res = $courseService->addOrEditGoods($product["goodsId"], // 商品Id
            
$product["title"], // 商品标题
$shopId, $product["categoryId"], // 商品类目
$category_id_1 = 0, $category_id_2 = 0, $category_id_3 = 0, $product["supplierId"], $product["brandId"], $product["groupArray"], // 商品分组
$product['goods_type'], $product["market_price"], $product["price"], // 商品现价
$product["cost_price"], $product["point_exchange_type"], $product['integration_available_use'], $product['integration_available_give'], $is_member_discount = 0, $product["shipping_fee"], $product["shipping_fee_id"], $product["stock"], $product['max_buy'], $product['min_buy'], $product["minstock"], $product["base_good"], $product["base_sales"], $collects = 0, $star = 0, $evaluates = 0, $product["base_share"], $product["province_id"], $product["city_id"], $product["picture"], $product['key_words'], $product["introduction"], // 商品简介，促销语
$product["description"], $product['qrcode'], // 商品二维码
$product["code"], $product["display_stock"], $is_hot = 0, $is_recommend = 0, $is_new = 0, $sort = $product['sort'], $product["imageArray"], $product["skuArray"], $product["is_sale"], '', // $product["sku_img_array"]
$product['goods_attribute_id'], $product['goods_attribute'], $product['goods_spec_format'], $product['goods_weight'], $product['goods_volume'], $product['shipping_fee_type'], $product['categoryExtendId'], $product["sku_picture_vlaues"], $product['virtual_goods_type_data'], $product['production_date'], $product['shelf_life'], $product['ladder_preference'], $product['goods_video_address'], $product['pc_custom_template'], $product['wap_custom_template'], $product['max_use_point'],
$product['is_open_presell'], $product['presell_delivery_type'], $product['presell_price'], $product['presell_time'], $product['presell_day'], $product['goods_unit'],$goods_kind,$allow_delete);
            
            // sku编码分组
            
            if ($res > 0 && $qrcode == 1) {
                $goodsId = $res;
                
                $url = __URL(Config::get('view_replace_str.APP_MAIN') . '/course/coursedetail?id=' . $goodsId);
                $pay_qrcode = getQRcode($url, 'upload/goods_qrcode', 'goods_qrcode_' . $goodsId);
                
                $courseService->goods_QRcode_make($goodsId, $pay_qrcode);
            }
        }
        
        return $res;
    }
    /**
     * 商品回收站列表
     */
    public function recycleList()
    {
        if (request()->isAjax()) {
            $courseervice = new CourseService();
            $page_index = request()->post("page_index", 1);
            $page_size = request()->post("page_size", PAGESIZE);
            $start_date = request()->post('start_date') == '' ? 0 : getTimeTurnTimeStamp(request()->post('start_date'));
            $end_date = request()->post('end_date') == '' ? 0 : getTimeTurnTimeStamp(request()->post('end_date'));
            $goods_name = request()->post('goods_name', '');
            $category_id_1 = request()->post('category_id_1', '');
            $category_id_2 = request()->post('category_id_2', '');
            $category_id_3 = request()->post('category_id_3', '');
            if ($start_date != 0 && $end_date != 0) {
                $condition["ng.create_time"] = [
                    [
                        ">",
                        $start_date
                    ],
                    [
                        "<",
                        $end_date
                    ]
                ];
            } elseif ($start_date != 0 && $end_date == 0) {
                $condition["ng.create_time"] = [
                    [
                        ">",
                        $start_date
                    ]
                ];
            } elseif ($start_date == 0 && $end_date != 0) {
                $condition["ng.create_time"] = [
                    [
                        "<",
                        $end_date
                    ]
                ];
            }
            if (! empty($goods_name)) {
                $condition["ng.goods_name"] = array(
                    "like",
                    "%" . $goods_name . "%"
                );
            }
            if ($category_id_3 != "") {
                $condition["ng.category_id_3"] = $category_id_3;
            } elseif ($category_id_2 != "") {
                $condition["ng.category_id_2"] = $category_id_2;
            } elseif ($category_id_1 != "") {
                $condition["ng.category_id_1"] = $category_id_1;
            }
            $condition["ng.shop_id"] = $this->instance_id;
            $result = $courseervice->getGoodsDeletedList($page_index, $page_size, $condition, "ng.create_time desc");
            return $result;
        } else {
            $search_info = request()->post('search_info', '');
            $this->assign("search_info", $search_info);
            // 查找一级商品分类
            $CourseClass = new CourseClass();
            $oneGoodsCategory = $CourseClass->getGoodsCategoryListByParentId(0);
            $this->assign("oneGoodsCategory", $oneGoodsCategory);
            
            $child_menu_list = array(
                array(
                    'url' => "course/courselist",
                    'menu_name' => "出售中",
                    "active" => 0
                ),
                array(
                    'url' => "course/courselist?state_type=2",
                    'menu_name' => "已下架",
                    'active' => 0
                ),
                
                array(
                    'url' => "course/courselist?stock_warning=1",
                    'menu_name' => "库存预警",
                    "active" => 0
                ),
                array(
                    'url' => "course/recyclelist",
                    'menu_name' => "回收站",
                    "active" => 1
                )
            );
            $this->assign('child_menu_list', $child_menu_list);
            
            return view($this->style . 'Course/recycleList');
        }
    }

    /**
     * 回收站商品恢复
     */
    public function regainCoursDeleted()
    {
        if (request()->isAjax()) {
            $goods_ids = request()->post('goods_ids');
            $course = new CourseService();
            $res = $course->regainGoodsDeleted($goods_ids);
            return AjaxReturn($res);
        }
    }

    /**
     * 拷贝商品
     */
    public function copyCourse()
    {
        $goods_id = request()->post('goods_id', '');
        $courseservice = new CourseService();
        $res = $courseservice->copyGoodsInfo($goods_id);
        if ($res > 0) {
            $goodsId = $res;
            
            $url = Config::get('view_replace_str.APP_MAIN') . '/Course/courseDetail?id=' . $goodsId;
            $pay_qrcode = getQRcode($url, 'upload/goods_qrcode', 'goods_qrcode_' . $goodsId);
            
            $courseservice->goods_QRcode_make($goodsId, $pay_qrcode);
        }
        return AjaxReturn($res);
    }
    /**
     * 删除商品
     */
    public function deleteCourse()
    {
        $goods_ids = request()->post('goods_ids');
        $courseservice = new CourseService();
        $retval = $courseservice->deleteGoods($goods_ids);
        return AjaxReturn($retval);
    }

    /**
     * 删除回收站商品
     */
    public function emptyDeleteCourse()
    {
        $goods_ids = request()->post('goods_ids');
        $courseservice = new CourseService();
        $res = $courseservice->deleteRecycleGoods($goods_ids);
        return AjaxReturn($res);
    }
    /**
     * 商品上架
     */
    public function ModifyCorseOnline()
    {
        $condition = request()->post('goods_ids', '');
        $course_detail = new CourseService();
        $result = $course_detail->ModifyGoodsOnline($condition);
        return AjaxReturn($result);
    }

    /**
     * 商品下架
     */
    public function ModifyCorseOffline()
    {
        $condition = request()->post('goods_ids', '');
        $course_detail = new CourseService();
        $result = $course_detail->ModifyGoodsOffline($condition);
        return AjaxReturn($result);
    }
    /**
     * 商品分组列表
     */
    public function courseGroupList()
    {
        if (request()->isAjax()) {
            $coursegroup = new CourseGroup();
            $page_index = request()->post("page_index", 1);
            $page_size = request()->post("page_size", PAGESIZE);
            $condition = array();
            $list = $coursegroup->getGoodsGroupList($page_index, $page_size, $condition, "pid, sort");
            return $list;
        } else {
            
            return view($this->style . "Course/courseGroupList");
        }
    }

    /**
     * 添加商品分组
     */
    public function addCourseGroup()
    {
        $coursegroup = new CourseGroup();
        if (request()->isAjax()) {
            $shop_id = $this->instance_id;
            $group_name = request()->post('group_name', '');
            $pid = request()->post('pid', 0);
            $is_visible = request()->post('is_visible', '');
            $sort = request()->post('sort', '');
            $group_pic = request()->post('group_pic', '');
            $group_dec = request()->post('group_dec', '');
            
            $result = $coursegroup->addOrEditGoodsGroup(0, $shop_id, $group_name, $pid, $is_visible, $sort, $group_pic, $group_dec);
            return AjaxReturn($result);
        } else {
            return view($this->style . "Course/addCourseGroup");
        }
    }

    /**
     * 修改商品分组
     */
    public function updateCourseGroup()
    {
        $coursegroup = new CourseGroup();
        if (request()->isAjax()) {
            $group_id = request()->post('group_id', '');
            $shop_id = $this->instance_id;
            $group_name = request()->post('group_name', '');
            $pid = request()->post('pid', '');
            $is_visible = request()->post('is_visible', '');
            $sort = request()->post('sort', '');
            $group_pic = request()->post('group_pic', '');
            $group_dec = request()->post('group_dec', '');
            
            $result = $coursegroup->addOrEditGoodsGroup($group_id, $shop_id, $group_name, $pid, $is_visible, $sort, $group_pic, $group_dec);
            return AjaxReturn($result);
        } else {
            $group_id = request()->get('group_id', '');
            $result = $coursegroup->getGoodsGroupDetail($group_id);
            $this->assign("data", $result);
            
            return view($this->style . "Course/updateCourseGroup");
        }
    }

    /**
     * 删除商品分组
     */
    public function deleteCourseGroup()
    {
        $coursegroup = new CourseGroup();
        $group_id = request()->post('group_id', '');
        $res = $coursegroup->deleteGoodsGroup($group_id, $this->instance_id);
        return AjaxReturn($res);
    }
    /**
     * 修改 商品 分组 单个字段
     */
    public function modifyCourseGroupField()
    {
        $coursegroup = new CourseGroup();
        $fieldid = request()->post('fieldid', '');
        $fieldname = request()->post('fieldname', '');
        $fieldvalue = request()->post('fieldvalue', '');
        $res = $coursegroup->ModifyGoodsGroupField($fieldid, $fieldname, $fieldvalue);
        return $res;
    }
    /**
     * 商品分类选择
     *
     * @return Ambigous <\think\response\View, \think\response\$this, \think\response\View>
     */
    public function dialogSelectClass()
    {
        $category_id = request()->get("category_id", 0);
        $goodsid = request()->get("goodsid", 0);
        $flag = request()->get("flag", 'category');
        // 扩展分类标签id,用户回调方法
        $box_id = request()->get("box_id", '');
        // 已选择扩展分类(用于控制重复选择)
        $category_extend_id = request()->get("category_extend_id", '');
        if (! empty($category_extend_id) && $category_id != 0) {
            $category_extend_id = explode(",", $category_extend_id);
            foreach ($category_extend_id as $k => $v) {
                if ($v == $category_id) {
                    unset($category_extend_id[$k]);
                }
            }
            sort($category_extend_id);
            $category_extend_id = implode(',', $category_extend_id);
        }
        $this->assign("flag", $flag);
        $this->assign("goodsid", $goodsid);
        $this->assign("box_id", $box_id);
        $this->assign("category_extend_id", $category_extend_id);
        
        $course_class = new CourseClass();
        $list = $course_class->getGoodsCategoryListByParentId(0);
        $this->assign("cateGoryList", $list);
        $category_select_ids = "";
        $category_select_names = "";
        if ($category_id != 0) {
            $category_select_result = $course_class->getParentCategory($category_id);
            $category_select_ids = $category_select_result["category_ids"];
            $category_select_names = $category_select_result["category_names"];
        }
        $this->assign("category_select_ids", $category_select_ids);
        $this->assign("category_select_names", $category_select_names);
        return view($this->style . 'Course/dialogSelectClass');
    }
    /**
     * 功能说明：通过ajax来的得到页面的数据
     */
    public function SelectCateGetData()
    {
        $goods_category_id = request()->post("goods_category_id", ''); // 商品类目用
        $goods_category_name = request()->post("goods_category_name", ''); // 商品类目名称显示用
        $goods_attr_id = request()->post("goods_attr_id", ''); // 关联商品类型ID
        $quick = request()->post("goods_category_quick", ''); // JSON格式
        setcookie("course_class_id", $goods_category_id, time() + 3600 * 24);
        setcookie("course_class_name", $goods_category_name, time() + 3600 * 24);
        setcookie("course_attr_id", $goods_attr_id, time() + 3600 * 24);
        setcookie("course_class_quick", $quick, time() + 3600 * 24);
    }
    /**
     * 课程分类列表
     */
    public function courseClassList()
    {
        $course_class = new CourseClass();
        $one_list = $course_class->getCategoryTreeUseInAdmin();
        $this->assign("category_list", $one_list);
        return view($this->style . "course/courseClassList");
    }
    /**
     * 添加课程分类
     */
    public function addCourseClass()
    {
        $coursecate = new CourseClass();
        if (request()->isAjax()) {
            $category_name = request()->post("category_name", '');
            $pid = request()->post("pid", '');
            $is_visible = request()->post('is_visible', '');
            $keywords = request()->post("keywords", '');
            $description = request()->post("description", '');
            $sort = request()->post("sort", '');
            $category_pic = request()->post('category_pic', '');
            $attr_id = request()->post("attr_id", 0);
            $attr_name = request()->post("attr_name", '');
            $short_name = request()->post("short_name", '');
            $pc_custom_template = request()->post("pc_custom_template", "");
            $wap_custom_template = request()->post("wap_custom_template", "");
            $result = $coursecate->addOrEditGoodsCategory(0, $category_name, $short_name, $pid, $is_visible, $keywords, $description, $sort, $category_pic, $attr_id, $attr_name, $pc_custom_template, $wap_custom_template);
            return AjaxReturn($result);
        } else {
            $category_list = $coursecate->getGoodsCategoryTree(0);
            $this->assign('category_list', $category_list);
            $goods = new CourseService();
            $goodsAttributeList = $goods->getAttributeServiceList(1, 0);
            $this->assign("goodsAttributeList", $goodsAttributeList['data']);
            
            $template_url = array();
            $config = new ConfigService();
            $pc_template = $config->getUsePCTemplate($this->instance_id);
            $wap_template = $config ->getUseWapTemplate($this->instance_id);
            $template_url["pc_template_url"] = "template/shop/".$pc_template['value'].'/Course/';
            $template_url["wap_template_url"] = "template/wap/".$wap_template['value'].'/Course/';
            $this->assign("template_url", $template_url);
            
            return view($this->style . "Course/addCourseClass");
        }
    }
    /**
     * 修改课程分类
     */
    public function updateCourseClass()
    {
        $coursecate = new CourseClass();
        if (request()->isAjax()) {
            $category_id = request()->post("category_id", '');
            $category_name = request()->post("category_name", '');
            $short_name = request()->post("short_name", '');
            $pid = request()->post("pid", '');
            $is_visible = request()->post('is_visible', '');
            $keywords = request()->post("keywords", '');
            $description = request()->post("description", '');
            $sort = request()->post("sort", '');
            $attr_id = request()->post("attr_id", 0);
            $attr_name = request()->post("attr_name", '');
            $category_pic = request()->post('category_pic', '');
            $goods_category_quick = request()->post("goods_category_quick", '');
            $pc_custom_template = request()->post("pc_custom_template", "");
            $wap_custom_template = request()->post("wap_custom_template", "");
            $goods_type = request()->post("goods_type", "");
            if ($goods_category_quick != '') {
                setcookie("goods_category_quick", $goods_category_quick, time() + 3600 * 24);
            }
            $result = $coursecate->addOrEditGoodsCategory($category_id, $category_name, $short_name, $pid, $is_visible, $keywords, $description, $sort, $category_pic, $attr_id, $attr_name, $pc_custom_template, $wap_custom_template,$goods_type);
            return AjaxReturn($result);
        } else {
            $category_id = request()->get('category_id', '');
            $result = $coursecate->getGoodsCategoryDetail($category_id);
            $this->assign("data", $result);
            // 查询比当前等级高的 分类
            if ($result['level'] == 1) {
                $chile_list = $coursecate->getGoodsCategoryTree($category_id);
                if (empty($chile_list)) {
                    $category_list = $coursecate->getGoodsCategoryTree(0);
                } else {
                    $is_have = false;
                    foreach ($chile_list as $k => $v) {
                        if ($v["level"] == 3) {
                            $is_have = true;
                        }
                    }
                    if ($is_have) {
                        $category_list = array();
                    } else {
                        $category_list = $coursecate->getGoodsCategoryListByParentId(0);
                    }
                }
            } elseif ($result['level'] == 2) {
                $chile_list = $coursecate->getGoodsCategoryListByParentId($category_id);
                if (empty($chile_list)) {
                    $category_list = $coursecate->getGoodsCategoryTree(0);
                } else {
                    $category_list = $coursecate->getGoodsCategoryListByParentId(0);
                }
            } elseif ($result['level'] == 3) {
                $category_list = $coursecate->getGoodsCategoryTree(0);
            }
            if (! empty($category_list)) {
                foreach ($category_list as $k => $v) {
                    if ($v["category_id"] == $category_id && $category_id !== 0) {
                        unset($category_list[$k]);
                    } else {
                        if (isset($v["child_list"])) {
                            $temp_array = $v["child_list"];
                            foreach ($temp_array as $t => $m) {
                                if ($m["category_id"] == $category_id && $category_id !== 0) {
                                    unset($temp_array[$t]);
                                }
                            }
                            sort($temp_array);
                            $category_list[$k]["child_list"] = $temp_array;
                        }
                    }
                }
                sort($category_list);
            }
            $this->assign('category_list', $category_list);
            $goods = new CourseService();
            $goodsAttributeList = $goods->getAttributeServiceList(1, 0);
            $this->assign("goodsAttributeList", $goodsAttributeList['data']);
            
            $template_url = array();
            $config = new ConfigService();
            $pc_template = $config->getUsePCTemplate($this->instance_id);
            $wap_template = $config ->getUseWapTemplate($this->instance_id);
            $template_url["pc_template_url"] = "template/shop/".$pc_template['value'].'/Course/';
            $template_url["wap_template_url"] = "template/wap/".$wap_template['value'].'/Course/';
            $this->assign("template_url", $template_url);
            
            return view($this->style . "course/updateCourseClass");
        }
    }

    /**
     * 删除课程分类
     */
    public function deleteCourseClass()
    {
        $coursecate = new CourseClass();
        $category_id = request()->post('category_id', '');
        $res = $coursecate->deleteGoodsCategory($category_id);
        if ($res > 0) {
            $goods_category_quick = request()->post("goods_category_quick", '');
            if ($goods_category_quick != '') {
                setcookie("course_class_quick", $goods_category_quick, time() + 3600 * 24);
            }
        }
        return AjaxReturn($res);
    }
    /**
     * 批量添加课程分类
     */
    public function batchAddcourseclass(){
        if(request()->isAjax()){
            $content = request()->post("content", "");
            $coursecate = new CourseClass();
            $res = $coursecate -> batchAddgoodscategory($content);
            return $res;
        }
    }
    /**
     * 获取用户快速选择课程
     */
    public function getQuickCourse()
    {
        if (isset($_COOKIE["course_class_quick"])) {
            return $_COOKIE["course_class_quick"];
        } else {
            return - 1;
        }
    }
    /**
     * 修改 课程 分类 单个字段
     */
    public function modifyCourseClassField()
    {
        $coursecate = new CourseClass();
        $fieldid = request()->post('fieldid', '');
        $fieldname = request()->post('fieldname', '');
        $fieldvalue = request()->post('fieldvalue', '');
        $res = $coursecate->ModifyGoodsCategoryField($fieldid, $fieldname, $fieldvalue);
        return $res;
    }


    /**
     * 课程合作机构
     */
    public function courseMechanismList()
    {
        $course_mechanism = new CourseMechanism();
        $one_list = $course_mechanism->getCategoryTreeUseInAdmin();
        $this->assign("category_list", $one_list);
        return view($this->style . "course/courseMechanismList");
    }
    /**
     * 添加合作机构
     */
    public function addCourseMechanism()
    {
        $coursecate = new CourseMechanism();
        if (request()->isAjax()) {
            $mechanism_name = request()->post("mechanism_name", '');
            //$pid = request()->post("pid", '');
            $is_visible = request()->post('is_visible', '');
            //$keywords = request()->post("keywords", '');
            $description = request()->post("description", '');
            $sort = request()->post("sort", '');
            $mechanism_pic = request()->post('mechanism_pic', '');
            //$attr_id = request()->post("attr_id", 0);
            //$attr_name = request()->post("attr_name", '');
            //$short_name = request()->post("short_name", '');
            $pc_custom_template = request()->post("pc_custom_template", "");
            $wap_custom_template = request()->post("wap_custom_template", "");
            $result = $coursecate->addOrEditGoodsCategory(0, $mechanism_name, $is_visible, $description, $sort, $mechanism_pic, $pc_custom_template, $wap_custom_template);
            return AjaxReturn($result);
        } else {
            $category_list = $coursecate->getGoodsCategoryTree(0);
            $this->assign('category_list', $category_list);
            $goods = new CourseService();
            $goodsAttributeList = $goods->getAttributeServiceList(1, 0);
            $this->assign("goodsAttributeList", $goodsAttributeList['data']);
            
            $template_url = array();
            $config = new ConfigService();
            $pc_template = $config->getUsePCTemplate($this->instance_id);
            $wap_template = $config ->getUseWapTemplate($this->instance_id);
            $template_url["pc_template_url"] = "template/shop/".$pc_template['value'].'/Course/';
            $template_url["wap_template_url"] = "template/wap/".$wap_template['value'].'/Course/';
            $this->assign("template_url", $template_url);
            return view($this->style . "Course/addCourseMechanism");
        }
    }
    /**
     * 修改合作机构
     */
    public function updateCourseMechanism()
    {
        $coursecate = new CourseMechanism();
        if (request()->isAjax()) {
            $category_id = request()->post("category_id", '');
            $category_name = request()->post("category_name", '');
            $short_name = request()->post("short_name", '');
            $pid = request()->post("pid", '');
            $is_visible = request()->post('is_visible', '');
            $keywords = request()->post("keywords", '');
            $description = request()->post("description", '');
            $sort = request()->post("sort", '');
            $attr_id = request()->post("attr_id", 0);
            $attr_name = request()->post("attr_name", '');
            $category_pic = request()->post('category_pic', '');
            $goods_category_quick = request()->post("goods_category_quick", '');
            $pc_custom_template = request()->post("pc_custom_template", "");
            $wap_custom_template = request()->post("wap_custom_template", "");
            $goods_type = request()->post("goods_type", "");
            if ($goods_category_quick != '') {
                setcookie("goods_category_quick", $goods_category_quick, time() + 3600 * 24);
            }
            $result = $coursecate->addOrEditGoodsCategory($category_id, $category_name, $short_name, $pid, $is_visible, $keywords, $description, $sort, $category_pic, $attr_id, $attr_name, $pc_custom_template, $wap_custom_template,$goods_type);
            return AjaxReturn($result);
        } else {
            $category_id = request()->get('category_id', '');
            $result = $coursecate->getGoodsCategoryDetail($category_id);
            $this->assign("data", $result);
            // 查询比当前等级高的 分类
            if ($result['level'] == 1) {
                $chile_list = $coursecate->getGoodsCategoryTree($category_id);
                if (empty($chile_list)) {
                    $category_list = $coursecate->getGoodsCategoryTree(0);
                } else {
                    $is_have = false;
                    foreach ($chile_list as $k => $v) {
                        if ($v["level"] == 3) {
                            $is_have = true;
                        }
                    }
                    if ($is_have) {
                        $category_list = array();
                    } else {
                        $category_list = $coursecate->getGoodsCategoryListByParentId(0);
                    }
                }
            } elseif ($result['level'] == 2) {
                $chile_list = $coursecate->getGoodsCategoryListByParentId($category_id);
                if (empty($chile_list)) {
                    $category_list = $coursecate->getGoodsCategoryTree(0);
                } else {
                    $category_list = $coursecate->getGoodsCategoryListByParentId(0);
                }
            } elseif ($result['level'] == 3) {
                $category_list = $coursecate->getGoodsCategoryTree(0);
            }
            if (! empty($category_list)) {
                foreach ($category_list as $k => $v) {
                    if ($v["category_id"] == $category_id && $category_id !== 0) {
                        unset($category_list[$k]);
                    } else {
                        if (isset($v["child_list"])) {
                            $temp_array = $v["child_list"];
                            foreach ($temp_array as $t => $m) {
                                if ($m["category_id"] == $category_id && $category_id !== 0) {
                                    unset($temp_array[$t]);
                                }
                            }
                            sort($temp_array);
                            $category_list[$k]["child_list"] = $temp_array;
                        }
                    }
                }
                sort($category_list);
            }
            $this->assign('category_list', $category_list);
            $goods = new CourseService();
            $goodsAttributeList = $goods->getAttributeServiceList(1, 0);
            $this->assign("goodsAttributeList", $goodsAttributeList['data']);
            
            $template_url = array();
            $config = new ConfigService();
            $pc_template = $config->getUsePCTemplate($this->instance_id);
            $wap_template = $config ->getUseWapTemplate($this->instance_id);
            $template_url["pc_template_url"] = "template/shop/".$pc_template['value'].'/Course/';
            $template_url["wap_template_url"] = "template/wap/".$wap_template['value'].'/Course/';
            $this->assign("template_url", $template_url);
            
            return view($this->style . "course/updateCourseMechanism");
        }
    }

    /**
     * 删除合作机构
     */
    public function deleteCourseMechanism()
    {
        $coursecate = new CourseMechanism();
        $mechanism_id = request()->post('mechanism_id', '');
        $res = $coursecate->deleteGoodsCategory($mechanism_id);
        if ($res > 0) {
            $course_mechanism_quick = request()->post("course_mechanism_quick", '');
            if ($course_mechanism_quick != '') {
                setcookie("course_mechanism_quick", $goods_category_quick, time() + 3600 * 24);
            }
        }
        return AjaxReturn($res);
    }

}