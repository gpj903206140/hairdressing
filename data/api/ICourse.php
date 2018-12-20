<?php
namespace data\api;

/**
 * 课程接口
 */
interface ICourse
{
    /**
     * 添加评论(non-PHPdoc)
     *
     * @param number $uid                  
     * @param string $nick_name
     * @param number $article_id              
     * @param string $content
     * @param number $type  
     * @param number $datatype  
     */
    public function addComment($uid, $nick_name, $article_id, $content,$type,$datatype,$is_show);
    /**
     * 获取指定条件下课程列表
     *
     * @param number $page_index            
     * @param number $page_size            
     * @param string $condition            
     * @param string $order            
     */
    function getGoodsList($page_index = 1, $page_size = 0, $condition = '', $order = '');

    /**
     * 获取某种条件下课程数量
     *
     * @param unknown $condition            
     */
    function getGoodsCount($condition);

    /**
     * 添加或者修改课程(整体)
     * goods_id int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '课程id(SKU)',
     * goods_name varchar(50) NOT NULL COMMENT '课程名称',
     * shop_id int(10) UNSIGNED NOT NULL COMMENT '店铺id',
     * category_id int(10) UNSIGNED NOT NULL COMMENT '课程分类id',
     * category_id_1 int(10) UNSIGNED NOT NULL COMMENT '一级分类id',
     * category_id_2 int(10) UNSIGNED NOT NULL COMMENT '二级分类id',
     * category_id_3 int(10) UNSIGNED NOT NULL COMMENT '三级分类id',
     * brand_id int(10) UNSIGNED NOT NULL COMMENT '品牌id',
     * group_id_array varchar(255) NOT NULL DEFAULT '' COMMENT '店铺分类id 首尾用,隔开',
     * promotion_type tinyint(3) NOT NULL DEFAULT 0 COMMENT '促销类型 0无促销，1团购，2限时折扣',
     * goods_type tinyint(4) NOT NULL DEFAULT 1 COMMENT '实物或虚拟课程标志 1实物课程 0 虚拟课程 2 F码课程',
     * market_price decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '市场价',
     * price decimal(19, 2) NOT NULL DEFAULT 0.00 COMMENT '课程原价格',
     * promotion_price decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '课程促销价格',
     * cost_price decimal(19, 2) NOT NULL DEFAULT 0.00 COMMENT '成本价',
     * point_exchange_type enum ('0', '1', '2') NOT NULL COMMENT '积分兑换类型 0 非积分兑换 1 只能积分兑换 2 积分和课程价格组合购买',
     * point_exchange int(11) NOT NULL DEFAULT 0 COMMENT '积分兑换',
     * give_point int(11) NOT NULL DEFAULT 0 COMMENT '购买课程赠送积分',
     * is_member_discount bit(1) NOT NULL DEFAULT b'0' COMMENT '参与会员折扣',
     * shipping_fee decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '运费 0为免运费',
     * shipping_fee_id int(11) NOT NULL DEFAULT 0 COMMENT '售卖区域id 物流模板id ns_order_shipping_fee 表id',
     * stock int(10) NOT NULL DEFAULT 0 COMMENT '课程库存',
     * max_buy int(11) NOT NULL DEFAULT 0 COMMENT '限购 0 不限购',
     * min_stock_alarm int(11) NOT NULL DEFAULT 0 COMMENT '库存预警值',
     * clicks int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '课程点击数量',
     * sales int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '销售数量',
     * collects int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '收藏数量',
     * star tinyint(3) UNSIGNED NOT NULL DEFAULT 5 COMMENT '好评星级',
     * evaluates int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '评价数',
     * shares int(11) NOT NULL DEFAULT 0 COMMENT '分享数',
     * province_id int(10) UNSIGNED NOT NULL COMMENT '一级地区id',
     * city_id int(10) UNSIGNED NOT NULL COMMENT '二级地区id',
     * picture int(11) NOT NULL COMMENT '课程主图',
     * keywords varchar(255) NOT NULL DEFAULT '' COMMENT '课程关键词',
     * introduction varchar(255) NOT NULL DEFAULT '' COMMENT '课程简介',
     * description text NOT NULL COMMENT '课程详情',
     * QRcode varchar(255) NOT NULL DEFAULT '' COMMENT '课程二维码',
     * code varchar(50) NOT NULL COMMENT '商家编号',
     * is_stock_visible bit(1) NOT NULL DEFAULT b'0' COMMENT '页面不显示库存',
     * is_hot bit(1) NOT NULL DEFAULT b'0' COMMENT '是否热销课程',
     * is_recommend bit(1) NOT NULL DEFAULT b'0' COMMENT '是否推荐',
     * is_new bit(1) NOT NULL DEFAULT b'0' COMMENT '是否新品',
     * `is_pre_sale` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否预售',
     * is_bill bit(1) NOT NULL DEFAULT b'0' COMMENT '是否开具增值税发票 1是，0否',
     * state tinyint(3) NOT NULL DEFAULT 1 COMMENT '课程状态 0下架，1正常，10违规（禁售）',
     * sale_date datetime NOT NULL COMMENT '上下架时间',
     * create_time datetime NOT NULL COMMENT '课程添加时间',
     * update_time datetime NOT NULL COMMENT '课程编辑时间',
     * sort int(11) NOT NULL DEFAULT 0 COMMENT '排序',
     * PRIMARY KEY (goods_id)
     * $imageArray, //格式为 imageId,is_mainimage,orders;imageId,is_mainimage,orders
     * $skuArray); //#课程sku编码数组 字段之间¦分隔, 记录之间§分隔,
     * #格式skuId¦price¦stock¦pvs¦code¦barcode§skuId¦price¦stock¦pvs¦code¦barcode
     * #pvs格式 propId:valueId;propId:valueId
     *
     * @param unknown $data(数据待定)            
     */
    // function addOrEditGoods($goods_id, $goods_name, $shopid, $category_id, $category_id_1, $category_id_2, $brand_id, $group_id_array, $goods_type, $market_price, $price, $cost_price, $point_exchange_type, $point_exchange, $give_point, $is_member_discount, $shipping_fee, $shipping_fee_id, $stock, $max_buy, $min_stock_alarm, $clicks, $sales, $collects, $star, $evaluates, $shares, $province_id, $city_id, $picture, $keywords, $introduction, $description, $QRcode, $code, $is_stock_visible, $is_hot, $is_recommend, $is_new, $state, $sort, $image_array, $sku_array, $state, $sku_img_array);
    /**
     * 二维码路径进库
     *
     * @param unknown $goodsId            
     * @param unknown $url            
     */
    function goods_QRcode_make($goodsId, $url);

