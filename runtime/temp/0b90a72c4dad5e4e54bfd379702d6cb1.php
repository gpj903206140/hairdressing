<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:41:"template/wap\default_new\Index\index.html";i:1545371975;s:49:"template/wap\default_new\Index\controlCoupon.html";i:1519781267;s:38:"template/wap\default_new\urlModel.html";i:1531183592;}*/ ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title><?php if($title_before != ''): ?><?php echo $title_before; ?>&nbsp;-&nbsp;<?php endif; ?><?php echo $platform_shopname; if($seoconfig['seo_title'] != ''): ?>-<?php echo $seoconfig['seo_title']; endif; ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link rel="shortcut  icon" type="image/x-icon" href="__TEMP__/<?php echo $style; ?>/public/images/favicon.ico" media="screen"/>
    <link rel="stylesheet" href="__TEMP__/<?php echo $style; ?>/public/Index/mui/css/mui.min.css">
    <link rel="stylesheet" href="__TEMP__/<?php echo $style; ?>/public/Index/css/fapin.css">

	<link rel="stylesheet" type="text/css" href="__TEMP__/<?php echo $style; ?>/public/css/showbox.css">
	<link rel="stylesheet" href="__TEMP__/<?php echo $style; ?>/public/css/layer.css" id="layuicss-skinlayercss">
	<script type="text/javascript" src="__TEMP__/<?php echo $style; ?>/public/js/layer.js"></script>
	<script src="__TEMP__/<?php echo $style; ?>/public/Index/js/jquery-1.8.3.min.js"></script>
	<script src="__TEMP__/<?php echo $style; ?>/public/js/jquery.lazyload.js"></script>
	<script src="__TEMP__/<?php echo $style; ?>/public/js/showBox.js"></script>
	<script type="text/javascript">
	var CSS = "__TEMP__/<?php echo $style; ?>/public/css";
	var APPMAIN='APP_MAIN';
	var UPLOADAVATOR = 'UPLOAD_AVATOR';//存放用户头像
	var UPLOADCOMMON = 'UPLOAD_COMMON';
	var SHOPMAIN = "SHOP_MAIN";
	var UPLOADCOMMENT = '<?php echo UPLOAD_COMMENT; ?>';// 存放评论
	var temp = "__TEMP__/";//外置JS调用
	var STATIC = "__STATIC__";
	$(function(){
		img_lazyload();
	});

	//图片懒加载
	function img_lazyload(){
		$("img.lazy_load").lazyload({
			threshold : 0,
			effect : "fadeIn", //淡入效果
			skip_invisible : false
		})
	}
	</script>
    <style>
	body{max-width: 640px;}
	body .sub-nav.nav-b5 dd i {margin: 3px auto 5px auto;}
	body .fixed.bottom {bottom: 0;}
	.mask-layer-loading{position: fixed;width: 100%;height: 100%;z-index: 999999;top: 0;left: 0;text-align: center;display: none;}
	.mask-layer-loading i,.mask-layer-loading img{text-align: center;color:#000000;font-size:50px;position: relative;top:50%;}
	.sub-nav.nav-b5 dd{width:25%;font-size:14px;}

	.footer{
		display:none;
	}
	.foot-nav{
		border:none;
	}
	</style>
</head>

<body>
<div class="tophei">
    <div class="r">
        <a href="<?php echo $customservice_config['value']['service_addr']; ?>"><i class="icon icon-kf"></i></a>
    </div>
    <div class="search">
        <i class="icon fdj custom-search-button"></i>
        <a href="javascript:;"><i class="icon gb"></i></a>
        <input type="text" placeholder="<?php echo lang('search_goods'); ?>" class="lz-input custom-search-input">

    </div>
    <div class="mui-scroll-wrapper mui-slider-indicator mui-segmented-control mui-segmented-control-inverted nav">
        <div class="mui-scroll">
            <?php if(count($goodsCategoryList) > 0): if(is_array($goodsCategoryList) || $goodsCategoryList instanceof \think\Collection || $goodsCategoryList instanceof \think\Paginator): if( count($goodsCategoryList)==0 ) : echo "" ;else: foreach($goodsCategoryList as $ck=>$cvo): ?>
		            <a class="mui-control-item <?php if($ck == 0): ?>mui-active<?php endif; ?>" href="<?php echo __URL('APP_MAIN/goods/goodslist&category_id?category_id='.$cvo['category_id']); ?>">
		                <?php echo $cvo['category_name']; ?>
		            </a>
	            <?php endforeach; endif; else: echo "" ;endif; endif; ?>
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
<div class="classify clearfix fg-line ">
    <ul>
        <?php if(count($navigation_list) > 0): if(is_array($navigation_list) || $navigation_list instanceof \think\Collection || $navigation_list instanceof \think\Paginator): if( count($navigation_list)==0 ) : echo "" ;else: foreach($navigation_list as $key=>$vo): if($vo['nav_type'] == 0): ?>
				<li><a href="<?php echo __URL('APP_MAIN'.$vo['nav_url']); ?>">
				<?php else: ?>
				<li><a href="<?php echo $vo['nav_url']; ?>">
				<?php endif; ?>
					<img src="<?php echo __IMG($vo['nav_icon']); ?>"><br><?php echo $vo['nav_title']; ?>
				</a></li>
			<?php endforeach; endif; else: echo "" ;endif; endif; ?>
    </ul>
</div>
	<!-- 优惠券领取 -->
	<?php if(count($coupon_list) > '0'): ?>
	<style>
.coupon-container{
	padding:10px 0;
	background: #fff;
	margin: 10px 0;
}
.coupon-container .coupon-title{
	width: 70%;
	text-align: center;
	margin: 0 auto;
}

.coupon-container .coupon-title img{
	width: 100%;
}
.coupon-container .coupon-all{   
    white-space: nowrap;
    overflow-y: auto;
    padding: 10px 0 0 0;
}
.coupon-container .coupon-all::-webkit-scrollbar {
	display: none;
}
.coupon-container .coupon-all .receive-coupons{
	width: 31.3%;
	height: 70px;
	display: inline-block;
	float: left;
	background: #f23c3c url("__TEMP__/<?php echo $style; ?>/public/images/index_coupon_bg.png") no-repeat;
	background-size:  100% 100%;
	margin-left: 1.5%;
	color: #fff;
	text-align: center;
}
.coupon-container .coupon-all .receive-coupons.received{
	background: #aaa url("__TEMP__/<?php echo $style; ?>/public/images/index_coupon_bg.png") no-repeat;
	background-size:  100% 100%;
}
.coupon-container .coupon-all .receive-coupons big.money-number{
    display: block;
    margin: 0;
    padding-top: 8px;
    line-height: 22px;
    font-size: 21px;
    color: #fff;
    text-align: center;
}
.coupon-container .coupon-all .receive-coupons p.explanation{
	display: block;
    margin: 0;
    font-size: 12px;
    color: rgba(255,255,255,.7);
    text-align: center;
}

.coupon-container .coupon-all .receive-coupons span.get{    
	line-height: 16px;
    font-size: 14px;
    position: relative;
    color: rgba(255,255,255,.7);
}
.coupon-container .coupon-all .receive-coupons span.get:before,
.coupon-container .coupon-all .receive-coupons span.get:after{
	content: "";
	background: rgba(255,255,255,.7);
	width: 8px;
	height: 1px;
	position: absolute;
	top: 50%;
	
}
.coupon-container .coupon-all .receive-coupons span.get:before{
	left: -10px;
}
.coupon-container .coupon-all .receive-coupons span.get:after{
	right: -10px;
}
</style>

<div class="coupon-container">
	<div class="coupon-title">
		<img src="__TEMP__/<?php echo $style; ?>/public/images/coupon_title_bg.png" alt="">
	</div>
	<div  class="coupon-all">
		<?php if(is_array($coupon_list) || $coupon_list instanceof \think\Collection || $coupon_list instanceof \think\Paginator): $i = 0; $__LIST__ = $coupon_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
		<div class="receive-coupons" data-max-fetch="<?php echo $vo['max_fetch']; ?>" data-received-num="<?php if(!empty($uid)): ?><?php echo $vo['received_num']; else: ?>0<?php endif; ?>" onclick="coupon_receive(this,<?php echo $vo['coupon_type_id']; ?>)">
			<big class="money-number">￥<?php echo $vo['money']; ?></big>
			<p class="explanation">满<?php echo $vo['at_least']; ?>可用</p>
			<span class="get">领取</span>
		</div>
		<?php endforeach; endif; else: echo "" ;endif; ?>
	</div>
</div>

<script type="text/javascript">
var is_have = true;
function coupon_receive(event,coupon_type_id){
	var info = new Array();
		info['maxFetch'] = $(event).attr("data-max-fetch");
		info['receivedNum'] = $(event).attr("data-received-num");
		
	if(is_have){
		is_have = false;
		$.ajax({
			type:"post",
			url : "<?php echo __URL('APP_MAIN/index/getCoupon'); ?>",
			async: false,
			dataType:"json",
			data:{ 'coupon_type_id' : coupon_type_id },
			success : function(data){
				if(data['code']>0){
					showBox("恭喜您，领取成功！","success");
					is_have = true;
					var received_num = parseInt(info['receivedNum']) + 1; // 该用户已领取数
					$(event).attr("data-received-num", received_num);
					
					if(info['maxFetch'] > 0 && received_num >= info['maxFetch']){
						$(event).find(".get").text("已领取");
						$(event).addClass("received");
					}
				}else if(data['code'] == -2009){
					location.href="<?php echo __URL('APP_MAIN/login/index'); ?>";
				}else{
					showBox(data['message'],"warning");
					is_have = true;
				}
			}
		})
	} 
}
</script>
	<?php endif; ?> 
		<style>
      .coupon-container{
      	    margin: 0px 0 10px 0;
      }
	</style>
<div class="rush-buy fg-line">
    <div class="fapin-bt">
        <a href="<?php echo __URL('APP_MAIN/index/discount'); ?>"><img src="__TEMP__/<?php echo $style; ?>/public/Index/images/bt1.png"></a>
    </div>
    <div class="mui-slider cg">
        <div class="mui-scroll-wrapper mui-slider-indicator mui-segmented-control mui-segmented-control-inverted">
            <div class="mui-scroll">
                <?php if(is_array($discount_list) || $discount_list instanceof \think\Collection || $discount_list instanceof \think\Paginator): $k = 0; $__LIST__ = $discount_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?>
				
                <a class="mui-control-item mui-active" href="<?php echo __URL('APP_MAIN/goods/goodsdetail?id='.$vo['goods_id']); ?>">
                    <img src="<?php echo __IMG($vo['picture']['pic_cover_small']); ?>" class="photo-img">
                    <div class="zhineng"><?php echo $vo['goods_name']; ?></div>
                    <div class="clearfix">

                        <div class="price">￥<?php echo $vo['promotion_price']; ?></div>
                    </div>
                </a>
                
			<?php endforeach; endif; else: echo "" ;endif; ?>
            </div>
        </div>
    </div>
</div>
<div class="rush-buy fg-line">
    <div class="fapin-bt">
        <img src="__TEMP__/<?php echo $style; ?>/public/Index/images/bt2.png"></a>
    </div>
    <div class="hot-buy clearfix">
        <div class="hot-buy2 l rel">
            <a href="<?php echo __URL('APP_MAIN/index/topSelling?category_id='.$goodsCategoryList['0']['category_id']); ?>">
                <div class="jt"><i class="icon icon-jt"></i></div>
                <img src="__TEMP__/<?php echo $style; ?>/public/Index/images/temp/ph1.jpg">
            </a>
        </div>
        <div class="hot-buy3 r rel">
            <div class="hot-buy4 rel">
                <a href="<?php echo __URL('APP_MAIN/index/topSelling?category_id='.$goodsCategoryList['1']['category_id']); ?>">
                    <div class="jt"><i class="icon icon-jt"></i></div>
                    <img src="__TEMP__/<?php echo $style; ?>/public/Index/images/temp/ph2.jpg">
                </a>
            </div>
            <div class="clearfix">
                <div class="hot-buy1 l rel">
                    <a href="<?php echo __URL('APP_MAIN/index/topSelling?category_id='.$goodsCategoryList['2']['category_id']); ?>">
                        <div class="jt"><i class="icon icon-jt"></i></div>
                        <img src="__TEMP__/<?php echo $style; ?>/public/Index/images/temp/ph3.jpg">
                    </a>
                </div>
                <div class="hot-buy1 r rel">
                    <a href="<?php echo __URL('APP_MAIN/index/topSelling?category_id='.$goodsCategoryList['3']['category_id']); ?>">
                        <div class="jt"><i class="icon icon-jt"></i></div>
                        <img src="__TEMP__/<?php echo $style; ?>/public/Index/images/temp/ph4.jpg">
                    </a>
                </div>
            </div>

        </div>
    </div>
</div>
<div class="rush-buy fg-line">
    <div class="fapin-bt">
        <img src="__TEMP__/<?php echo $style; ?>/public/Index/images/bt3.png">
    </div>
    <?php if(is_array($CategoryGoodsList) || $CategoryGoodsList instanceof \think\Collection || $CategoryGoodsList instanceof \think\Paginator): $cat = 0; $__LIST__ = $CategoryGoodsList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$cate): $mod = ($cat % 2 );++$cat;if(count($cate['goods']) > 0): ?>
    <div class="rushbuy-bank">
        <div class="adv-banner"><img src="<?php echo __IMG($cate['category_pic']); ?>" class="big-banner"></div>
        <div class="mui-slider cg">
            <div class="mui-scroll-wrapper mui-slider-indicator mui-segmented-control mui-segmented-control-inverted">
                <div class="mui-scroll">
                    <?php if(is_array($cate['goods']) || $cate['goods'] instanceof \think\Collection || $cate['goods'] instanceof \think\Paginator): $gk = 0; $__LIST__ = $cate['goods'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$g): $mod = ($gk % 2 );++$gk;?>
                    <a class="mui-control-item mui-active" href="<?php echo __URL('APP_MAIN/goods/goodsdetail?id='.$g['goods_id']); ?>" >
                        <div class="photo-bk">
                            <img src="<?php echo __IMG($g['pic_cover_small']); ?>" class="photo-img"></div>
                        <div class="zhineng"><?php echo $g['goods_name']; ?>111</div>
                        <div class="clearfix">
                            <div class="price">￥<?php echo $g['promotion_price']; ?></div>
                        </div>
                    </a>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                </div>
            </div>
        </div>
    </div>
    <?php endif; endforeach; endif; else: echo "" ;endif; ?>
