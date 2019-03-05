<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:44:"template/course\default_new\Index\index.html";i:1546669703;s:39:"template/course\default_new\header.html";i:1545876327;s:39:"template/course\default_new\footer.html";i:1546484966;}*/ ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>美发课程</title>
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link rel="shortcut  icon" type="image/x-icon" href="__TEMP__/<?php echo $style; ?>/public/images/favicon.ico" media="screen"/>
    <link rel="stylesheet" href="__TEMP__/<?php echo $style; ?>/public/mui/css/mui.min.css">
    <link rel="stylesheet" href="__TEMP__/<?php echo $style; ?>/public/css/fapinkc.css">
    <script src="__TEMP__/<?php echo $style; ?>/public/js/jquery-1.8.3.min.js"></script>
    <script src="__TEMP__/<?php echo $style; ?>/public/js/showBox.js"></script>
    <script src="ADMIN_JS/layer/layer.js"></script>
    <script src="__STATIC__/js/common.js"></script>
    <script>
	function __URL(url)
	{
	    url = url.replace('SHOP_MAIN', '');
	    url = url.replace('APP_MAIN', 'wap');
	    if(url == ''|| url == null){
	        return 'SHOP_MAIN';
	    }else{
	        var str=url.substring(0, 1);
	        if(str=='/' || str=="\\"){
	            url=url.substring(1, url.length);
	        }
	        if($("#root_rewrite_model").val()==1 || $("#root_rewrite_model").val()==true){
	            return 'SHOP_MAIN/'+url;
	        }
	        var action_array = url.split('?');
	        //检测是否是pathinfo模式
	        url_model = $("#root_url_model").val();
	        if(url_model==1 || url_model==true)
	        {
	            var base_url = 'SHOP_MAIN/'+action_array[0];
	            var tag = '?';
	        }else{
	            var base_url = 'SHOP_MAIN?s=/'+ action_array[0];
	            var tag = '&';
	        }
	        if(action_array[1] != '' && action_array[1] != null){
	            return base_url + tag + action_array[1];
	        }else{
	             return base_url;
	        }
	    }
	}
	/**
	 * 处理图片路径
	 */
	function __IMG(img_path){
	    var path = "";
	    if(img_path != undefined && img_path != ""){
	        if(img_path.indexOf("http://") == -1 && img_path.indexOf("https://") == -1){
	            path = "__UPLOAD__\/"+img_path;
	        }else{
	            path = img_path;
	        }
	    }
	    return path;
	}
	</script>
</head>
<body>
<div class="tophei">
    <div class="r">
        <a href="<?php echo $customservice_config['value']['service_addr']; ?>"><i class="icon icon-kf"></i></a>
    </div>
    <div class="search">
        <i class="icon fdj" id="submint"></i>
        <a href="javascript:;"><i class="icon gb"></i></a>
        <input type="text" placeholder="输入关键字" value="" class="lz-input" id="search_keyword">
    </div>
    <div class="mui-scroll-wrapper mui-slider-indicator mui-segmented-control mui-segmented-control-inverted nav">
        <div class="mui-scroll">
            <a href="<?php echo __URL('COURSE_MAIN/Index/Index'); ?>" class="mui-control-item mui-active">
                推荐
            </a>
            <?php if(is_array($class_list) || $class_list instanceof \think\Collection || $class_list instanceof \think\Paginator): $i = 0; $__LIST__ = $class_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
            <a href="<?php echo __URL('COURSE_MAIN/Index/class_index&category_id='.$vo['category_id']); ?>" class="mui-control-item">
                <?php echo $vo['category_name']; ?>
            </a>
            <?php endforeach; endif; else: echo "" ;endif; ?>
        </div>
    </div>