    /**
     * 获取课程的sku信息
     *
     * @param unknown $goods_id            
     */
    function getGoodsSku($goods_id);

    /**
     * 查询sku多图数据
     *
     * @param unknown $goods_id            
     */
    function getGoodsSkuPicture($goods_id);

    /**
     * 根据课程id、规格id、规格值id查询
     *
     * @param unknown $goods_id            
     * @param unknown $spec_id            
     * @param unknown $spec_value_id            
     */
    function getGoodsSkuPictureBySpecId($goods_id, $spec_id, $spec_value_id);

    /**
     * 更新课程的sku数据
     *
     * @param unknown $goods_id            
     * @param unknown $sku_list            
     */
    function ModifyGoodsSku($goods_id, $sku_list);

    /**
     * 获取课程的图片信息
     *
     * @param unknown $goods_id            
     */
    function getGoodsImg($goods_id);

    /**
     * 课程下架
     *
     * @param unknown $condition            
     */
    function ModifyGoodsOffline($condition);

    /**
     * 课程上架
     *
     * @param unknown $condition            
     */
    function ModifyGoodsOnline($condition);

    /**
     * 删除课程
     *
     * @param unknown $goods_id            
     */
    function deleteGoods($goods_id);

    /**
     * 删除课程的图片信息
     *
     * @param unknown $goods_id            
     */
    function deleteGoodImages($goods_id);

    /**
     * 获取单条课程的详细信息
     *
     * @param unknown $goods_id            
     */
    function getGoodsDetail($goods_id);

    /**
     * 课程规格列表
     *
     * @param unknown $condition            
     * @param unknown $field            
     */
    function getGoodsAttributeList($condition, $field, $order);

    /**
     * 课程规格值列表
     *
     * @param unknown $condition            
     * @param unknown $field            
     */
    function getGoodsAttributeValueList($condition, $field);

    /**
     * 添加课程规格
     *
     * @param unknown $spec_name            
     * @param unknown $sort            
     * @param unknown $is_visible            
     */
    function addGoodsSpec($spec_name, $sort = 0);