</div>
<div class="danpin">
    <div class="fapin-bt">
        <img src="__TEMP__/<?php echo $style; ?>/public/Index/images/bt4.png">
    </div>
    <div class="dp-list clearfix">
        <ul>
		    <?php if(is_array($hot_list['data']) || $hot_list['data'] instanceof \think\Collection || $hot_list['data'] instanceof \think\Paginator): $hk = 0; $__LIST__ = $hot_list['data'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$hvo): $mod = ($hk % 2 );++$hk;?>
	            <li>
	                <div class="jingsai-lvtu">
	                    <a href="<?php echo __URL('APP_MAIN/goods/goodsdetail?id='.$hvo['goods_id']); ?>" class="clearfix">
	                        <div ><img src="<?php echo __IMG($hvo['pic_cover_small']); ?>" class="jingsaiimg"></div>
	                        <div class="zhineng"><?php echo $hvo['goods_name']; ?></div>
	                        <div class="clearfix">
	                            <div class="price">￥<?php echo $hvo['promotion_price']; ?><span class="shanchu"><?php echo $hvo['market_price']; ?></span></div>
	                        </div>
	                    </a>
	                </div>

	            </li>
            <?php endforeach; endif; else: echo "" ;endif; ?>
        </ul>
    </div>
</div>
<div class="foot-gap"></div>
<div class="foot ">
    <ul>
        <li>
            <a href="<?php echo __URL('APP_MAIN'); ?>" class="active">
                <span class="icon icon-ft1"></span>
                <div class="mui-media-body"><?php echo lang('home_page'); ?></div>
            </a>
        </li>
        <li>
            <a href="<?php echo __URL('APP_MAIN/goods/goodsclassificationlist'); ?>">
                <span class="icon icon-ft2"></span>
                <div class="mui-media-body"><?php echo lang('category'); ?></div>
            </a>
        </li>
        <li>
            <a href="<?php echo __URL('APP_MAIN/goods/cart'); ?>">
                <span class="icon icon-ft3"></span>
                <div class="mui-media-body"><?php echo lang('goods_cart'); ?></div>
            </a>
        </li>
        <li>
            <a href="<?php echo __URL('APP_MAIN/member/index'); ?>">
                <span class="icon icon-ft4"></span>
                <div class="mui-media-body"><?php echo lang('member_member_center'); ?></div>
            </a>
        </li>

    </ul>
</div>
<input type="hidden" id="root_rewrite_model" value="<?php echo rewrite_model(); ?>">
<input type="hidden" id="root_url_model" value="<?php echo url_model(); ?>">
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
<script src="__TEMP__/<?php echo $style; ?>/public/js/public_assembly.js"></script>
<script src="__TEMP__/<?php echo $style; ?>/public/Index/mui/js/mui.js"></script>
<!-- showBox弹出框 -->
<div class="motify" style="display: none;">
	<i class="show_type warning"></i>
	<div class="motify-inner"><?php echo lang('pop_up_prompt'); ?></div>
</div>

<script type="text/javascript">
    mui('body').on('tap', 'a', function () {
        document.location.href = this.href;
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