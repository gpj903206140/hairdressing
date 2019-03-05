<?php
namespace data\service;

/**
 * 课程服务层
 */
use data\api\ICourse as ICourse;
use data\model\AlbumPictureModel as AlbumPictureModel;
use data\model\NsAttributeModel;
use data\model\NsAttributeValueModel;
use data\model\NsCartModel;
use data\model\NsClickFabulousModel;
use data\model\NsConsultModel;
use data\model\NsConsultTypeModel;
use data\model\NsCouponGoodsModel;
use data\model\NsCouponModel;
use data\model\NsCouponTypeModel;
use data\model\NsGoodsAttributeDeletedModel;
use data\model\NsGoodsAttributeModel;
use data\model\NsGoodsCategoryModel as NsGoodsCategoryModel;
use data\model\NsCourseDeletedModel;
use data\model\NsCourseDeletedViewModel;
use data\model\NsGoodsEvaluateModel;
use data\model\NsGoodsGroupModel as NsGoodsGroupModel;
use data\model\NsCourseModel as NsCourseModel;
use data\model\NsCourseViewModel as NsCourseViewModel;
use data\model\NsCourseClassModel as NsCourseClassModel;
use data\model\NsCourseAssessModel as NsCourseAssessModel;
use data\model\NsGoodsSkuDeletedModel;
use data\model\NsGoodsSkuModel as NsGoodsSkuModel;
use data\model\NsGoodsSkuPictureDeleteModel;
use data\model\NsGoodsSkuPictureModel;
use data\model\NsGoodsSpecModel as NsGoodsSpecModel;
use data\model\NsGoodsSpecValueModel as NsGoodsSpecValueModel;
use data\model\NsGoodsViewModel as NsGoodsViewModel;
use data\model\NsOrderGoodsModel;
use data\model\NsOrderModel;
use data\model\NsPromotionDiscountModel;
use data\model\NsShopModel;
use data\service\BaseService as BaseService;
use data\service\promotion\GoodsDiscount;
use data\service\promotion\GoodsExpress;
use data\service\promotion\GoodsMansong;
use data\service\promotion\GoodsPreference;
use data\service\promotion\PromoteRewardRule;
use data\service\GroupBuy as GroupBuyService;
use think;
use think\Cache;
use data\model\NsGoodsLadderPreferentialModel;
use data\model\NsGoodsBrowseModel;
use think\Log;

use data\model\NcCmsArticleCommentModel as cmsArticleComment;
use data\model\NcCmsArticleModel as cmsArticle;
use data\model\NsCourseCatalogueModel as NsCourseCatalogueModel;
use data\service\CourseCatalogue;

class Course extends BaseService implements ICourse
{

    private $course;

    function __construct()
    {
        parent::__construct();
        $this->course = new NsCourseModel();
    }
    /**
     * 添加评论(non-PHPdoc)
     *
     * @see \data\api\IGoods::addCart()
     */
    public function addComment($uid, $nick_name, $article_id, $content,$type,$datatype,$is_show)
    {
        $retval = array(
            'code' => 0,
            "message" => ""
        );
        // 课程限购，判断是否允许添加到购物车
        if($type==0){
            $message = "评论成功";
        }elseif($type==1){
            $message = "收藏成功";
        }
        $retval = array(
            "code" => 1,
            "message" => $message
        );
        if ($uid > 0) {
            $comment = new cmsArticleComment();
            $cmsArticle = new cmsArticle();
            $comment->startTrans();
            $data = array(
                'uid' => $uid,
                'article_id' => $article_id,
                'nick_name' => $nick_name,
                'content'=>$content,
                'type'=>$type,
                'is_show'=>$is_show,
                'create_time'=>time(),
            );
            
            if($type==0){
                $result1 = $comment->save($data);
                $reslut2 = $cmsArticle->where('article_id',$article_id)->setInc('comment_count');
                if($result1&&$reslut2){
                    $comment->commit();
                    $retval['code'] = $comment->comment_id;
                }else{
                    $comment->rollback();
                    $retval['code'] = -1;
                }
            }elseif($type==1){
                if($datatype==0){
                    $result1 = $comment->save($data);
                    if($result1){
                        $comment->commit();
                        $retval['code'] = $comment->comment_id;
                    }else{
                        $comment->rollback();
                        $retval['code'] = -1;
                    }
                }elseif($datatype==1){
                    $result1 = $comment->destroy(['article_id'=>$article_id,'uid'=>$uid,'type'=>1]);
                    if($result1){
                        $comment->commit();
                        $retval['message'] = "取消收藏成功";
                        $retval['code'] = 1;
                    }else{
                        $comment->rollback();
                        $retval['code'] = -1;
                    }
                }
                
            }
            
            
        }
        return $retval;
    }
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoods::getGoodsList()
     */
    public function getGoodsList($page_index = 1, $page_size = 0, $condition = '', $order = 'ng.sort asc,ng.create_time desc', $group_id = 0)
    {
        
    }
    /**
     * 直接查询课程列表
     *
     * @param number $page_index            
     * @param number $page_size            
     * @param string $condition            
     * @param string $order            
     */
    public function getGoodsViewList($page_index = 1, $page_size = 0, $condition = '', $order = 'ng.sort asc')
    {
        $goods_view = new NsCourseViewModel();
        $list = $goods_view->getCourseViewList($page_index, $page_size, $condition, $order);

        return $list;
    }