    /**
     * 添加课程规格值
     *
     * @param unknown $spec_id            
     * @param unknown $spec_value            
     * @param unknown $sort            
     */
    function addGoodsSpecValue($spec_id, $spec_value, $sort = 0);

    /**
     * 根据条件查询所需条件
     *
     * @param unknown $condition            
     */
    function getSearchGoodsList($page_index = 1, $page_size = 0, $condition = '', $order = '', $field = '*');

    /**
     * 修改课程分类
     *
     * @param unknown $goods_id            
     * @param unknown $goods_type            
     */
    function ModifyGoodsGroup($goods_id, $goods_type);

    /**
     * 修改课程推荐 （新品 ， 精品 ， 特惠）
     *
     * @param unknown $goods_id            
     * @param unknown $goods_type            
     */
    function ModifyGoodsRecommend($goods_id, $goods_type);

    /**
     * 获取课程可得积分
     *
     * @param unknown $goods_id            
     */
    function getGoodsGivePoint($goods_id);

    /**
     * 通过课程skuid查询goods_id
     *
     * @param unknown $sku_id            
     */
    function getGoodsId($sku_id);

    /**
     * 获取课程的店铺ID
     *
     * @param unknown $goods_id            
     */
    function getGoodsShopid($goods_id);

    /**
     * 获取会员购物车
     *
     * @param unknown $uid            
     */
    function getCart($uid, $shop_id);

    /**
     * 添加购物车
     *
     * @param unknown $uid            
     * @param unknown $shop_id            
     * @param unknown $shop_name            
     * @param unknown $goods_id            
     * @param unknown $goods_name            
     * @param unknown $sku_id            
     * @param unknown $sku_name            
     * @param unknown $price            
     * @param unknown $num            
     * @param unknown $picture            
     * @param unknown $bl_id            
     */
    function addCart($uid, $shop_id, $shop_name, $goods_id, $goods_name, $sku_id, $sku_name, $price, $num, $picture, $bl_id);

    /**
     * 购物车修改数量
     *
     * @param unknown $cart_id            
     * @param unknown $num            
     */
    function cartAdjustNum($cart_id, $num);

    /**
     * 购物车项目删除
     *
     * @param unknown $cart_id_array
     *            多项用，隔开
     */
    function cartDelete($cart_id_array);

    /**
     * 获取分组课程列表
     *
     * @param unknown $goods_group_id            
     * @param number $num            
     */
    function getGroupGoodsList($goods_group_id, $condition = '', $num = 0, $order = '');

    /**
     * 通过购物车项获取列表
     *
     * @param unknown $carts
     *            ','隔开
     */
    function getCartList($carts);

    /**
     * 获取限时折扣的课程
     *
     * @param number $page_index            
     * @param number $page_size            
     * @param unknown $condition            
     * @param string $order            
     */
    function getDiscountGoodsList($page_index = 1, $page_size = 0, $condition = array(), $order = '');

    /**
     * 课程评价信息
     *
     * @param unknown $goods_id            
     */
    function getGoodsEvaluate($goods_id);

    /**
     * 课程评价表
     *
     * @param number $page_index            
     * @param number $page_size            
     * @param unknown $condition            
     * @param string $order            
     * @param unknown $field            
     */
    function getGoodsEvaluateList($page_index = 1, $page_size = 0, $condition = array(), $order = '', $field = '*');

    /**
     * 课程评价信息的数量
     * @evaluate_count总数量 @imgs_count带图的数量 @praise_count好评数量 @center_count中评数量 bad_count差评数量
     *
     * @param unknown $goods_id            
     */
    function getGoodsEvaluateCount($goods_id);

    /**
     * 查询课程兑换所需积分
     *
     * @param unknown $goods_id返回0表示不能兑换            
     */
    function getGoodsPointExchange($goods_id);

    /**
     * 获取单个课程的sku属性
     *
     * @param unknown $goods_id            
     */
    function getGoodsAttribute($goods_id);

    /**
     * 获取课程咨询类型列表
     *
     * @param number $page_index            
     * @param number $page_size            
     * @param string $condition            
     * @param string $order            
     */
    function getConsultTypeList($page_index = 1, $page_size = 0, $condition = '', $order = '');