</div>
<div class="topcontent clearfix">
    <div id="sliderx" class="mui-slider">
        <div class="mui-slider-group mui-slider-loop">
            <div class="mui-slider-item mui-slider-item-duplicate">
                <a href="<?php echo $adv['adv_url']; ?>">
                    <img src="<?php echo $adv['adv_image']; ?>">
                </a>
            </div>
            <!-- 第一张 -->
            <?php if($plat_adv_list['is_use'] == 1): if($plat_adv_list['adv_list'][0]['adv_image'] != ''): if(is_array($plat_adv_list['adv_list']) || $plat_adv_list['adv_list'] instanceof \think\Collection || $plat_adv_list['adv_list'] instanceof \think\Paginator): if( count($plat_adv_list['adv_list'])==0 ) : echo "" ;else: foreach($plat_adv_list['adv_list'] as $key=>$v): ?>
                    <div class="mui-slider-item">
                        <a href="<?php echo $v['adv_url']; ?>">
                            <img src="<?php echo __IMG($v['adv_image']); ?>" alt="<?php echo lang('carousel_figure'); ?>">
                        </a>
                    </div>
                    <?php endforeach; endif; else: echo "" ;endif; endif; endif; ?>
            <div class="mui-slider-item mui-slider-item-duplicate">
                <a href="<?php echo $plat_adv_list['adv_list']['0']['adv_image']; ?>">
                    <img src="<?php echo __IMG($plat_adv_list['adv_list']['0']['adv_image']); ?>">
                </a>
            </div>
        </div>
        <div class="mui-slider-indicator">
            <?php if($plat_adv_list['is_use'] == 1): if($plat_adv_list['adv_list'][0]['adv_image'] != ''): if(is_array($plat_adv_list['adv_list']) || $plat_adv_list['adv_list'] instanceof \think\Collection || $plat_adv_list['adv_list'] instanceof \think\Paginator): if( count($plat_adv_list['adv_list'])==0 ) : echo "" ;else: foreach($plat_adv_list['adv_list'] as $k=>$v): ?>
                       <div class="mui-indicator <?php if($k == 0): ?>mui-active<?php endif; ?>"></div>
                   <?php endforeach; endif; else: echo "" ;endif; endif; endif; ?>
        </div>
    </div>
</div>
<div class="classify clearfix  ">
    <ul>
        <li><a href="<?php echo __URL('COURSE_MAIN/courses/kc_more&name=is_recommend'); ?>"><img src="__TEMP__/<?php echo $style; ?>/public/images/course1.png"><br>推荐课程 </a></li>
        <li><a href="<?php echo __URL('COURSE_MAIN/courses/kc_more&name=is_hot'); ?>"><img src="__TEMP__/<?php echo $style; ?>/public/images/course2.png"><br>热门课程</a></li>
        <li><a href="<?php echo __URL('COURSE_MAIN/courses/kc_more&name=is_new'); ?>"><img src="__TEMP__/<?php echo $style; ?>/public/images/course3.png"><br>最新课程</a></li>
        <li><a href="<?php echo __URL('COURSE_MAIN/Index/mechanism_list'); ?>"><img src="__TEMP__/<?php echo $style; ?>/public/images/course4.png"><br>合作机构</a></li>
        <li><a href="<?php echo __URL('COURSE_MAIN/courses/special_list'); ?>"><img src="__TEMP__/<?php echo $style; ?>/public/images/course5.png"><br>专题课程</a></li>
    </ul>
