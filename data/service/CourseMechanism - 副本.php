<?php
namespace data\service;

/**
 * 商品分类服务层
 */
use data\service\BaseService as BaseService;
use data\model\NsCourseMechanismModel as NsCourseMechanismModel;
use data\api\ICourseMechanism as ICourseMechanism;
use data\model\NsGoodsModel;
use data\model\NsGoodsBrandModel;
use data\model\NsGoodsCategoryBlockModel;
use data\model\NsGoodsViewModel;
use think\Cache;
use data\model\NsGoodsAttributeModel;
use data\model\NsAttributeModel;

class CourseMechanism extends BaseService implements ICourseMechanism
{

    private $course_class;

    function __construct()
    {
        parent::__construct();
        $this->course_Mechanism = new NsCourseMechanismModel();
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoodsCategory::getGoodsCategoryList()
     */
    public function getGoodsCategoryList($page_index = 1, $page_size = 0, $condition = '', $order = '', $field = '*')
    {
          $data = array(
            $page_index,
            $page_size,
            $condition,
            $order,
            $field
        );
        $data = json_encode($data);
        $cache = Cache::tag("niu_course_mechanism")->get("getCourseMechanismList" . $data);
        if(empty($cache))
        {
            $list = $this->course_Mechanism->pageQuery($page_index, $page_size, $condition, $order, $field);
            Cache::tag("niu_course_mechanism")->set("getCourseMechanismList" . $data, $list);
            return $list;
        }else{
            return $cache;
        }
       
        // TODO Auto-generated method stub
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoodsCategory::getGoodsCategoryListByParentId()
     */
    public function getGoodsCategoryListByParentId($pid)
    {
        $cache = Cache::tag("niu_course_mechanism")->get("getCourseMechanismListByParentId" . $pid);
        if (empty($cache)) {
            $list = $this->getGoodsCategoryList(1, 0, 'pid=' . $pid, 'pid,sort');
            if (! empty($list)) {
                for ($i = 0; $i < count($list['data']); $i ++) {
                    $parent_id = $list['data'][$i]["mechanism_id"];
                    $child_list = $this->getGoodsCategoryList(1, 1, 'pid=' . $parent_id, 'pid,sort');
                    if (! empty($child_list) && $child_list['total_count'] > 0) {
                        $list['data'][$i]["is_parent"] = 1;
                    } else {
                        $list['data'][$i]["is_parent"] = 0;
                    }
                }
            }
            Cache::tag("niu_course_mechanism")->set("getCourseMechanismListByParentId" . $pid, $list['data']);
            return $list['data'];
        } else {
            return $cache;
        }
        
        // TODO Auto-generated method stub
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoodsCategory::addOrEditGoodsCategory()
     */
    public function addOrEditGoodsCategory($mechanism_id, $mechanism_name, $is_visible,  $description = '', $sort = 0, $mechanism_pic, $pc_custom_template, $wap_custom_template)
    {
        Cache::tag('niu_course_class')->clear();
        $data = array(
            'mechanism_name' => $mechanism_name,
            'is_visible' => $is_visible,
            'description' => $description,
            'sort' => $sort,
            'mechanism_pic' => $mechanism_pic,
            'pc_custom_template' => $pc_custom_template, 
            'wap_custom_template' => $wap_custom_template
        );
        if ($mechanism_id == 0) {
            $result = $this->course_Mechanism->save($data);
            if ($result) {
                // 创建商品分类楼层
                /*$this->addGoodsCategoryBlock($this->course_Mechanism->mechanism_id);
                $data['mechanism_id'] = $this->course_Mechanism->mechanism_id;
                $this->addUserLog($this->uid, 1, '课程', '添加课程分类', '添加课程分类:'.$category_name);
                hook("courseMechanismSaveSuccess", $data);*/
                $res = $this->course_Mechanism->mechanism_id;
            } else {
                $res = $this->course_Mechanism->getError();
            }
        } else {
            $res = $this->course_Mechanism->save($data, [
                'mechanism_id' => $mechanism_id
            ]);
            if ($res !== false) {
                //$this->addGoodsCategoryBlock($mechanism_id);
                $this->addUserLog($this->uid, 1, '课程', '修改课程分类', '修改课程分类:'.$category_name);
                return $res;
            } else {
                $res = $this->course_Mechanism->getError();
            }
        }
        return $res;
        // TODO Auto-generated method stub
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoodsCategory::deleteGoodsCategory()
     */
    public function deleteGoodsCategory($mechanism_id)
    {
        Cache::tag('niu_course_mechanism')->clear();
        $sub_list = $this->getGoodsCategoryListByParentId($mechanism_id);
        if (! empty($sub_list)) {
            $res = SYSTEM_DELETE_FAIL;
        } else {
            $res = $this->course_Mechanism->destroy($mechanism_id);
            // 删除分类商品楼层
            //$this->deleteGoodsCategoryBlock($category_id);
            hook("courseMechanismDeleteSuccess", $mechanism_id);
        }
        return $res;
        // TODO Auto-generated method stub
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoodsCategory::getTreeCategoryList()
     */
    public function getTreeCategoryList($show_deep, $condition)
    {
        // TODO Auto-generated method stub
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoodsCategory::getKeyWords()
     */
    public function getKeyWords($category_id)
    {
        $res = $this->course_Mechanism->getInfo([
            'category_id' => $category_id
        ], 'keywords');
        return $res;
        // TODO Auto-generated method stub
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoodsCategory::getLevel()
     */
    public function getLevel($category_id)
    {
        $res = $this->course_Mechanism->getInfo([
            'category_id' => $category_id
        ], 'level');
        return $res;
        // TODO Auto-generated method stub
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoodsCategory::getName()
     */
    public function getName($category_id)
    {
        $res = $this->course_Mechanism->getInfo([
            'category_id' => $category_id
        ], 'category_name');
        return $res;
        // TODO Auto-generated method stub
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoodsCategory::getGoodsCategoryDetail()
     */
    public function getGoodsCategoryDetail($category_id)
    {
        $res = $this->course_Mechanism->get($category_id);
        return $res;
        // TODO Auto-generated method stub
    }

    public function getGoodsCategoryTree($pid)
    {
        // 暂时 获取 两级
        $cache = Cache::tag("niu_course_mechanism")->get("getCourseMechanismTree" . $pid);
        if (empty($cache)) {
            $list = array();
            $one_list = $this->getGoodsCategoryListByParentId($pid);
            foreach ($one_list as $k1 => $v1) {
                $two_list = array();
                $two_list = $this->getGoodsCategoryListByParentId($v1['mechanism_id']);
                $one_list[$k1]['child_list'] = $two_list;
            }
            $list = $one_list;
            Cache::tag("niu_course_mechanism")->set("getGoodsCategoryTree" . $pid, $list);
            return $list;
        } else {
            return $cache;
        }
    }

    /**
     * 修改商品分类 单个字段
     *
     * @param unknown $category_id            
     * @param unknown $order            
     */
    public function ModifyGoodsCategoryField($category_id, $field_name, $field_value)
    {
        Cache::tag('niu_course_class')->clear();
        $res = $this->course_Mechanism->ModifyTableField('category_id', $category_id, $field_name, $field_value);
        
        $this->addGoodsCategoryBlock($category_id);
        return $res;
    }

    /**
     * 获取商品分类下的商品品牌(non-PHPdoc)
     *
     * @see \data\api\IGoodsCategory::getGoodsCategoryBrands()
     */
    public function getGoodsCategoryBrands($category_id)
    {
        $brand_list = Cache::tag("course_class_brands")->get("get_course_class_brands" . $category_id);
        if (empty($brand_list)) {
            $goods_model = new NsGoodsModel();
            $condition = array(
                'category_id | category_id_1 | category_id_2 | category_id_3' => $category_id
            );
            $brand_id_array = $goods_model->getQuery($condition, 'brand_id', '');
            $array = array();
            if (! empty($brand_id_array)) {
                foreach ($brand_id_array as $k => $v) {
                    $array[] = $v['brand_id'];
                }
            }
            if (! empty($array)) {
                $goods_brand = new NsGoodsBrandModel();
                $condition = array(
                    'brand_id' => array(
                        'in',
                        $array
                    )
                );
                $brand_list = $goods_brand->getQuery($condition, 'brand_id,brand_name', 'brand_initial asc');
                Cache::tag("course_class_brands")->set("get_course_class_brands" . $category_id, $brand_list);
                return $brand_list;
            } else {
                return [];
            }
        } else {
            return $brand_list;
        }
    }
    
    /**
     * 根据商品分类关联的商品类型获取品牌
     * @param unknown $category_id
     */
    public function getGoodsBrandsByGoodsAttr($category_id){
        $brand_list = Cache::tag("course_class_brands")->get("get_course_class_brands" . $category_id);
        if (empty($brand_list)) {
            $course_mechanism = new NsCourseMechanismModel();
            $course_class_info = $course_class -> getInfo(["category_id"=>$category_id], "attr_id");
            if($course_class_info['attr_id'] > 0){
                $goods_attr = new NsAttributeModel();
                $goods_attr_info = $goods_attr->getInfo(["attr_id"=>$course_class_info['attr_id']],"*");
                if(!empty($goods_attr_info["brand_id_array"])){
                    $goods_brand = new NsGoodsBrandModel();
                    $condition = array(
                        'brand_id' => array(
                            'in',
                            $goods_attr_info["brand_id_array"]
                        )
                    );
                    $brand_list = $goods_brand->getQuery($condition, 'brand_id,brand_name,brand_pic', 'brand_initial asc');
                    Cache::tag("course_class_brands")->set("get_course_class_brands" . $category_id, $brand_list);
                }else{
                    return array();
                }
            }else{
                return array();
            }
        }else{
            return $brand_list;
        }
    }
    
    /**
     * 获取商品分类下的价格区间(non-PHPdoc)
     *
     * @see \data\api\IGoodsCategory::getGoodsCategoryPriceGrades()
     */
    public function getGoodsCategoryPriceGrades($category_id)
    {
        $goods_model = new NsGoodsModel();
        $max_price = $goods_model->where([
            'category_id' => $category_id
        ])->max('price');
        $min_price = $goods_model->where([
            'category_id' => $category_id
        ])->min('price');
        $price_grade = 1;
        for ($i = 1; $i <= log10($max_price); $i ++) {
            $price_grade *= 10;
        }
        // 跨度
        $dx = (ceil(log10(($max_price - $min_price) / 3)) - 1) * $price_grade;
        if ($dx <= 0) {
            $dx = $price_grade;
        }
        $array = array();
        $j = 0;
        while ($j <= $max_price) {
            $array[] = array(
                $j,
                $j + $dx - 1
            );
            $j = $j + $dx;
        }
        
        return $array;
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoodsCategory::getGoodsCategorySaleNum()
     */
    public function getGoodsCategorySaleNum()
    {
        // TODO Auto-generated method stub
        $goods_course_class = new NsCourseClassModel();
        $goods_course_class_all = $goods_course_class->all();
        foreach ($goods_course_class_all as $k => $v) {
            $sale_num = 0;
            $goods_model = new NsGoodsModel();
            $goods_sale_num = $goods_model->where(array(
                "category_id_1|category_id_2|category_id_3" => $v["category_id"]
            ))->sum("sales");
            $goods_course_class_all[$k]["sale_num"] = $goods_sale_num;
        }
        return $goods_course_class_all;
    }

    /**
     * 获取商品分类的子项列
     *
     * @param unknown $category_id            
     * @return string|unknown
     */
    public function getCategoryTreeList($category_id)
    {
        $cache = Cache::tag("niu_course_class")->get("getCategoryTreeList" . $category_id);
        if (empty($cache)) {
            $cache_category_tree_list = '';
            
            $goods_course_class = new NsCourseClassModel();
            $level = $goods_course_class->getInfo([
                'category_id' => $category_id
            ], 'level');
            if (! empty($level)) {
                $category_list = array();
                if ($level['level'] == 1) {
                    $child_list = $goods_course_class->getQuery([
                        'pid' => $category_id
                    ], 'category_id,pid', '');
                    $category_list = $child_list;
                    if (! empty($child_list)) {
                        foreach ($child_list as $k => $v) {
                            $grandchild_list = $goods_course_class->getQuery([
                                'pid' => $v['category_id']
                            ], 'category_id', '');
                            if (! empty($grandchild_list)) {
                                $category_list = array_merge($category_list, $grandchild_list);
                            }
                        }
                    }
                } elseif ($level['level'] == 2) {
                    $child_list = $goods_course_class->getQuery([
                        'pid' => $category_id
                    ], 'category_id,pid', '');
                    $category_list = $child_list;
                }
                $array = array();
                if (! empty($category_list)) {
                    
                    foreach ($category_list as $k => $v) {
                        $array[] = $v['category_id'];
                    }
                }
                if (! empty($array)) {
                    $id_list = implode(',', $array);
                    $cache_category_tree_list = $id_list . ',' . $category_id;
                } else {
                    $cache_category_tree_list = $category_id;
                }
            } else {
                $cache_category_tree_list = $category_id;
            }
            Cache::tag("niu_course_class")->set("getCategoryTreeList" . $category_id, $cache_category_tree_list);
            return $cache_category_tree_list;
        } else {
            return $cache;
        }
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoodsCategory::getCategoryParentQuery()
     */
    public function getCategoryParentQuery($category_id)
    {
        $cache = Cache::tag("niu_course_class")->get("getCategoryParentQuery" . $category_id);
        if (empty($cache)) {
            $parent_category_info = array();
            $grandparent_category_info = array();
            $category_name = "";
            $parent_category_name = "";
            $grandparent_category_name = "";
            $goods_course_class = new NsCourseClassModel();
            $category_info = $goods_course_class->getInfo([
                "category_id" => $category_id
            ], "category_id,category_name,pid");
            $level = $category_info["level"];
            $nav_name = array();
            if (! empty($category_info)) {
                $category_name = $category_info["category_name"];
                if ($level == 3) {
                    $parent_category_info = $goods_course_class->getInfo([
                        "category_id" => $category_info["pid"]
                    ], "category_id,category_name,pid");
                    
                    if (! empty($parent_category_info)) {
                        $grandparent_category_info = $goods_course_class->getInfo([
                            "category_id" => $parent_category_info["pid"]
                        ], "category_id,category_name,pid");
                    }
                    $nav_name = array(
                        $grandparent_category_info,
                        $parent_category_info,
                        $category_info
                    );
                } else 
                    if ($level == 2) {
                        $parent_category_info = $goods_course_class->getInfo([
                            "category_id" => $category_info["pid"]
                        ], "category_id,category_name,pid");
                        $nav_name = array(
                            $parent_category_info,
                            $category_info
                        );
                    } else {
                        $nav_name = array(
                            $category_info
                        );
                    }
            }
            Cache::tag("niu_course_class")->set("getCategoryParentQuery" . $category_id, $nav_name);
            return $nav_name;
        } else {
            return $cache;
        }
    }

    /**
     * 得到上级的分类组合
     *
     * @param unknown $category_id            
     */
    public function getParentCategory($category_id)
    {
        $cache = Cache::tag("niu_course_class")->get("getParentCategory" . $category_id);
        if (empty($cache)) {
            $category_ids = $category_id;
            $category_names = "";
            $pid = 0;
            $course_class = new NsCourseClassModel();
            $category_obj = $course_class->get($category_id);
            if (! empty($category_obj)) {
                $category_names = $category_obj["category_name"];
                $pid = $category_obj["pid"];
                while ($pid != 0) {
                    $course_class = new NsCourseClassModel();
                    $category_obj = $course_class->get($pid);
                    if (! empty($category_obj)) {
                        $category_ids = $category_ids . "," . $pid;
                        $category_name = $category_obj["category_name"];
                        $category_names = $category_names . "," . $category_name;
                        $pid = $category_obj["pid"];
                    } else {
                        $pid = 0;
                    }
                }
            }
            $category_id_str = explode(",", $category_ids);
            $category_names_str = explode(",", $category_names);
            $category_result_ids = "";
            $category_result_names = "";
            for ($i = count($category_id_str); $i >= 0; $i --) {
                if ($category_result_ids == "") {
                    $category_result_ids = $category_id_str[$i];
                } else {
                    $category_result_ids = $category_result_ids . "," . $category_id_str[$i];
                }
            }
            for ($i = count($category_names_str); $i >= 0; $i --) {
                if ($category_result_names == "") {
                    $category_result_names = $category_names_str[$i];
                } else {
                    $category_result_names = $category_result_names . ":" . $category_names_str[$i];
                }
            }
            $parent_Category = array(
                "category_ids" => $category_result_ids,
                "category_names" => $category_result_names
            );
            Cache::tag("niu_course_class")->set("getParentCategory" . $category_id, $parent_Category);
            return $parent_Category;
        } else {
            return $cache;
        }
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoods::getGoodsCategoryBlock()
     */
    public function getGoodsCategoryBlock($shop_id)
    {
        // TODO Auto-generated method stub
        $cache = Cache::tag("niu_course_class_block")->get("getGoodsCategoryBlock" . $shop_id);
        if (empty($cache)) {
            $course_class_block = new NsGoodsCategoryBlockModel();
            $course_class_block_query = $course_class_block->getQuery([
                "shop_id" => $shop_id
            ], "*", "sort asc");
            Cache::tag("niu_course_class_block")->set("getGoodsCategoryBlock" . $shop_id, $course_class_block_query);
            return $course_class_block_query;
        } else {
            return $cache;
        }
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoods::setGoodsCategoryBlock()
     */
    public function setGoodsCategoryBlock($id, $shop_id, $data)
    {
        Cache::tag("niu_course_class_block")->clear();
        // TODO Auto-generated method stub
        $course_class_block = new NsGoodsCategoryBlockModel();
        $result = $course_class_block->save($data, [
            "shop_id" => $shop_id,
            "id" => $id
        ]);
        return $result;
    }

    public function test()
    {}
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoods::addGoodsCategoryBlock()
     */
    public function addGoodsCategoryBlock($mechanism_id, $shop_id = 0)
    {
        Cache::tag("niu_course_mechanism_id_block")->clear();
        // TODO Auto-generated method stub
        $course_mechanism = new NsCourseMechanismModel();
        $course_class_info = $course_mechanism->getInfo([
            "mechanism_id_id" => $mechanism_id_id
        ], "*");
        if (! empty($course_class_info)) {
            
            $course_class_block = new NsGoodsCategoryBlockModel();
            $course_class_block_info = $course_class_block->getInfo([
                "category_id" => $category_id
            ], "*");
            if (empty($course_class_block_info) && $course_class_info["pid"] == 0) {
                $data = array(
                    "shop_id" => $shop_id,
                    "mechanism_id" => $mechanism_id,
                    "mechanism_name" => $course_class_info["mechanism_name"],
                    "mechanism_alias" => $course_class_info["mechanism_name"],
                    "create_time" => time(),
                    "color" => "#FFFFFF",
                    "short_name" => mb_substr($course_class_info["category_name"], 0, 4, 'utf-8')
                );
                $result = $course_class_block->save($data);
                return $result;
            } else {
                if ($course_class_info["pid"] > 0) {
                    $this->deleteGoodsCategoryBlock($category_id);
                    return 1;
                } else {
                    $data = array(
                        "category_name" => $course_class_info["category_name"],
                        "category_alias" => $course_class_info["category_name"],
                        "modify_time" => time(),
                        "short_name" => mb_substr($course_class_info["category_name"], 0, 4, 'utf-8')
                    );
                    $result = $course_class_block->save($data, [
                        "category_id" => $category_id
                    ]);
                    return $result;
                }
            }
        } else {
            return 0;
        }
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoodsCategory::getGoodsCategoryBlockList()
     */
    public function getGoodsCategoryBlockList($shop_id)
    {
        $cache = Cache::tag("niu_course_class_block")->get("getGoodsCategoryBlockList" . $shop_id);
        if (empty($cache)) {
            $course_class_block = new NsGoodsCategoryBlockModel();
            $goods = new NsGoodsViewModel();
            $goods_brand = new NsGoodsBrandModel();
            $course_class = new NsCourseClassModel();
            $course_class_block_list = $course_class_block->getQuery([
                "shop_id" => $shop_id,
                "is_show" => 1
            ], "*", "sort asc");
            foreach ($course_class_block_list as $k => $v) {
                $order = "ng.sort asc,ng.create_time desc";
                switch ($v["goods_sort_type"]) {
                    case 0:
                        $order = "ng.sort asc,ng.create_time desc";
                        break;
                    case 1:
                        $order = "ng.create_time desc";
                        break;
                    case 2:
                        $order = "ng.sales desc";
                        break;
                    case 3:
                        $order = "ng.sort asc";
                        break;
                    case 4:
                        $order = "ng.clicks desc";
                        break;
                }
                $goods_list = $goods->getGoodsViewList(1, 10, [
                    "ng.category_id_1" => $v["category_id"],
                    "ng.state" => 1
                ], $order);
                $course_class_block_list[$k]["goods_list"] = $goods_list["data"];
                // 是否显示品牌
                if ($v["is_show_brand"] == 1) {
                    $goods_brnd_list = $goods_brand->pageQuery(1, 8, [
                        "category_id_1" => $v["category_id"]
                    ], "sort asc", "*");
                    $course_class_block_list[$k]["brand_list"] = $goods_brnd_list["data"];
                }
                // 是否显示二级分类
                if ($v["is_show_lower_category"]) {
                    $second_category_list = $course_class->getQuery([
                        "pid" => $v["category_id"]
                    ], "*", "sort asc");
                    if (! empty($second_category_list)) {
                        foreach ($second_category_list as $t => $m) {
                            $goods_list = $goods->getGoodsViewList(1, 10, [
                                "ng.category_id_2" => $m["category_id"],
                                "ng.state" => 1
                            ], $order);
                            $second_category_list[$t]["goods_list"] = $goods_list["data"];
                        }
                        $course_class_block_list[$k]["child_category"] = $second_category_list;
                    }
                }
            }
            Cache::tag("niu_course_class_block")->set("getGoodsCategoryBlockList" . $shop_id, $course_class_block_list, 1800); // 缓存半小时
            return $course_class_block_list;
        } else {
            return $cache;
        }
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoodsCategory::getGoodsCategoryBlockQuery()
     */
    public function getGoodsCategoryBlockQuery($shop_id, $show_num = 4)
    {
        $cache = Cache::tag("niu_course_class_block")->get("getGoodsCategoryBlockQuery" . $shop_id . '_' . $show_num);
        if (empty($cache)) {
            $course_class_block = new NsGoodsCategoryBlockModel();
            $goods = new Goods();
            $course_class_block_list = $course_class_block->getQuery([
                "shop_id" => $shop_id,
                "is_show" => 1
            ], "color,category_alias,category_id,goods_sort_type", "sort asc");
            foreach ($course_class_block_list as $k => $v) {
                $order = "ng.sort asc,ng.create_time desc";
                switch ($v["goods_sort_type"]) {
                    case 0:
                        $order = "ng.sort asc,ng.create_time desc";
                        break;
                    case 1:
                        $order = "ng.create_time desc";
                        break;
                    case 2:
                        $order = "ng.sales desc";
                        break;
                    case 3:
                        $order = "ng.sort asc";
                        break;
                    case 4:
                        $order = "ng.clicks desc";
                        break;
                }
                $condition = [
                    "ng.category_id_1" => $v["category_id"],
                    "ng.state" => 1
                ];
                $goods_list = $goods->getGoodsQueryLimit($condition, "ng.sales,ng.goods_kind,ng.goods_id,ng_sap.pic_cover_small,ng.goods_name,ng.promotion_price,ng.state,ng.shipping_fee,ng.group_id_array,ng.point_exchange_type,ng.point_exchange", $show_num, $order);
                
                foreach ($goods_list as $key => $value){
                    $goods = new Goods();
                    $goods_list[$key]["group_list"] = $goods -> getGoodsTabByGoodsGroupId($value['group_id_array']);
                }
                
                $course_class_block_list[$k]["goods_list"] = $goods_list;
            }
            
            Cache::tag("niu_course_class_block")->set("getGoodsCategoryBlockQuery" . $shop_id . '_' . $show_num, $course_class_block_list, 1800); // 缓存半小时
            return $course_class_block_list;
        } else {
            return $cache;
        }
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoodsCategory::deletetGoodsCategoryBlock()
     */
    public function deleteGoodsCategoryBlock($category_id)
    {
        Cache::tag("niu_course_class_block")->clear();
        // TODO Auto-generated method stub
        $course_class_block = new NsGoodsCategoryBlockModel();
        $retval = $course_class_block->destroy([
            "category_id" => $category_id
        ]);
        return $retval;
    }

    /**
     * 品牌列表
     *
     * @param int $page_index            
     * @param int $page_size            
     * @param string $condition            
     * @param string $order            
     * @return array
     */
    public function getGoodsBrandList($page_index = 1, $page_size = 0, $condition = '', $order = "sort asc", $field = '*')
    {
        $data = array(
            $page_index,
            $page_size,
            $condition,
            $order,
            $field
        );
        $data = json_encode($data);
        $cache = Cache::tag("niu_goods_brand")->get("getGoodsBrandList" . $data);
        if (empty($cache)) {
            $goods_brand = new NsGoodsBrandModel();
            $goods_brand_list = $goods_brand->pageQuery($page_index, $page_size, $condition, $order, $field);
            Cache::tag("niu_goods_brand")->set("getGoodsBrandList" . $data, $goods_brand_list);
            return $goods_brand_list;
        } else {
            return $cache;
        }
    }

    /**
     * 获取商品分类列表
     * 该方法被PC端首页和手机端商品分类界面调用
     * 优化方式：去除没有用到的查询字段
     */
    public function getCategoryTreeUseInShopIndex()
    {
        $cache = Cache::tag("niu_course_mechanism")->get("getMechanismTreeUseInShopIndex");
        if (empty($cache)) {
            $course_mechanism_model = new NsCourseMechanismModel();
            
            $course_class_one = $course_mechanism_model->getQuery([
                'level' => 1,
                'is_visible' => 1
            ], 'category_id, category_name,short_name,pid,category_pic', 'sort');
            if (! empty($course_class_one)) {
                foreach ($course_class_one as $k_cat_one => $v_cat_one) {
                    $course_class_two_list = $course_mechanism_model->getQuery([
                        'level' => 2,
                        'is_visible' => 1,
                        'pid' => $v_cat_one['category_id']
                    ], 'category_id,category_name,short_name,pid,category_pic', 'sort');
                    $v_cat_one['count'] = count($course_class_two_list);
                    if (! empty($course_class_two_list)) {
                        foreach ($course_class_two_list as $k_cat_two => $v_cat_two) {
                            $cat_three_list = $course_mechanism_model->getQuery([
                                'level' => 3,
                                'is_visible' => 1,
                                'pid' => $v_cat_two['category_id']
                            ], 'category_id,category_name,short_name,pid,category_pic', 'sort');
                            
                            $v_cat_two['count'] = count($cat_three_list);
                            $v_cat_two['child_list'] = $cat_three_list;
                        }
                    }
                    $v_cat_one['child_list'] = $course_class_two_list;
                }
            }
            Cache::tag("niu_course_class")->set("getCategoryTreeUseInShopIndex", $course_class_one);
            return $course_class_one;
        } else {
            return $cache;
        }
    }

    /**
     * 获取商品二级分类
     */
    public function getGoodsSecondCategoryTree()
    {
        $course_mechanism_model = new NsCourseMechanismModel();
        
        $course_class_two_list = $course_mechanism_model->getQuery([
            'level' => 2,
            'is_visible' => 1
        ], 'category_id, category_name,short_name,pid,category_pic', 'sort');
        if (! empty($course_class_two_list)) {
            foreach ($course_class_two_list as $k_cat_two => $v_cat_two) {
                $cat_three_list = $course_mechanism_model->getQuery([
                    'level' => 3,
                    'is_visible' => 1,
                    'pid' => $v_cat_two['category_id']
                ], 'category_id,category_name,short_name,pid,category_pic', 'sort');
                
                $v_cat_two['count'] = count($cat_three_list);
                $v_cat_two['child_list'] = $cat_three_list;
            }
        }
        return $course_class_two_list;
    }

    /**
     * 获取商品分类列表应用后台
     */
    public function getCategoryTreeUseInAdmin()
    {
        $cache = Cache::tag("niu_course_mechanism")->get("getmechanismTreeUseInAdmin");
        if (empty($cache)) {
            $course_mechanism_model = new NsCourseMechanismModel();
            
            $course_class_one = $course_mechanism_model->getQuery([
                
            ], 'mechanism_id, mechanism_name,mechanism_pic,sort,is_visible,level', 'sort');
            
            Cache::tag("niu_course_mechanism")->set("getmechanismTreeUseInAdmin", $course_class_one);
            return $course_class_one;
        } else {
            return $cache;
        }
    }
    
    /**
     * 批量添加商品分类
     * @param unknown $content
     */
    public function batchAddgoodscategory($content){
        $this->course_Mechanism ->startTrans();
        
        $category_arr = json_decode($content, true);
        if(count($category_arr) > 0){
            try {
                foreach ($category_arr as $category){
                    $category_info_arr = json_decode($category, true);
                    $data = array(
                        'category_name' => $category_info_arr['categoryName'],
                        'short_name' => $category_info_arr['categoryShortName'],
                        'pid' => $category_info_arr['pid'],
                        'level' => $category_info_arr['level'],
                        'is_visible' => 1,
                        'keywords' => '',
                        'description' => '',
                        'sort' => $category_info_arr['sort'],
                        'category_pic' => '',
                        'attr_id' => 0,
                        'attr_name' => '',
                        'pc_custom_template' => '',
                        'wap_custom_template' => ''
                    );
                    $this->course_Mechanism = new NsCourseMechanismModel();
                    $result = $this->course_Mechanism->save($data);
                    if ($result) {
                        // 创建商品分类楼层
                        $this->addGoodsCategoryBlock($this->course_Mechanism->category_id);
                        $data['category_id'] = $this->course_Mechanism->category_id;
                        $this->addUserLog($this->uid, 1, '商品', '添加商品分类', '添加商品分类:'.$category_name);
                        hook("courseClassSaveSuccess", $data);
                        $res = $this->course_Mechanism->category_id;
                    } else {
                        $this->course_Mechanism->rollback();
                        return $result = array(
                            "code" => 0,
                            "message" => $this->course_Mechanism->getError()
                        );
                    }
                }
                $this->course_Mechanism->commit();
                return $result = array(
                    "code" => 1,
                    "message" => "添加成功"
                );
            } catch (\Exception $e) {
                $this->course_Mechanism->rollback();
                return $result = array(
                    "code" => 0,
                    "message" => $e->getMessage()
                );
            }
        }else{
            return $result = array(
                "code" => 0,
                "message" => "操作失败"
            );
        }
    }
}

?>