    /**
     * 添加 课程咨询类型
     *
     * @param unknown $ct_name            
     * @param unknown $ct_introduce            
     * @param unknown $ct_sort            
     */
    function addConsultType($ct_name, $ct_introduce, $ct_sort);

    /**
     * 修改课程咨询类型
     *
     * @param unknown $ct_id            
     * @param unknown $ct_name            
     * @param unknown $ct_introduce            
     * @param unknown $ct_sort            
     */
    function updateConsultType($ct_id, $ct_name, $ct_introduce, $ct_sort);

    /**
     * 删除 课程咨询类型
     *
     * @param unknown $ct_id            
     */
    function deleteConsultType($ct_id);

    /**
     * 获取课程咨询列表
     *
     * @param number $page_index            
     * @param number $page_size            
     * @param string $condition            
     * @param string $order            
     */
    function getConsultList($page_index = 1, $page_size = 0, $condition = '', $order = '');

    /**
     * 获取课程咨询详情
     *
     * @param unknown $ct_id            
     */
    function getConsultDetail($ct_id);

    /**
     * 添加 课程咨询
     *
     * @param unknown $goods_id            
     * @param unknown $goods_name            
     * @param unknown $uid            
     * @param unknown $member_name            
     * @param unknown $shop_id            
     * @param unknown $shop_name            
     * @param unknown $ct_id            
     * @param unknown $consult_content            
     */
    function addConsult($goods_id, $goods_name, $uid, $member_name, $shop_id, $shop_name, $ct_id, $consult_content);

    /**
     * 回复 课程咨询 （店铺后台）
     *
     * @param unknown $consult_id            
     * @param unknown $consult_reply            
     */
    function replyConsult($consult_id, $consult_reply);

    /**
     * 删除 课程咨询（店铺后台）
     *
     * @param unknown $consult_id            
     */
    function deleteConsult($consult_id);

    /**
     * 获取销售钱排行的课程
     *
     * @param unknown $condition            
     */
    function getGoodsRank($condition);

    /**
     * 获取咨询个数
     *
     * @param unknown $condition            
     */
    function getConsultCount($condition);

    /**
     * 获取课程运费模板情况
     *
     * @param unknown $goods_id            
     * @param unknown $province_id            
     * @param unknown $city_id            
     */
    function getGoodsExpressTemplate($goods_id, $province_id, $city_id, $district_id);

    /**
     * 添加课程评价回复
     * $id 评价id
     * $replyContent 回复内容
     * $replyType 回复类型
     */
    function addGoodsEvaluateReply($id, $replyContent, $replyType);

    /**
     * 设置评价显示状态
     */
    function setEvaluateShowStatu($id);

    /**
     * 删除评价
     */
    function deleteEvaluate($id);

    /**
     * 获取 课程规格列表
     *
     * @param number $page_index            
     * @param number $page_size            
     * @param string $condition            
     * @param string $order            
     */
    function getGoodsSpecList($page_index = 1, $page_size = 0, $condition = '', $order = '', $field = '*');

    /**
     * 获取 课程规格详情
     *
     * @param unknown $spec_id            
     */
    function getGoodsSpecDetail($spec_id);

    /**
     * 添加 课程规格
     *
     * @param unknown $shop_id            
     * @param unknown $spec_name            
     * @param unknown $is_visible            
     * @param unknown $sort            
     */
    function addGoodsSpecService($shop_id, $spec_name, $show_type, $is_visible, $sort, $spec_value_str, $attr_id = 0, $is_screen, $spec_des);

    /**
     * 添加课程规格属性
     *
     * @param unknown $spec_id            
     * @param unknown $spec_value_name            
     * @param unknown $spec_value_data            
     * @param unknown $is_visible            
     * @param unknown $sort            
     */
    function addGoodsSpecValueService($spec_id, $spec_value_name, $spec_value_data, $is_visible, $sort);

    /**
     * 检测 课程规格是否使用过
     * 返回true = 使用过 或者 false = 没有使用过
     *
     * @param unknown $spec_id            
     */
    function checkGoodsSpecIsUse($spec_id);

    /**
     * 检测 课程规格属性是否使用过
     * 返回true = 使用过 或者 false = 没有使用过
     *
     * @param unknown $spec_id            
     * @param unknown $spec_value_id            
     */
    function checkGoodsSpecValueIsUse($spec_id, $spec_value_id);

    /**
     * 删除 课程规格
     *
     * @param unknown $spec_id            
     */
    function deleteGoodsSpec($spec_id);