</div>
<div class="rush-buy ">
    <div class="cousetop">
        <a href="kc_more.html">
            <div class="wzbt">推荐课程</div>
            <div class="more"><a href="<?php echo __URL('COURSE_MAIN/courses/kc_more&name=is_recommend'); ?>">更多></a></div>
        </a>
    </div>
    <div class="mui-slider cg">
        <div class="mui-scroll-wrapper mui-slider-indicator mui-segmented-control mui-segmented-control-inverted">
            <div class="mui-scroll">
                <?php if(is_array($recommend_list['data']) || $recommend_list['data'] instanceof \think\Collection || $recommend_list['data'] instanceof \think\Paginator): $k = 0; $__LIST__ = $recommend_list['data'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$recommend): $mod = ($k % 2 );++$k;?>
                <a href="<?php echo __URL('COURSE_MAIN/courses/coursedetail&id='.$recommend['goods_id']); ?>" class="mui-control-item <?php if($k == 1): ?>mui-active<?php endif; ?>">
                    <?php if($recommend['picture_info']): ?>
                    <img src="<?php echo __IMG($recommend['picture_info']['pic_cover']); ?>" class="photo-img">
                    <?php else: ?>
                    <img src="__TEMP__/<?php echo $style; ?>/public/images/temp/noImg.png" class="photo-img">
                    <?php endif; ?>
                    <div class="juli">
                        <div class="ssbt">
                            <div class="l"><span class="fashion-tab"><?php echo $recommend['goods_group_name']['0']; ?></span></div>
                            <div class="r"><i class="icon icon-star"></i><span class="juse"><?php echo $recommend['score']; ?></span></div>
                        </div>
                        <div class="course-bt"><?php echo $recommend['goods_name']; ?></div>
                        <div class="zhineng"><?php echo $recommend['introduction']; ?></div>
                        <div class="clearfix rel">
                            <!-- <div class="listen"><?php echo $recommend['tune_num']; ?>人收听</div> -->
                            <div class="price"  style="height: 1.5rem;"><?php if($recommend['is_showprice'] == 1): ?>￥<?php echo $recommend['price']; endif; ?></div>
                        </div>
                    </div>
                </a>
                <?php endforeach; endif; else: echo "" ;endif; ?>

            </div>
        </div>
    </div>
</div>

<style>
.hot-buy img {
    width: 100%;
    height:154px;
    display: block;
}
.hot-buy1 img {
    height:76px;
}
.more a{
    color:#333;
}
</style>
<div class="danpin">
    <div class="fapin-bt rel">
        <a href="kc_more.html">
            <img src="__TEMP__/<?php echo $style; ?>/public/images/hotbt.png">
            <div class="more"><a href="<?php echo __URL('COURSE_MAIN/courses/kc_more&name=is_hot'); ?>">更多></a></div>
        </a>
    </div>
    <div class="hot-buy clearfix">
        <div class="hot-buy2 l rel">
          <?php if($hot_list['hot_one']): ?>
            <a href="<?php echo __URL('COURSE_MAIN/courses/coursedetail&id='.$hot_list['hot_one']['goods_id']); ?>">
                <?php if($hot_list['hot_one']['picture_info']['pic_cover']): ?>
                <img src="<?php echo __IMG($hot_list['hot_one']['picture_info']['pic_cover']); ?>">
                <?php else: ?>
                <img src="__TEMP__/<?php echo $style; ?>/public/images/temp/noImg.png">
                <?php endif; ?>
            </a>
          <?php endif; ?>
        </div>
        <div class="hot-buy3 r rel">
            <div class="clearfix hot-buy4">
                <div class="hot-buy1 l rel">
                   <?php if($hot_list['data']['1']): ?>
                    <a href="<?php echo __URL('COURSE_MAIN/courses/coursedetail&id='.$hot_list['data']['1']['goods_id']); ?>">
                        <?php if($hot_list['data']['1']['picture_info']['pic_cover']): ?>
                        <img src="<?php echo __IMG($hot_list['data']['1']['picture_info']['pic_cover']); ?>">
                        <?php else: ?>
                        <img src="__TEMP__/<?php echo $style; ?>/public/images/temp/noImg.png">
                        <?php endif; ?>
                    </a>
                    <?php endif; ?>
                </div>
                <div class="hot-buy1 r rel">
                    <?php if($hot_list['data']['2']): ?>
                    <a href="<?php echo __URL('COURSE_MAIN/courses/coursedetail&id='.$hot_list['data']['2']['goods_id']); ?>">
                        <?php if($hot_list['data']['2']['picture_info']['pic_cover']): ?>
                        <img src="<?php echo __IMG($hot_list['data']['2']['picture_info']['pic_cover']); ?>">
                        <?php else: ?>
                        <img src="__TEMP__/<?php echo $style; ?>/public/images/temp/noImg.png">
                        <?php endif; ?>
                    </a>
                    <?php endif; ?>
                </div>
            </div>
            <div class="clearfix">
                <div class="hot-buy1 l rel">
                    <?php if($hot_list['data']['3']): ?>
                    <a href="<?php echo __URL('COURSE_MAIN/courses/coursedetail&id='.$hot_list['data']['3']['goods_id']); ?>">
                        <?php if($hot_list['data']['3']['picture_info']['pic_cover']): ?>
                        <img src="<?php echo __IMG($hot_list['data']['3']['picture_info']['pic_cover']); ?>">
                        <?php else: ?>
                        <img src="__TEMP__/<?php echo $style; ?>/public/images/temp/noImg.png">
                        <?php endif; ?>
                    </a>
                    <?php endif; ?>
                </div>
                <div class="hot-buy1 r rel">
                    <?php if($hot_list['data']['4']): ?>
                    <a href="<?php echo __URL('COURSE_MAIN/courses/coursedetail&id='.$hot_list['data']['4']['goods_id']); ?>">
                        <?php if($hot_list['data']['4']['picture_info']['pic_cover']): ?>
                        <img src="<?php echo __IMG($hot_list['data']['4']['picture_info']['pic_cover']); ?>">
                        <?php else: ?>
                        <img src="__TEMP__/<?php echo $style; ?>/public/images/temp/noImg.png">
                        <?php endif; ?>
                    </a>
                    <?php endif; ?>
                </div>
            </div>

        </div>
    </div>