    /**
     * 排行数据查询
     *
     * @param number $page_index            
     * @param number $page_size            
     * @param string $condition            
     * @param string $order            
     * @return multitype:\data\model\unknown
     */
    public function getGoodsRankViewList($page_index = 1, $page_size = 0, $condition = '', $order = 'ng.sort asc')
    {
        
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoods::getGoodsCount()
     */
    public function getGoodsCount($condition)
    {
        $count = $this->course->where($condition)->count();
        return $count;
        
        // TODO Auto-generated method stub
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::goods_QRcode_make()
     */
    function goods_QRcode_make($goodsId, $url)
    {
        $data = array(
            'QRcode' => $url
        );
        $result = $this->course->save($data, [
            'goods_id' => $goodsId
        ]);
        if ($result > 0) {
            return SUCCESS;
        } else {
            return UPDATA_FAIL;
        }
    }

    /**
     * 添加修改课程
     * goods_id '课程id(SKU)',
     * goods_name '课程名称',
     * shop_id '店铺id',
     * category_id '课程分类id',
     * category_id_1 '一级分类id',
     * category_id_2 '二级分类id',
     * category_id_3 '三级分类id',
     * brand_id int(10) '品牌id',
     * group_id_array '店铺分类id 首尾用,隔开',
     * goods_type '实物或虚拟课程标志 1实物课程 0 虚拟课程 2 F码课程',
     * market_price '市场价',
     * price '课程原价格',
     * promotion_price '课程促销价格',
     * cost_price '成本价',
     * point_exchange_type '积分兑换类型 0 不支持积分兑换 1 积分+课程同时满足 2积分兑换或者直接购买3.只能积分兑换',
     * point_exchange '积分兑换',
     * give_point '购买课程赠送积分',
     * is_member_discount '参与会员折扣',
     * shipping_fee '运费 0为免运费',
     * shipping_fee_id '售卖区域id 物流模板id ns_order_shipping_fee 表id',
     * stock '课程库存',
     * max_buy '限购 0 不限购',
     * clicks'课程点击数量',
     * min_stock_alarm '库存预警值',
     * sales '销售数量',
     * collects '收藏数量',
     * star '好评星级',
     * evaluates '评价数',
     * shares '分享数',
     * province_id '一级地区id',
     * city_id '二级地区id',
     * picture '课程主图',
     * keywords '课程关键词',
     * introduction '课程简介',
     * description '课程详情',
     * QRcode '课程二维码',
     * code '商家编号',
     * is_stock_visible '页面不显示库存',
     *
     * state '课程状态 0下架，1正常，10违规（禁售）',
     * sale_date '上下架时间',
     * create_time '课程添加时间',
     * update_time '课程编辑时间',
     * sort '排序',
     * img_id_array '课程图片序列',
     * sku_img_array '课程sku应用图片列表 属性,属性值，图片ID',
     * match_point '实物与描述相符（根据评价计算）',
     * match_ratio '实物与描述相符（根据评价计算）百分比',
     * real_sales '实际销量',
     * goods_attribute '课程类型',
     * goods_spec_format '课程规格',
     *
     * @return \data\model\NsGoodsModel|number
     */
    public function addOrEditGoods(
        $goods_id, $goods_name, $shopid, $category_id, $category_id_1
        ,$category_id_2, $category_id_3, $group_id_array, $goods_type, $market_price
        , $price, $is_showprice, $collects, $evaluates, $shares
        , $picture, $keywords, $introduction, $description, $QRcode
        , $is_hot, $is_recommend, $is_new, $sort, $image_array
        , $extend_category_id, $state, $pc_custom_template, $wap_custom_template,$allow_delete
        ,$mechanism_id, $teacher_id,$crowd, $course_type,$total_num
        ,$release_num,$promotion_price,$goods_video_address
    )
    {
        Cache::tag("niu_course_group")->clear();
        Cache::tag("niu_course_class_block")->clear();
        Cache::tag("niu_course")->clear();
        $error = 0;
        $category_list = $this->getGoodsCategoryId($category_id);
        // 1级扩展分类
        $extend_category_id_1s = "";
        // 2级扩展分类
        $extend_category_id_2s = "";
        // 3级扩展分类
        $extend_category_id_3s = "";
        if (! empty($extend_category_id)) {
            $extend_category_id_str = explode(",", $extend_category_id);
            foreach ($extend_category_id_str as $extend_id) {
                $extend_category_list = $this->getGoodsCategoryId($extend_id);
                
                if ($extend_category_id_1s === "") {
                    $extend_category_id_1s = $extend_category_list[0];
                } else {
                    $extend_category_id_1s = $extend_category_id_1s . "," . $extend_category_list[0];
                }
                if ($extend_category_id_2s === "") {
                    $extend_category_id_2s = $extend_category_list[1];
                } else {
                    $extend_category_id_2s = $extend_category_id_2s . "," . $extend_category_list[1];
                }
                if ($extend_category_id_3s === "") {
                    $extend_category_id_3s = $extend_category_list[2];
                } else {
                    $extend_category_id_3s = $extend_category_id_3s . "," . $extend_category_list[2];
                }
            }
        }
        $this->course->startTrans();
        try {
            $data_goods = array(
                'goods_name' => $goods_name,
                'shop_id' => $shopid,
                'category_id' => $category_id,
                'category_id_1' => $category_list[0],
                'category_id_2' => $category_list[1],
                'category_id_3' => $category_list[2],
                'group_id_array' => $group_id_array,
                'goods_type' => $goods_type,
                'market_price' => $market_price,
                'price' => $price,
                'is_showprice' => $is_showprice,
                'collects' => $collects,
                'evaluates' => $evaluates,
                'shares' => $shares,
                'picture' => $picture,
                'keywords' => $keywords,
                'introduction' => $introduction,
                'description' => $description,
                'QRcode' => $QRcode,

                'sort' => $sort,
                'img_id_array' => $image_array,
                'state' => $state,
                'extend_category_id' => $extend_category_id,
                'extend_category_id_1' => $extend_category_id_1s,
                'extend_category_id_2' => $extend_category_id_2s,
                'extend_category_id_3' => $extend_category_id_3s,

                'pc_custom_template' => $pc_custom_template,
                'wap_custom_template' => $wap_custom_template,
                'allow_delete'=>$allow_delete,
                
                'mechanism_id' => $mechanism_id,
                'teacher_id' => $teacher_id,
                'crowd' => $crowd,
                'course_type' => $course_type,
                'total_num'=>$total_num,
                'release_num'=>$release_num,
                'promotion_price'=>$promotion_price,
                'goods_video_address'=>$goods_video_address
            );
            $_SESSION['goods_spec_format'] = $goods_spec_format;
            // 课程保存之前钩子
            hook("courseSaveBefore", $data_goods);
            if ($goods_id == 0) {
                $data_goods['create_time'] = time();
                $data_goods['sale_date'] = time();
                $res = $this->course->save($data_goods);
                // 课程保存成功钩子
                $data_goods['goods_id'] = $this->course->goods_id;
                hook("courseSaveSuccess", $data_goods);
                $goods_id = $this->course->goods_id;
                $this->addUserLog($this->uid, 1, '课程', '添加课程', '添加课程:' . $goods_name);
            } else {
                $data_goods['update_time'] = time();
                unset($data_goods['release_num']);
                $res = $this->course->save($data_goods, [
                    'goods_id' => $goods_id
                ]);
                $this->addUserLog($this->uid, 1, '课程', '修改课程', '修改课程:' . $goods_name);
                $data_goods['goods_id'] = $goods_id;
                hook("courseSaveSuccess", $data_goods);
            }
            
            if ($error == 0) {
                $this->course->commit();
                return $goods_id;
            } else {
                $this->course->rollback();
                return 0;
            }
        } catch (\Exception $e) {
            $this->course->rollback();
            Log::write('复制课程出错--' . $e->getMessage());
            return $e->getMessage();
        }
        return 0;
        
        // TODO Auto-generated method stub
    }

    /**
     * 修改 课程的 促销价格
     *
     * @param unknown $goods_id            
     */
    protected function modifyGoodsPromotionPrice($goods_id)
    {
        
    }

    /**
     * 获取单个课程的sku属性
     *
     * @ERROR!!!
     *
     * @see \data\api\IGoods::getGoodsSkuAll()
     */
    public function getGoodsAttribute($goods_id)
    {
        
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoods::getGoodsSku()
     */
    public function getGoodsSku($goods_id)
    {
        
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoods::editGoodsSku()
     */
    public function ModifyGoodsSku($goods_id, $sku_list)
    {
        // TODO Auto-generated method stub
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoods::getGoodsImg()
     */
    public function getGoodsImg($goods_id)
    {
        
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoods::editGoodsOffline()
     */
    public function ModifyGoodsOffline($condition)
    {
        Cache::tag("niu_goods_group")->clear();
        Cache::tag("niu_goods_category_block")->clear();
        Cache::tag("niu_goods")->clear();
        $data = array(
            "state" => 0,
            'update_time' => time()
        );
        $result = $this->course->save($data, "goods_id  in($condition)");
        if ($result > 0) {
            // 课程下架成功钩子
            hook("goodsOfflineSuccess", [
                'goods_id' => $condition
            ]);
            return SUCCESS;
        } else {
            return UPDATA_FAIL;
        }
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoods::editGoodsOnline()
     */
    public function ModifyGoodsOnline($condition)
    {
        Cache::tag("niu_goods_group")->clear();
        Cache::tag("niu_goods_category_block")->clear();
        Cache::tag("niu_goods")->clear();
        $data = array(
            "state" => 1,
            'update_time' => time()
        );
        $result = $this->course->save($data, "goods_id  in($condition)");
        if ($result > 0) {
            // 课程上架成功钩子
            hook("goodsOnlineSuccess", [
                'goods_id' => $condition
            ]);
            return SUCCESS;
        } else {
            return UPDATA_FAIL;
        }
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoods::deleteGoods()
     */
    public function deleteGoods($goods_id)
    {
        Cache::tag("niu_course_group")->clear();
        Cache::tag("niu_course_class_block")->clear();
        Cache::tag("niu_course")->clear();
        $this->course->startTrans();
        try {
            // 课程删除之前钩子
            hook("courseDeleteBefore", [
                'goods_id' => $goods_id
            ]);
            // 将课程信息添加到课程回收库中
            $this->addGoodsDeleted($goods_id);
            $condition = array(
                'shop_id' => $this->instance_id,
                'goods_id' => $goods_id
            );
            $res = $this->course->destroy($goods_id);
            
            /*if ($res > 0) {
                $goods_id_array = explode(',', $goods_id);
                $goods_sku_model = new NsGoodsSkuModel();
                $goods_attribute_model = new NsGoodsAttributeModel();
                $goods_sku_picture = new NsGoodsSkuPictureModel();
                foreach ($goods_id_array as $k => $v) {
                    // 删除课程sku
                    $goods_sku_model->destroy([
                        'goods_id' => $v
                    ]);
                    // 删除课程属性
                    $goods_attribute_model->destroy([
                        'goods_id' => $v
                    ]);
                    // 删除规格图片
                    $goods_sku_picture->destroy([
                        'goods_id' => $v
                    ]);
                }
            }*/
            $this->course->commit();
            if ($res > 0) {
                // 课程删除成功钩子
                hook("courseDeleteSuccess", [
                    'goods_id' => $goods_id
                ]);
                return SUCCESS;
            } else {
                return DELETE_FAIL;
            }
        } catch (\Exception $e) {
            $this->course->rollback();
            return DELETE_FAIL;
        }
    }

    /**
     * 课程删除以前 将课程挪到 回收站中
     *
     * @param unknown $goods_ids            
     */
    private function addGoodsDeleted($goods_ids)
    {
        $this->course->startTrans();
        try {
            $goods_id_array = explode(',', $goods_ids);
            foreach ($goods_id_array as $k => $v) {
                // 得到课程的信息 备份课程
                $goods_info = $this->course->get($v);
                $course_delete_model = new NsCourseDeletedModel();
                $goods_info = json_decode(json_encode($goods_info), true);
                $goods_delete_obj = $course_delete_model->getInfo([
                    "goods_id" => $v
                ]);
                if (empty($goods_delete_obj)) {
                    $goods_info["update_time"] = time();
                    $course_delete_model->save($goods_info);
                    // 课程的sku 信息备份
                    /*$goods_sku_model = new NsGoodsSkuModel();
                    $goods_sku_list = $goods_sku_model->getQuery([
                        "goods_id" => $v
                    ], "*", "");
                    foreach ($goods_sku_list as $goods_sku_obj) {
                        $goods_sku_deleted_model = new NsGoodsSkuDeletedModel();
                        $goods_sku_obj = json_decode(json_encode($goods_sku_obj), true);
                        $goods_sku_obj["update_date"] = time();
                        $goods_sku_deleted_model->save($goods_sku_obj);
                    }
                    // 课程的属性 信息备份
                    $goods_attribute_model = new NsGoodsAttributeModel();
                    $goods_attribute_list = $goods_attribute_model->getQuery([
                        'goods_id' => $v
                    ], "*", "");
                    foreach ($goods_attribute_list as $goods_attribute_obj) {
                        $goods_attribute_delete_model = new NsGoodsAttributeDeletedModel();
                        $goods_attribute_obj = json_decode(json_encode($goods_attribute_obj), true);
                        $goods_attribute_delete_model->save($goods_attribute_obj);
                    }
                    // 课程的sku图片备份
                    $goods_sku_picture = new NsGoodsSkuPictureModel();
                    $goods_sku_picture_list = $goods_sku_picture->getQuery([
                        'goods_id' => $v
                    ], "*", "");
                    foreach ($goods_sku_picture_list as $goods_sku_picture_list_obj) {
                        $goods_sku_picture_delete = new NsGoodsSkuPictureDeleteModel();
                        $goods_sku_picture_list_obj = json_decode(json_encode($goods_sku_picture_list_obj), true);
                        $goods_sku_picture_delete->save($goods_sku_picture_list_obj);
                    }*/
                }
            }
            $this->course->commit();
            return 1;
        } catch (\Exception $e) {
            $this->course->rollback();
            return $e->getMessage();
        }
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoods::deleteGoodImages()
     */
    public function deleteGoodImages($goods_id)
    {
        // TODO Auto-generated method stub
    }

    /**
     * 查询课程的基础信息
     * 每次访问课程详情时，点击量都会发生变化，如果缓存了，则看不到点击量的变化。其他字段也可能会出现问题
     *
     * @param unknown $goods_id            
     */
    public function getBasisGoodsDetail($goods_id)
    {
        
    }

    /**
     * 查询课程的业务数据
     */
    public function getBusinessGoodsInfo($goods_detail)
    {
        
    }
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoods::getGoodsDetail()
     */
    public function getGoodsDetail($goods_id)
    {
        // 查询课程主表
        $goods = new NsCourseModel();
        $goods_detail = $goods->get($goods_id);
        if ($goods_detail == null) {
            return null;
        }
        $goods_preference = new GoodsPreference();
        if (! empty($this->uid)) {
            $member_discount = $goods_preference->getMemberLevelDiscount($this->uid);
        } else {
            $member_discount = 1;
        }
        
        // 查询课程会员价
        if ($member_discount == 1) {
            $goods_detail['is_show_member_price'] = 0;
        } else {
            $goods_detail['is_show_member_price'] = 1;
        }
        $member_price = $member_discount * $goods_detail['price'];
        $goods_detail['member_price'] = $member_price;
        
        // sku多图数据
        /*$sku_picture_list = $this->getGoodsSkuPicture($goods_id);
        $goods_detail["sku_picture_list"] = $sku_picture_list;
        $goods_all_picture = array();
        foreach ($sku_picture_list as $picture_obj) {
            $spec_value_id = $picture_obj["spec_value_id"];
            $goods_all_picture[$spec_value_id] = $picture_obj;
        }*/
        // 查询课程分组表
        $goods_group = new NsGoodsGroupModel();
        $goods_group_list = $goods_group->all($goods_detail['group_id_array']);
        $goods_detail['goods_group_list'] = $goods_group_list;
        // 查询课程sku表
        /*$goods_sku = new NsGoodsSkuModel();
        $goods_sku_detail = $goods_sku->where('goods_id=' . $goods_id)->select();
        
        foreach ($goods_sku_detail as $k => $goods_sku) {
            $goods_sku_detail[$k]['member_price'] = $goods_sku['price'] * $member_discount;
        }
        
        $goods_detail['sku_list'] = $goods_sku_detail;
        $spec_list = json_decode($goods_detail['goods_spec_format'], true);
        if (! empty($spec_list)) {
            foreach ($spec_list as $k => $v) {
                
                $spec_list[$k]['sort'] = 0;
                
                foreach ($v["value"] as $m => $t) {
                    if (empty($t["spec_show_type"])) {
                        $spec_list[$k]["value"][$m]["spec_show_type"] = 1;
                    }
                    $picture = 0;
                    $sku_img_array = $goods_all_picture[$spec_list[$k]["value"][$m]['spec_value_id']];
                    if (! empty($sku_img_array)) {
                        $array = explode(",", $sku_img_array['sku_img_array']);
                        $picture = $array[0];
                    }
                    // 查询SKU规格主图，没有返回0
                    $spec_list[$k]["value"][$m]["picture"] = $picture;
                    // $this->getGoodsSkuPictureBySpecId($goods_id, $spec_list[$k]["value"][$m]['spec_id'], $spec_list[$k]["value"][$m]['spec_value_id']);
                }
            }
        }
        
        $goods_detail['spec_list'] = $spec_list;*/
        // 查询图片表
        $goods_img = new AlbumPictureModel();
        $order = "instr('," . $goods_detail['img_id_array'] . ",',CONCAT(',',pic_id,','))"; // 根据 in里边的id 排序
        $goods_img_list = $goods_img->getQuery([
            'pic_id' => [
                "in",
                $goods_detail['img_id_array']
            ]
        ], '*', $order);
        if (trim($goods_detail['img_id_array']) != "") {
            $img_array = array();
            $img_temp_array = array();
            $img_array = explode(",", $goods_detail['img_id_array']);
            foreach ($img_array as $k => $v) {
                if (! empty($goods_img_list)) {
                    foreach ($goods_img_list as $t => $m) {
                        if ($m["pic_id"] == $v) {
                            $img_temp_array[] = $m;
                        }
                    }
                }
            }
        }
        $goods_picture = $goods_img->get($goods_detail['picture']);
        $goods_detail["img_temp_array"] = $img_temp_array;
        $goods_detail['img_list'] = $goods_img_list;
        $goods_detail['picture_detail'] = $goods_picture;
        // 查询分类名称
        $category_name = $this->getGoodsCategoryName($goods_detail['category_id_1'], $goods_detail['category_id_2'], $goods_detail['category_id_3']);
        $goods_detail['category_name'] = $category_name;
        // 扩展分类
        $extend_category_array = array();
        if (! empty($goods_detail['extend_category_id'])) {
            $extend_category_ids = $goods_detail['extend_category_id'];
            $extend_category_id_1s = $goods_detail['extend_category_id_1'];
            $extend_category_id_2s = $goods_detail['extend_category_id_2'];
            $extend_category_id_3s = $goods_detail['extend_category_id_3'];
            $extend_category_id_str = explode(",", $extend_category_ids);
            $extend_category_id_1s_str = explode(",", $extend_category_id_1s);
            $extend_category_id_2s_str = explode(",", $extend_category_id_2s);
            $extend_category_id_3s_str = explode(",", $extend_category_id_3s);
            foreach ($extend_category_id_str as $k => $v) {
                $extend_category_name = $this->getGoodsCategoryName($extend_category_id_1s_str[$k], $extend_category_id_2s_str[$k], $extend_category_id_3s_str[$k]);
                $extend_category_array[] = array(
                    "extend_category_name" => $extend_category_name,
                    "extend_category_id" => $v,
                    "extend_category_id_1" => $extend_category_id_1s_str[$k],
                    "extend_category_id_2" => $extend_category_id_2s_str[$k],
                    "extend_category_id_3" => $extend_category_id_3s_str[$k]
                );
            }
        }
        $goods_detail['extend_category_name'] = "";
        $goods_detail['extend_category'] = $extend_category_array;
        
        // 查询课程单品活动信息
        $goods_preference = new GoodsPreference();
        $goods_promotion_info = $goods_preference->getGoodsPromote($goods_id);
        if (! empty($goods_promotion_info)) {
            $goods_discount_info = new NsPromotionDiscountModel();
            $goods_detail['promotion_detail'] = $goods_discount_info->getInfo([
                'discount_id' => $goods_detail['promote_id']
            ], 'start_time, end_time,discount_name');
        }
        // 判断活动内容是否为空
        if (! empty($goods_detail['promotion_detail'])) {
            $goods_detail['promotion_info'] = $goods_promotion_info;
        } else {
            $goods_detail['promotion_info'] = "";
        }
        // 查询课程满减送活动
        /*$goods_mansong = new GoodsMansong();
        $goods_detail['mansong_name'] = $goods_mansong->getGoodsMansongName($goods_id);
        // 查询包邮活动
        $full = new Promotion();
        $baoyou_info = $full->getPromotionFullMail($this->instance_id);
        if ($baoyou_info['is_open'] == 1) {
            if ($baoyou_info['full_mail_money'] == 0) {
                $goods_detail['baoyou_name'] = '全场包邮';
            } else {
                $goods_detail['baoyou_name'] = '满' . $baoyou_info['full_mail_money'] . '元包邮';
            }
        } else {
            $goods_detail['baoyou_name'] = '';
        }
        $goods_express = new GoodsExpress();
        $goods_detail['shipping_fee_name'] = $goods_express->getGoodsExpressTemplate($goods_id, 1, 1, 1);
        
        $shop_model = new NsShopModel();
        $shop_name = $shop_model->getInfo(array(
            "shop_id" => $goods_detail["shop_id"]
        ), "shop_name");
        $goods_detail["shop_name"] = $shop_name["shop_name"];*/
        // 查询课程规格图片
        /*$goos_sku_picture = new NsGoodsSkuPictureModel();
        $goos_sku_picture_query = $goos_sku_picture->getQuery([
            "goods_id" => $goods_id
        ], "*", '');
        $album_picture = new AlbumPictureModel();
        foreach ($goos_sku_picture_query as $k => $v) {
            if ($v["sku_img_array"] != "") {
                $spec_name = '';
                $spec_value_name = '';
                foreach ($spec_list as $t => $m) {
                    if ($m["spec_id"] == $v["spec_id"]) {
                        foreach ($m["value"] as $c => $b) {
                            if ($b["spec_value_id"] == $v["spec_value_id"]) {
                                $spec_name = $b["spec_name"];
                                $spec_value_name = $b["spec_value_name"];
                            }
                        }
                    }
                }
                $goos_sku_picture_query[$k]["spec_name"] = $spec_name;
                $goos_sku_picture_query[$k]["spec_value_name"] = $spec_value_name;
                $tmp_img_array = $album_picture->getQuery([
                    "pic_id" => [
                        "in",
                        $v["sku_img_array"]
                    ]
                ], "*", '');
                $pic_id_array = explode(',', (string) $v["sku_img_array"]);
                $goos_sku_picture_query[$k]["sku_picture_query"] = array();
                $sku_picture_query_array = array();
                foreach ($pic_id_array as $t => $m) {
                    foreach ($tmp_img_array as $q => $z) {
                        if ($m == $z["pic_id"]) {
                            $sku_picture_query_array[] = $z;
                        }
                    }
                }
                $goos_sku_picture_query[$k]["sku_picture_query"] = $sku_picture_query_array;
                // $goos_sku_picture_query[$k]["sku_picture_query"] = $album_picture->getQuery(["pic_id"=>["in",$v["sku_img_array"]]], "*", '');
            } else {
                unset($goos_sku_picture_query[$k]);
            }
        }
        sort($goos_sku_picture_query);
        $goods_detail["sku_picture_array"] = $goos_sku_picture_query;*/
        // 查询课程的已购数量
        /*$orderGoods = new NsOrderGoodsModel();
        $num = 0;
        $num = $orderGoods->getSum([
            "goods_id" => $goods_id,
            "buyer_id" => $this->uid,
            "order_status" => array(
                "neq",
                5
            )
        ], "num");
        $goods_detail["purchase_num"] = $num;*/
        
        return $goods_detail;
    }

    /**
     * 查询sku多图数据
     *
     * @ERROR!!!
     *
     * @see \data\api\IGoods::getGoodsSkuPicture()
     */
    public function getGoodsSkuPicture($goods_id)
    {
        
    }

    /**
     * 根据课程id、规格id、规格值id查询
     *
     * @ERROR!!!
     *
     * @see \data\api\IGoods::getGoodsSkuPictureBySpecId()
     */
    public function getGoodsSkuPictureBySpecId($goods_id, $spec_id, $spec_value_id)
    {
        
    }

    /**
     * 课程规格列表(non-PHPdoc)
     *
     * @see \data\api\IGoods::getGoodsAttributeList()
     */
    public function getGoodsAttributeList($condition, $field, $order)
    {
        
    }

    /**
     * 课程规格值列表(non-PHPdoc)
     *
     *
     * @see \data\api\IGoods::getGoodsAttributeValueList()
     */
    public function getGoodsAttributeValueList($condition, $field)
    {
       
    }
    
    /*
     * 添加课程规格
     * (non-PHPdoc)
     * @see \data\api\IGoods::addGoodsSpec()
     */
    public function addGoodsSpec($spec_name, $sort = 0)
    {
        
    }
    
    /*
     * 添加课程规格值
     * (non-PHPdoc)
     * @see \data\api\IGoods::addGoodsSpecValue()
     */
    public function addGoodsSpecValue($spec_id, $spec_value, $sort = 0)
    {
        
    }

    /**
     * 添加课程sku列表
     *
     * @param unknown $goods_id            
     * @param unknown $sku_item_array            
     * @return Ambigous <number, \think\false, boolean, string>
     */
    private function addOrUpdateGoodsSkuItem($goods_id, $sku_item_array)
    {
        
    }

    private function deleteSkuItem($goods_id, $sku_list_array)
    {
        
    }

    /**
     * 组装sku name
     *
     * @param unknown $pvs            
     * @return string
     */
    private function createSkuName($pvs)
    {
       
    }

    /**
     * 获取用户自定义的规格值名称
     *
     * @param unknown $spec_id            
     */
    private function getUserSkuName($spec_id)
    {
        
    }

    /**
     * 根据当前分类ID查询课程分类的三级分类ID
     *
     * @param unknown $category_id            
     */
    private function getGoodsCategoryId($category_id)
    {
        // 获取分类层级
        $goods_category = new NsCourseClassModel();
        $info = $goods_category->get($category_id);
        if ($info['level'] == 1) {
            return array(
                $category_id,
                0,
                0
            );
        }
        if ($info['level'] == 2) {
            // 获取父级
            return array(
                $info['pid'],
                $category_id,
                0
            );
            ;
        }
        if ($info['level'] == 3) {
            $info_parent = $goods_category->get($info['pid']);
            // 获取父级
            return array(
                $info_parent['pid'],
                $info['pid'],
                $category_id
            );
            ;
        }
    }

    /**
     * 根据当前课程分类组装分类名称
     *
     * @param unknown $category_id_1            
     * @param unknown $category_id_2            
     * @param unknown $category_id_3            
     */
    private function getGoodsCategoryName($category_id_1, $category_id_2, $category_id_3)
    {
        $name = '';
        $goods_category = new NsCourseClassModel();
        $info_1 = $goods_category->getInfo([
            'category_id' => $category_id_1
        ], 'category_name');
        $info_2 = $goods_category->getInfo([
            'category_id' => $category_id_2
        ], 'category_name');
        $info_3 = $goods_category->getInfo([
            'category_id' => $category_id_3
        ], 'category_name');
        if (! empty($info_1['category_name'])) {
            $name = $info_1['category_name'] . ' > ';
        }
        if (! empty($info_2['category_name'])) {
            $name = $name . '' . $info_2['category_name'] . ' > ';
        }
        if (! empty($info_3['category_name'])) {
            $name = $name . '' . $info_3['category_name'];
        }
        return $name;
    }

    /**
     * 获取条件查询出课程
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::getSearchGoodsList()
     */
    public function getSearchGoodsList($page_index = 1, $page_size = 0, $condition = '', $order = '', $field = '*')
    {
        $result = $this->course->pageQuery($page_index, $page_size, $condition, $order, $field);
        foreach ($result['data'] as $k => $v) {
            $picture = new AlbumPictureModel();
            $pic_info = array();
            $pic_info['pic_cover'] = '';
            if (! empty($v['picture'])) {
                $pic_info = $picture->get($v['picture']);
            }
            $result['data'][$k]['picture_info'] = $pic_info;
            // 根据商品分组id，查询标签名称
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
                $result["data"][$k]['goods_group_name'] = explode(',',$goods_group_name);
            }
        }
        return $result;
    }

    /**
     * 修改课程分组(non-PHPdoc)
     *
     * @see \data\api\IGoods::ModifyGoodsGroup()
     */
    public function ModifyGoodsGroup($goods_id, $goods_type)
    {
        Cache::tag('niu_course_group')->clear();
        $data = array(
            "group_id_array" => $goods_type,
            "update_time" => time()
        );
        $result = $this->course->save($data, "goods_id  in($goods_id)");
        if ($result > 0) {
            return SUCCESS;
        } else {
            return UPDATA_FAIL;
        }
    }

    /**
     * 修改课程 推荐 1=热销 2=推荐 3=新品
     */
    public function ModifyGoodsRecommend($goods_ids, $goods_type)
    {
        $goods = new NsCourseModel();
        $goods->startTrans();
        try {
            $goods_id_array = explode(',', $goods_ids);
            $goods_type = explode(',', $goods_type);
            $data = array(
                "is_new" => $goods_type[0],
                "is_recommend" => $goods_type[1],
                "is_hot" => $goods_type[2]
            );
            foreach ($goods_id_array as $k => $v) {
                $goods = new NsCourseModel();
                $goods->save($data, [
                    'goods_id' => $v
                ]);
            }
            $goods->commit();
            return 1;
        } catch (\Exception $e) {
            $goods->rollback();
            return $e->getMessage();
        }
    }

    /**
     * 获取课程可得积分
     *
     * @param unknown $goods_id            
     */
    public function getGoodsGivePoint($goods_id)
    {
        
    }

    /**
     * 通过课程skuid查询goods_id
     *
     * @param unknown $sku_id            
     */
    public function getGoodsId($sku_id)
    {
        
    }

    /**
     * 获取购物车中项目，根据cartid
     *
     * @param unknown $carts            
     */
    public function getCartList($carts)
    {
        
    }

    /**
     * 获取购物车
     *
     * @param unknown $uid            
     */
    public function getCart($uid, $shop_id = 0)
    {
        
    }

    /**
     * 添加购物车(non-PHPdoc)
     *
     * @see \data\api\IGoods::addCart()
     */
    public function addCart($uid, $shop_id, $shop_name, $goods_id, $goods_name, $sku_id, $sku_name, $price, $num, $picture, $bl_id)
    {
        
    }

    /**
     * 购物车数量修改(non-PHPdoc)
     *
     * @see \data\api\IGoods::cartAdjustNum()
     */
    public function cartAdjustNum($cart_id, $num)
    {
        
    }

    /**
     * 购物车项目删除(non-PHPdoc)
     *
     * @see \data\api\IGoods::cartDelete()
     */
    public function cartDelete($cart_id_array)
    {
       
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::getGroupGoodsList()
     */
    public function getGroupGoodsList($goods_group_id, $condition = '', $num = 0, $order = '')
    {
        
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::getGroupGoodsList()
     */
    public function getGroupGoodsListForApp($page_index, $page_size, $group_id, $fields = "*", $order = 'sort asc,create_time desc')
    {
        
    }

    /**
     * 获取限时折扣的课程
     *
     * @param number $page_index            
     * @param number $page_size            
     * @param unknown $condition            
     * @param string $order            
     */
    public function getDiscountGoodsList($page_index = 1, $page_size = 0, $condition = array(), $order = '')
    {
        
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::getGoodsEvaluate()
     */
    public function getGoodsEvaluate($goods_id)
    {
        
    }

    /**
     * (non-PHPdoc) 课程评价
     *
     * @see \data\api\IGoods::getGoodsEvaluateList()
     */
    public function getGoodsEvaluateList($page_index = 1, $page_size = 0, $condition = array(), $order = '', $field = '*')
    {
        $courseAssessModel = new NsCourseAssessModel();
        return $courseAssessModel->pageQuery($page_index, $page_size, $condition, $order, $field);
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::getGoodsShopid()
     */
    public function getGoodsShopid($goods_id)
    {
        
    }

    /**
     * (non-PHPdoc)
     * @evaluate_count总数量 @imgs_count带图的数量 @praise_count好评数量 @center_count中评数量 bad_count差评数量
     *
     * @see \data\api\IGoods::getGoodsEvaluateCount()
     */
    public function getGoodsEvaluateCount($goods_id)
    {
        
    }

    /**
     * 查询课程积分兑换(non-PHPdoc)
     *
     * @see \data\api\IGoods::getGoodsPointExchange()
     */
    public function getGoodsPointExchange($goods_id)
    {
        
    }

    /**
     *
     * @ERROR!!!
     *
     * @see \data\api\IGoods::getConsultTypeList()
     */
    public function getConsultTypeList($page_index = 1, $page_size = 0, $condition = '', $order = '')
    {
        
    }

    /**
     *
     * @ERROR!!!
     *
     * @see \data\api\IGoods::getConsultList()
     */
    public function getConsultList($page_index = 1, $page_size = 0, $condition = '', $order = '')
    {
        
    }

    /**
     *
     * @ERROR!!!
     *
     * @see \data\api\IGoods::addConsult()
     */
    public function addConsult($goods_id, $goods_name, $uid, $member_name, $shop_id, $shop_name, $ct_id, $consult_content)
    {
        
    }

    /**
     *
     * @ERROR!!!
     *
     * @see \data\api\IGoods::replyConsult()
     */
    public function replyConsult($consult_id, $consult_reply)
    {
        
    }

    /**
     *
     * @ERROR!!!
     *
     * @see \data\api\IGoods::addConsultType()
     */
    public function addConsultType($ct_name, $ct_introduce, $ct_sort)
    {}

    /**
     *
     * @ERROR!!!
     *
     * @see \data\api\IGoods::updateConsultType()
     */
    public function updateConsultType($ct_id, $ct_name, $ct_introduce, $ct_sort)
    {}

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::deleteConsult()
     */
    public function deleteConsult($consult_id)
    {
        
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::deleteConsultType()
     */
    public function deleteConsultType($ct_id)
    {}

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::getConsultDetail()
     */
    public function getConsultDetail($ct_id)
    {}

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::getGoodsRank()
     */
    public function getGoodsRank($condition)
    {
       
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::getConsultCount()
     */
    public function getConsultCount($condition)
    {
        
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::getGoodsExpressTemplate()
     */
    public function getGoodsExpressTemplate($goods_id, $province_id, $city_id, $district_id)
    {
        $goods_express = new GoodsExpress();
        $retval = $goods_express->getGoodsExpressTemplate($goods_id, $province_id, $city_id, $district_id);
        return $retval;
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::getGoodsSpecList()
     */
    public function getGoodsSpecList($page_index = 1, $page_size = 0, $condition = '', $order = '', $field = '*')
    {
        
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::getGoodsSpecDetail()
     */
    public function getGoodsSpecDetail($spec_id)
    {
        
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::addGoodsSpec()
     */
    public function addGoodsSpecService($shop_id, $spec_name, $show_type, $is_visible, $sort, $spec_value_str, $attr_id = 0, $is_screen, $spec_des)
    {
        
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::updateGoodsSpecService()
     */
    public function updateGoodsSpecService($spec_id, $shop_id, $spec_name, $show_type, $is_visible, $sort, $spec_value_str, $is_screen, $spec_des)
    {
        
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::addGoodsSpecValue()
     */
    public function addGoodsSpecValueService($spec_id, $spec_value_name, $spec_value_data, $is_visible, $sort)
    {
       
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::checkGoodsSpecIsUse()
     */
    public function checkGoodsSpecIsUse($spec_id)
    {
        
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::checkGoodsSpecValueIsUse()
     */
    public function checkGoodsSpecValueIsUse($spec_id, $spec_value_id)
    {
        
    }

    public function addGoodsEvaluateReply($id, $replyContent, $replyType)
    {
        $goodsEvaluate = new NsCourseAssessModel();
        if ($replyType == 1) {
            return $goodsEvaluate->save([
                'explain_first' => $replyContent
            ], [
                'id' => $id
            ]);
        } elseif ($replyType == 2) {
            return $goodsEvaluate->save([
                'again_explain' => $replyContent
            ], [
                'id' => $id
            ]);
        }
    }

    public function setEvaluateShowStatu($id)
    {
        $goodsEvaluate = new NsCourseAssessModel();
        $showStatu = $goodsEvaluate->getInfo([
            'id' => $id
        ], 'is_show');
        if ($showStatu['is_show'] == 1) {
            return $goodsEvaluate->save([
                'is_show' => 0
            ], [
                'id' => $id
            ]);
        } elseif ($showStatu['is_show'] == 0) {
            return $goodsEvaluate->save([
                'is_show' => 1
            ], [
                'id' => $id
            ]);
        }
    }

    public function deleteEvaluate($id)
    {
        $goodsEvaluate = new NsCourseAssessModel();
        $goodsEvaluate->startTrans();
        try {
            $info = $goodsEvaluate->getInfo(['id'=>$id],'goods_id');
            $res =  $goodsEvaluate->destroy($id);
            $result = $this->course->where("goods_id={$info['goods_id']}")->setDec('evaluates',1);
            if($result){
                $goodsEvaluate->commit();
            }else{
                $goodsEvaluate->rollback();
            }
            return $result;
         } catch (\Exception $e) {
            $goodsEvaluate->rollback();
            return $e->getMessage();
        }
        return 0;
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::deleteGoodsSpecValue()
     */
    public function deleteGoodsSpecValue($spec_id, $spec_value_id)
    {
        
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::getGoodsSpecValueCount()
     */
    public function getGoodsSpecValueCount($condition)
    {
        
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::deleteGoodsSpec()
     */
    public function deleteGoodsSpec($spec_id)
    {
        
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::modifyGoodsSpecField()
     */
    public function modifyGoodsSpecField($spec_id, $field_name, $field_value)
    {
        
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::modifyGoodsSpecValueField()
     */
    public function modifyGoodsSpecValueField($spec_value_id, $field_name, $field_value)
    {
        
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::updateAttributeIsUse()
     */
    public function updateAttributeIsUse($attr_id, $is_use)
    {
        
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::getGoodsAttributeServiceList()
     */
    public function getAttributeServiceList($page_index = 1, $page_size = 0, $condition = '', $order = '', $field = '*')
    {
        
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::addGoodsAttributeService()
     */
    public function addAttributeService($attr_name, $is_use, $spec_id_array, $sort, $value_string, $brand_id_array)
    {
        
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::updateAttributeService()
     */
    public function updateAttributeService($attr_id, $attr_name, $is_use, $spec_id_array, $sort, $value_string, $brand_id_array)
    {
        
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::addAttributeValueService()
     */
    public function addAttributeValueService($attr_id, $attr_value_name, $type, $sort, $is_search, $value)
    {
        
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::getAttributeServiceDetail()
     */
    public function getAttributeServiceDetail($attr_id, $condition = '')
    {
        
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::getAttributeValueServiceList()
     */
    public function getAttributeValueServiceList($page_index = 1, $page_size = 0, $condition = '', $order = '', $field = '*')
    {
       
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::deleteAttributeService()
     */
    public function deleteAttributeService($attr_id)
    {
        
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::deleteAttributeValueService()
     */
    public function deleteAttributeValueService($attr_id, $attr_value_id)
    {
        
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::getGoodsAttrValueCount()
     */
    public function getGoodsAttrValueCount($condition)
    {
        
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::modifyAttributeValueService()
     */
    public function modifyAttributeValueService($attr_value_id, $field_name, $field_value)
    {
        
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::modifyAttributeFieldService()
     */
    public function modifyAttributeFieldService($attr_id, $field_name, $field_value)
    {
        
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::checkGoodsSpecValueNameIsUse()
     */
    public function checkGoodsSpecValueNameIsUse($spec_id, $value_name)
    {
        
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoods::getAttributeInfo()
     */
    public function getAttributeInfo($condition)
    {
  
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoods::getGoodsSpecQuery()
     */
    public function getGoodsSpecQuery($condition)
    {
       
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoods::getGoodsAttrSpecQuery()
     */
    public function getGoodsAttrSpecQuery($condition)
    {
        
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoods::getGoodsAttributeQuery()
     */
    public function getGoodsAttributeQuery($condition)
    {
        
    }

    /**
     * 回收课程的分页查询
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::getGoodsDeletedList()
     */
    public function getGoodsDeletedList($page_index = 1, $page_size = 0, $condition = '', $order = '')
    {
        // 针对课程分类
        if (! empty($condition['ng.category_id'])) {
            $course_class = new CourseClass();
            $category_list = $course_class->getCategoryTreeList($condition['ng.category_id']);
            $condition['ng.category_id'] = array(
                'in',
                $category_list
            );
        }
        $course_view = new NsCourseDeletedViewModel();
        $list = $course_view->getGoodsViewList($page_index, $page_size, $condition, $order);
        if (! empty($list['data'])) {
            // 用户针对课程的收藏
            foreach ($list['data'] as $k => $v) {
                if (! empty($this->uid)) {
                    $member = new Member();
                    $list['data'][$k]['is_favorite'] = $member->getIsMemberFavorites($this->uid, $v['goods_id'], 'goods');
                } else {
                    $list['data'][$k]['is_favorite'] = 0;
                }
                // 查询课程单品活动信息
                $goods_preference = new GoodsPreference();
                $goods_promotion_info = $goods_preference->getGoodsPromote($v['goods_id']);
                $list["data"][$k]['promotion_info'] = $goods_promotion_info;
            }
        }
        return $list;
    }

    /**
     * 课程恢复
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::regainGoodsDeleted()
     */
    public function regainGoodsDeleted($goods_ids)
    {
        $goods_array = explode(",", $goods_ids);
        $this->course->startTrans();
        try {
            foreach ($goods_array as $goods_id) {
                $course_delete_model = new NsCourseDeletedModel();
                $goods_delete_obj = $course_delete_model->getInfo([
                    "goods_id" => $goods_id
                ]);
                $goods_delete_obj = json_decode(json_encode($goods_delete_obj), true);
                $course_model = new NsCourseModel();
                $course_model->save($goods_delete_obj);
                $course_delete_model->where("goods_id=$goods_id")->delete();
                // sku 恢复
               /* $goods_sku_delete_model = new NsGoodsSkuDeletedModel();
                $sku_delete_list = $goods_sku_delete_model->getQuery([
                    "goods_id" => $goods_id
                ], "*", "");
                foreach ($sku_delete_list as $sku_obj) {
                    $sku_obj = json_decode(json_encode($sku_obj), true);
                    $sku_model = new NsGoodsSkuModel();
                    $sku_model->save($sku_obj);
                }
                $goods_sku_delete_model->where("goods_id=$goods_id")->delete();
                // 属性恢复
                $goods_attribute_delete_model = new NsGoodsAttributeDeletedModel();
                $attribute_delete_list = $goods_attribute_delete_model->getQuery([
                    "goods_id" => $goods_id
                ], "*", "");
                foreach ($attribute_delete_list as $attribute_delete_obj) {
                    $attribute_delete_obj = json_decode(json_encode($attribute_delete_obj), true);
                    $attribute_model = new NsGoodsAttributeModel();
                    $attribute_model->save($attribute_delete_obj);
                }
                $goods_attribute_delete_model->where("goods_id=$goods_id")->delete();*/
                // sku图片恢复
                /*$goods_sku_picture_delete = new NsGoodsSkuPictureDeleteModel();
                $goods_sku_picture_delete_list = $goods_sku_picture_delete->getQuery([
                    'goods_id' => $goods_id
                ], "*", "");*/
                /*foreach ($goods_sku_picture_delete_list as $goods_sku_picture_list_delete_obj) {
                    $goods_sku_picture = new NsGoodsSkuPictureModel();
                    $goods_sku_picture_list_delete_obj = json_decode(json_encode($goods_sku_picture_list_delete_obj), true);
                    $goods_sku_picture->save($goods_sku_picture_list_delete_obj);
                }
                $goods_sku_picture_delete->where("goods_id=$goods_id")->delete();*/
            }
            $this->course->commit();
            return SUCCESS;
        } catch (\Exception $e) {
            $this->course->rollback();
            return UPDATA_FAIL;
        }
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::copyGoodsInfo()
     */
    public function copyGoodsInfo($goods_id)
    {
        $goods_detail = $this->getGoodsDetail($goods_id);
        $res = $this->addOrEditGoods(
0, $goods_detail['goods_name'] . '-副本',$goods_detail['shop_id'], $goods_detail["category_id"],$goods_detail["category_id_1"]

, $goods_detail["category_id_2"], $goods_detail["category_id_3"], $goods_detail["group_id_array"], $goods_detail['goods_type'], $goods_detail["market_price"]

, $goods_detail["price"], $goods_detail["is_showprice"], $goods_detail["collects"], $goods_detail["evaluates"], $goods_detail["shares"]

, $goods_detail["picture"], $goods_detail['keywords'], $goods_detail["introduction"],$goods_detail["description"], $goods_detail['QRcode']

, $goods_detail["is_hot"], $goods_detail["is_recommend"], $goods_detail["is_new"],$goods_detail['sort'], $goods_detail["img_id_array"]

 , $goods_detail['extend_category_id'], $goods_detail["state"], $goods_detail['pc_custom_template'], $goods_detail['wap_custom_template'],$goods_detail['allow_delete']

 ,$goods_detail['mechanism_id'], $goods_detail['teacher_id'],$goods_detail['crowd'], $goods_detail['course_type'],$goods_detail['total_num']

 ,$goods_detail['release_num'],$goods_detail['price'],$goods_detail['goods_video_address']);
        return $res;
    }
    
    /**
     * 删除回收站课程
     *
     * @param unknown $goods_id            
     * @return string
     */
    public function deleteRecycleGoods($goods_id)
    {
        $course_delete = new NsCourseDeletedModel();
        $course_delete->startTrans();
        try {
            $res = $course_delete->where("goods_id in ($goods_id) and shop_id=$this->instance_id ")->delete();
            if ($res > 0) {
                $goods_id_array = explode(',', $goods_id);
                $course_catalogue_model = new NsCourseCatalogueModel();
                $course_catalogue = new CourseCatalogue();

                foreach ($goods_id_array as $k => $v) {
                    $catalogue = $course_catalogue_model->getQuery(['goods_id'=>$v],'catalogue_id','catalogue_id desc');
                    if(!empty($catalogue)){
                        foreach($catalogue as $vo){
                            $course_catalogue->deleteCourseCatalogue($v,$vo['catalogue_id']);
                        }
                    }
                    
                }
            }
            $course_delete->commit();
            if ($res > 0) {
                return SUCCESS;
            } else {
                return DELETE_FAIL;
            }
        } catch (\Exception $e) {
            $course_delete->rollback();
            return DELETE_FAIL;
        }
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoods::deleteCookieCart()删除cookie购物车
     */
    private function deleteCookieCart($cart_id_array)
    {
        
    }

    /**
     * 修改cookie购物车的数量
     *
     * @param unknown $cart_id            
     * @param unknown $num            
     * @return number
     */
    private function updateCookieCartNum($cart_id, $num)
    {
        
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoods::syncUserCart()
     */
    public function syncUserCart($uid)
    {
        
    }

    /**
     * 更改课程排序
     *
     * @param unknown $goods_id            
     * @param unknown $sort            
     * @return boolean
     */
    public function updateGoodsSort($goods_id, $sort)
    {
        $goods = new NsCourseModel();
        return $goods->save([
            'sort' => $sort
        ], [
            'goods_id' => $goods_id
        ]);
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoods::addGoodsSkuPicture()
     */
    public function addGoodsSkuPicture($shop_id, $goods_id, $spec_id, $spec_value_id, $sku_img_array)
    {
        
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoods::deleteGoodsSkuPicture()
     */
    public function deleteGoodsSkuPicture($condition)
    {
       
    }

    /**
     * 获取随机课程
     *
     * @ERROR!!!
     *
     * @see \data\api\IGoods::getRandGoodsList()
     */
    public function getRandGoodsList()
    {
        
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoods::getGoodsSkuQuery()
     */
    public function getGoodsSkuQuery($condition)
    {
        // TODO Auto-generated method stub
        $goods_sku_model = new NsGoodsSkuModel();
        $goods_query = $goods_sku_model->getQuery($condition, "goods_id", "");
        return $goods_query;
    }

    /**
     * 获取课程优惠劵
     */
    public function getGoodsCoupon($goods_id, $uid, $is_bespoke=0)
    {
        
    }
    
    /**
     * 设置点赞送积分
     */
    public function setGoodsSpotFabulous($shop_id, $uid, $goods_id)
    {
        
    }

    /**
     * 查询点赞状态
     *
     * @param unknown $shop_id            
     * @param unknown $uid            
     * @param unknown $goods_id            
     */
    public function getGoodsSpotFabulous($shop_id, $uid, $goods_id)
    {
        
    }

    /**
     * 修改课程名称或促销语
     */
    public function updateGoodsNameOrIntroduction($goods_id, $up_type, $up_content)
    {
       
    }

    /**
     * 修改课程属性表属性排序
     *
     * @ERROR!!!
     *
     * @see \data\api\IGoods::updateGoodsAttributeSort()
     */
    public function updateGoodsAttributeSort($attr_value_id, $sort, $shop_id)
    {
        
    }

    /**
     * 查询当前用户所购买的课程限购，是否能够继续购买
     * 1.查询当前课程是否限购
     * 2.如果该课程限购，则查询当前用户的订单项表中是否有该课程的记录
     *
     * @param 课程id $goods_id            
     * @param 店铺id $shop_id            
     * @return int，1：允许购买，0：不允许购买
     */
    function getGoodsPurchaseRestrictionForCurrentUser($goods_id, $num = 0, $flag = "")
    {
        
    }

    /**
     * 添加营销活动时获取课程列表
     *
     * @param unknown $page_index            
     * @param unknown $page_size            
     * @param unknown $condition            
     * @param unknown $order            
     * @param unknown $field            
     * @return number[]|unknown[]
     */
    public function getSelectGoodsList($page_index, $page_size, $condition, $order, $field)
    {
        
    }

    /**
     * 获取课程阶梯优惠
     *
     * @param unknown $condition            
     * @return unknown
     */
    public function getGoodsLadderPreferential($condition, $order = "", $filed = "*")
    {
        
    }

    /**
     * 获取购买数量满足条件的阶梯优惠信息
     *
     * @param unknown $goods_id            
     * @param unknown $num            
     */
    public function getGoodsLadderPreferentialInfo($goods_id, $num, $goods_price)
    {
       
    }
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoods::getGoodsBrowseList()
     */
    public function getGoodsBrowseList($page_index, $page_size, $condition, $order, $field = "*")
    {
        
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoods::addGoodsBrowse()
     */
    public function addGoodsBrowse($goods_id, $uid)
    {
        
    }
    /*
     * (non-PHPdoc)
     * @see \data\api\IGoods::deleteGoodsBrowse()
     */
    public function deleteGoodsBrowse($condition)
    {
       
    }

    /**
     * 根据条件、指定数量查询课程
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::getRecommendGoodsQuery()
     */
    public function getGoodsQueryLimit($condition, $field, $page_size = PAGESIZE, $order = "ng.sort asc")
    {
       
    }

    /**
     * 课程表视图，不关联任何表
     *
     * @param unknown $condition            
     * @param unknown $field            
     * @param unknown $order            
     */
    public function getGoodsViewQueryField($condition, $field, $order)
    {
        
    }

    /**
     * 获取课程查询数量，分页用
     *
     * @param unknown $condition            
     * @return unknown
     */
    public function getGoodsQueryCount($condition, $where_sql = "")
    {
        $goods_model = new NsCourseModel();
        $viewObj = $goods_model->alias('ng');
        if (! empty($where_sql)) {
            $count = $goods_model->viewCountNew($viewObj, $condition, $where_sql);
        } else {
            $count = $goods_model->viewCount($viewObj, $condition);
        }
        return $count;
    }

    /**
     * 后台课程列表
     *
     * @param number $page_index            
     * @param number $page_size            
     * @param string $condition            
     * @param string $order            
     * @return unknown|\think\cache\mixed
     */
    public function getBackStageGoodsList($page_index = 1, $page_size = 0, $condition = '', $order = 'ng.sort asc')
    {
        // $json = json_encode($condition);
        // $list_cache = Cache::tag("goods_service")->get("get_back_stage_goods_list" . $json . $page_index);
        // if (empty($list_cache)) {
        $goods_model = new NsCourseModel();
        // 针对课程分类
        if (! empty($condition['ng.category_id'])) {
            $goods_category = new CourseClass();
            
            // 获取当前课程分类的子分类
            $category_list = $goods_category->getCategoryTreeList($condition['ng.category_id']);
            unset($condition['ng.category_id']);
            $query_goods_ids = "";
            $goods_list = $this->getGoodsViewQueryField($condition, "ng.goods_id", "");
            if (! empty($goods_list) && count($goods_list) > 0) {
                foreach ($goods_list as $goods_obj) {
                    if ($query_goods_ids === "") {
                        $query_goods_ids = $goods_obj["goods_id"];
                    } else {
                        $query_goods_ids = $query_goods_ids . "," . $goods_obj["goods_id"];
                    }
                }
                $extend_query = "";
                $category_str = explode(",", $category_list);
                foreach ($category_str as $category_id) {
                    if ($extend_query === "") {
                        $extend_query = " FIND_IN_SET( " . $category_id . ",ng.extend_category_id) ";
                    } else {
                        $extend_query = $extend_query . " or FIND_IN_SET( " . $category_id . ",ng.extend_category_id) ";
                    }
                }
                $condition = " ng.goods_id in (" . $query_goods_ids . ") and ( ng.category_id in (" . $category_list . ") or " . $extend_query . ")";
            }
        }
        $viewObj = $goods_model->alias("ng")
            ->join('sys_album_picture ng_sap', 'ng_sap.pic_id = ng.picture', 'left')
            ->field("ng.tune_num,ng.collects,ng.shares,ng.goods_id,ng.goods_name,ng.promotion_price,ng.crowd,ng.total_num,ng.release_num,ng.market_price,ng.goods_type,ng.introduction,ng.state,ng.is_hot,ng.score,ng.is_recommend,ng.is_new,ng.is_showprice,ng.sales,ng_sap.pic_cover,ng_sap.pic_cover_micro,ng.create_time,ng.QRcode,ng.price,ng.real_sales,ng.sort,ng.group_id_array,ng.allow_delete");
        $queryList = $goods_model->viewPageQuery($viewObj, $page_index, $page_size, $condition, $order);
        $queryCount = $this->getGoodsQueryCount($condition);
        $list = $goods_model->setReturnList($queryList, $queryCount, $page_size);
        
        // Cache::tag("goods_service")->set("get_back_stage_goods_list" . $json . $page_index, $list);
        return $list;
        // } else {
        // return $list_cache;
        // }
    }

    /**
     * 优化过后的课程列表
     *
     * @param number $page_index            
     * @param number $page_size            
     * @param string $condition            
     * @param string $order            
     * @return unknown|\think\cache\mixed
     */
    public function getGoodsListNew($page_index = 1, $page_size = 0, $condition = '', $order = 'ng.sort asc')
    {
        
    }

    /**
     * 修改课程点击量
     * (non-PHPdoc)
     *
     * @see \data\api\IGoods::updateGoodsClicks()
     */
    public function updateGoodsClicks($goods_id)
    {
        
    }

    /**
     * 通过课程标签数组获取课程标签
     *
     * @param unknown $goods_group_id_array            
     */
    public function getGoodsTabByGoodsGroupId($goods_group_id_str)
    {
        if (! empty($goods_group_id_str)) {
            $ns_group = new NsGoodsGroupModel();
            $goods_tab_arr = $ns_group->getQuery([
                'group_id' => [
                    "in",
                    $goods_group_id_str
                ]
            ], "group_id, group_name", "");
            return $goods_tab_arr;
        }
        return array();
    }

    /**
     * 通过课程id获取课程sku列表
     *
     * @param unknown $goods_id            
     */
    public function getGoodsSkuListByGoodsId($goods_id)
    {

    }

    /**
     * 课程批量处理
     *
     * @param unknown $info            
     */
    public function batchProcessingGoods($info)
    {
        
    }

    /**
     * 获取规格信息
     * 
     * @param unknown $condition            
     * @return unknown
     */
    public function getGoodsSpecInfoQuery($condition)
    {
       
    }

    public function deleteSpecValue($condition)
    {
        
    }
    
    /**
     * 单个字段数值加或减
     * @param  [type] $goods_id   [description]
     * @param  [type] $field_name [description]
     * @param  [type] $status     [description]
     * @return [type]             [description]
     */
    public function updateFiledNum($goods_id,$field_name,$status=1,$num=1)
    {
        $course = new NsCourseModel();
        if($status==1){ //加
            $return = $course->where(['goods_id'=>$goods_id])->setInc($field_name,$num);
            return $return;
        }elseif($status==2){ //减
            $count = $course->getInfo(['goods_id'=>$goods_id],$field_name);
            if($count[$field_name]>0){
                $return = $course->where(['goods_id'=>$goods_id])->setDec($field_name,$num);
            }else{
                $return = $course->ModifyTableField('goods_id',$goods_id,$field_name,0);
            }
            
            return $return;
        }
        return false;
    }
}