    /**
     * 删除 课程规格属性
     *
     * @param unknown $spec_id            
     * @param unknown $spec_value_id            
     */
    function deleteGoodsSpecValue($spec_id, $spec_value_id);

    /**
     * 修改 课程规格
     *
     * @param unknown $spec_id            
     * @param unknown $shop_id            
     * @param unknown $spec_name            
     * @param unknown $is_visible            
     * @param unknown $sort            
     */
    function updateGoodsSpecService($spec_id, $shop_id, $spec_name, $show_type, $is_visible, $sort, $spec_value_str, $is_screen, $spec_des);

    /**
     * 修改课程规格单个字段
     *
     * @param unknown $spec_id            
     * @param unknown $field_name            
     * @param unknown $field_value            
     */
    function modifyGoodsSpecField($spec_id, $field_name, $field_value);

    /**
     * 修改 课程规格属性 单个字段
     *
     * @param unknown $spec_value_id            
     * @param unknown $field_name            
     * @param unknown $field_value            
     */
    function modifyGoodsSpecValueField($spec_value_id, $field_name, $field_value);

    /**
     * 获取 课程类型列表
     *
     * @param number $page_index            
     * @param number $page_size            
     * @param string $condition            
     * @param string $order            
     * @param string $field            
     */
    function getAttributeServiceList($page_index = 1, $page_size = 0, $condition = '', $order = '', $field = '*');

    /**
     * 获取课程类型属性列表
     *
     * @param number $page_index            
     * @param number $page_size            
     * @param string $condition            
     * @param string $order            
     * @param string $field            
     */
    function getAttributeValueServiceList($page_index = 1, $page_size = 0, $condition = '', $order = '', $field = '*');

    /**
     * 获取课程类型详情
     *
     * @param unknown $attr_id            
     */
    function getAttributeServiceDetail($attr_id, $condition = '');

    /**
     * 添加 课程类型
     *
     * @param unknown $attribute_name            
     * @param unknown $is_use            
     * @param unknown $spec_id_array            
     * @param unknown $sort            
     * @param unknown $value_string            
     */
    function addAttributeService($attribute_name, $is_use, $spec_id_array, $sort, $value_string, $brand_id_array);

    /**
     * 添加 课程类型属性
     *
     * @param unknown $attr_id            
     * @param unknown $value            
     * @param unknown $type            
     * @param unknown $sort            
     * @param unknown $is_search            
     */
    function addAttributeValueService($attr_id, $attr_value_name, $type, $sort, $is_search, $value);

    /**
     * 删除 课程类型
     *
     * @param unknown $attr_value_id            
     */
    function deleteAttributeService($attr_id);

    /**
     * 删除 课程类型属性
     *
     * @param unknown $attr_id            
     */
    function deleteAttributeValueService($attr_id, $attr_value_id);

    /**
     * 修改 课程类型 单个字段
     *
     * @param unknown $attr_id            
     * @param unknown $field_name            
     * @param unknown $field_value            
     */
    function modifyAttributeFieldService($attr_id, $field_name, $field_value);

    /**
     * 修改课程属性值 单个值
     *
     * @param unknown $field_name            
     * @param unknown $field_value            
     */
    function modifyAttributeValueService($attr_value_id, $field_name, $field_value);

    /**
     * 修改课程类型
     *
     * @param unknown $attr_id            
     * @param unknown $attr_name            
     * @param unknown $is_use            
     * @param unknown $spec_id_array            
     * @param unknown $sort            
     */
    function updateAttributeService($attr_id, $attr_name, $is_use, $spec_id_array, $sort, $value_string, $brand_id_array);

    /**
     * 判断课程属性名称是否已经存在
     * 存在 返回 true 不存在返回 false
     *
     * @param unknown $value_name            
     */
    function checkGoodsSpecValueNameIsUse($spec_id, $value_name);

    /**
     * 获取分类详情
     *
     * @param unknown $condition            
     */
    function getAttributeInfo($condition);

    /**
     * 获取所需规格
     *
     * @param unknown $condition            
     */
    function getGoodsSpecQuery($condition);

    /**
     * 获取一定条件课程规格值 条数
     *
     * @param unknown $condition            
     */
    function getGoodsSpecValueCount($condition);

    /**
     * 获取一定条件下课程类型值的 条数
     *
     * @param unknown $condition            
     */
    function getGoodsAttrValueCount($condition);