</div>
<div class="rush-buy ">
    <div class="cousetop">
        <a href="kc_more.html">
            <div class="wzbt">最新课程</div>
            <div class="more"><a href="<?php echo __URL('COURSE_MAIN/courses/kc_more&name=is_new'); ?>">更多></a></div>
        </a>
    </div>
    <div class="new-course">
        <ul>
           <?php if(is_array($new_list['data']) || $new_list['data'] instanceof \think\Collection || $new_list['data'] instanceof \think\Paginator): $i = 0; $__LIST__ = $new_list['data'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$new): $mod = ($i % 2 );++$i;?>
            <li class="mui-table-view-cell">
                <a href="<?php echo __URL('COURSE_MAIN/courses/coursedetail&id='.$new['goods_id']); ?>">
                    <?php if($new['picture_info']): ?>
                    <div class="img-jq l" style="background-image: url('<?php echo __IMG($new['picture_info']['pic_cover']); ?>')"></div>
                    <?php else: ?>
                    <div class="img-jq l" style="background-image: url('__TEMP__/<?php echo $style; ?>/public/images/temp/noImg.png')"></div>
                    <?php endif; ?>
                    <div class="juli">
                        <div class="ssbt">
                            <div class="l"><span class="fashion-tab"><?php echo $new['goods_group_name']['0']; ?></span></div>
                            <div class="r"><i class="icon icon-star"></i><span class="juse"><?php echo $new['score']; ?></span></div>
                        </div>
                        <div class="course-bt"><?php echo $new['goods_name']; ?></div>
                        <div class="zhineng"><?php echo $new['introduction']; ?></div>
                        <div class="clearfix rel">
                            <!-- <div class="listen"><?php echo $new['tune_num']; ?>人收听</div> -->
                            <div class="price" style="height: 1.5rem;"><?php if($new['is_showprice'] == 1): ?>￥<?php echo $new['price']; endif; ?></div>
                        </div>
                    </div>
                </a>
            </li>
            <?php endforeach; endif; else: echo "" ;endif; ?>
            
        </ul>
    </div>