    /**
     * 查询课程分类下的课程属性及课程规格
     */
    function getGoodsAttrSpecQuery($condition);

    /**
     * 查询课程属性
     */
    function getGoodsAttributeQuery($condition);

    /**
     * 课程回收库的分页
     *
     * @param number $page_index            
     * @param number $page_size            
     * @param string $condition            
     * @param string $order            
     */
    function getGoodsDeletedList($page_index = 1, $page_size = 0, $condition = '', $order = '');

    /**
     * 恢复课程
     *
     * @param unknown $goods_ids            
     */
    function regainGoodsDeleted($goods_ids);

    /**
     * 拷贝课程信息
     *
     * @param unknown $goods_id            
     */
    function copyGoodsInfo($goods_id);

    /**
     * 删除回收站课程
     *
     * @param unknown $goods_id            
     */
    function deleteRecycleGoods($goods_id);

    /**
     * 用户登录后同步购物车数据
     */
    function syncUserCart($uid);

    /**
     * 更改课程排序
     *
     * @param unknown $goods_id            
     * @param unknown $sort            
     */
    function updateGoodsSort($goods_id, $sort);

    /**
     * 添加课程规格关联图
     *
     * @param unknown $goods_id            
     * @param unknown $spec_id            
     * @param unknown $spec_value_id            
     * @param unknown $sku_img_array            
     */
    function addGoodsSkuPicture($shop_id, $goods_id, $spec_id, $spec_value_id, $sku_img_array);

    /**
     * 删除课程规格图片
     *
     * @param unknown $condition            
     */
    function deleteGoodsSkuPicture($condition);

    /**
     * 获取随机的课程
     */
    function getRandGoodsList();

    /**
     * 查看符合条件的sku列表信息
     *
     * @param unknown $condition            
     */
    function getGoodsSkuQuery($condition);

    /**
     * 获取课程优惠劵列表
     */
    function getGoodsCoupon($goods_id, $uid);

    /**
     * 点赞
     */
    function setGoodsSpotFabulous($shop_id, $uid, $goods_id);

    /**
     * 查询点赞状态
     */
    function getGoodsSpotFabulous($shop_id, $uid, $goods_id);

    /**
     * 修改课程名称或促销语
     *
     * @param unknown $goods_id            
     * @param unknown $up_type            
     * @param unknown $up_content            
     */
    function updateGoodsNameOrIntroduction($goods_id, $up_type, $up_content);

    /**
     * 修改课程属性表排序
     *
     * @param unknown $attr_value_id            
     * @param unknown $sort            
     * @param unknown $shop_id            
     */
    function updateGoodsAttributeSort($attr_value_id, $sort, $shop_id);

    /**
     * 查询当前用户所购买的课程限购，是否能够继续购买
     * 
     * @param 课程id $goods_id            
     * @param 购买数量 $num            
     * @param 判断标识（来源位置order，cart） $flag            
     */
    function getGoodsPurchaseRestrictionForCurrentUser($goods_id, $num, $flag);
    
    /**
     * 添加营销活动时获取课程列表
     * @param unknown $page_index
     * @param unknown $page_size
     * @param unknown $condition
     * @param unknown $order
     * @param unknown $field
     */
    function getSelectGoodsList($page_index, $page_size, $condition, $order, $field);
    /**
     * 课程足迹列表
     * @param unknown $page_index
     * @param unknown $page_size
     * @param unknown $condition
     * @param unknown $order
     * @param unknown $field
     */
    function getGoodsBrowseList($page_index, $page_size, $condition, $order, $field = "*");
    /**
     * 添加用户足迹
     * @param unknown $goods_id
     * @param unknown $uid
     */
    function addGoodsBrowse($goods_id, $uid);
    /**
     * 删除用户数据
     * @param unknown $id
     */
    function deleteGoodsBrowse($condition);
    
    /**
     * 修改课程点击量
     * @param unknown $goods_id
     */
    function updateGoodsClicks($goods_id);
    
    /**
     * 通过课程标签数组获取课程标签
     * @param unknown $goods_group_id_str
     */
    function getGoodsTabByGoodsGroupId($goods_group_id_str);
    
    /**
     * 通过课程id获取课程sku列表
     * @param unknown $goods_id
     */
    function getGoodsSkuListByGoodsId($goods_id);
}