</div>
<div class="danpin">
    <div class="cousetop">
        <a href="ztkc.html">
            <div class="wzbt">专题课程</div>
            <div class="more"><a href="<?php echo __URL('COURSE_MAIN/courses/special_list'); ?>">更多></a></div>
        </a>
    </div>
    <div class="mui-slider  cg zt">
        <div class="mui-scroll-wrapper mui-slider-indicator mui-segmented-control mui-segmented-control-inverted">
            <div class="mui-scroll">
                <?php if(is_array($special_list['data']) || $special_list['data'] instanceof \think\Collection || $special_list['data'] instanceof \think\Paginator): $ks = 0; $__LIST__ = $special_list['data'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$special): $mod = ($ks % 2 );++$ks;?>
                <a href="<?php echo __URL('COURSE_MAIN/courses/specialdetail&id='.$special['category_id']); ?>" class="mui-control-item <?php if($ks == 1): ?>mui-active<?php endif; ?>">
                    <?php if($special['category_pic']): ?>
                    <img src="<?php echo __IMG($special['category_pic']); ?>" class="photo-img">
                    <?php else: ?>
                    <img src="__TEMP__/<?php echo $style; ?>/public/images/temp/noImg.png" class="photo-img">
                    <?php endif; ?>

                </a>
                <?php endforeach; endif; else: echo "" ;endif; ?>

            </div>
        </div>
    </div>
</div>
<div class="danpin">
    <div class="cousetop">
        <div class="wzbt">合作机构</div>
    </div>
    <div class="mui-slider  cg hz">
        <div class="mui-scroll-wrapper mui-slider-indicator mui-segmented-control mui-segmented-control-inverted">
            <div class="mui-scroll">
                <?php if(is_array($mechanism_list) || $mechanism_list instanceof \think\Collection || $mechanism_list instanceof \think\Paginator): $km = 0; $__LIST__ = $mechanism_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$mechanism): $mod = ($km % 2 );++$km;?>
                <a href="<?php echo __URL('COURSE_MAIN/Index/mechanismdetail&id='.$mechanism['mechanism_id']); ?>" class="mui-control-item <?php if($km == 1): ?>mui-active<?php endif; ?>">
                    <?php if($mechanism['mechanism_pic']): ?>
                    <img src="<?php echo __IMG($mechanism['mechanism_pic']); ?>" class="photo-img hz-img">
                    <?php else: ?>
                    <img src="__TEMP__/<?php echo $style; ?>/public/images/temp/noImg.png" class="photo-img hz-img">
                    <?php endif; ?>
                    <?php echo $mechanism['mechanism_name']; ?>

                </a>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </div>
        </div>
    </div>
</div>

<!-- 底部菜单 -->
<div class="foot-gap"></div>
<div class="foot ">
    <ul>
        <li>
            <a href="<?php echo __URL('COURSE_MAIN/Index/Index'); ?>" class="<?php if($fthis == 1): ?>active<?php endif; ?>">
                <span class="icon icon-ft1"></span>
                <div class="mui-media-body">首页</div>
            </a>
        </li>
        <li>
            <a href="<?php echo __URL('COURSE_MAIN/Member/my_course'); ?>" class="<?php if($fthis == 2): ?>active<?php endif; ?>">
                <span class="icon icon-ft2"></span>
                <div class="mui-media-body">我的课程</div>
            </a>
        </li>
        <li>
            <a href="<?php echo __URL('COURSE_MAIN/Member/Index'); ?>" class="<?php if($fthis == 3): ?>active<?php endif; ?>">
                <span class="icon icon-ft3"></span>
                <div class="mui-media-body">个人中心</div>
            </a>
        </li>

    </ul>
</div>
<script src="__TEMP__/<?php echo $style; ?>/public/mui/js/mui.js"></script>
<script type="text/javascript">
    mui('body').on('tap', 'a', function () {
        document.location.href = this.href;
    })
    mui('body').on('tap', '#submint', function () {
        var search = $("#search_keyword").val();
        var url="<?php echo __URL('COURSE_MAIN/courses/kc_more&name=search'); ?>&search="+search;
        document.location.href = url;
    })
</script>
<script type="text/javascript" charset="utf-8">
    var gallery = mui('.mui-slider');
    gallery.slider({
        interval: 5000//自动轮播周期，若为0则不自动播放，默认为0；
    });
</script>
</body>
</html>