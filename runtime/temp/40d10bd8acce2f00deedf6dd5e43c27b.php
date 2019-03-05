<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:46:"template/wap\default_new\Index\topSelling.html";i:1543215013;s:34:"template/wap\default_new\base.html";i:1544512053;s:38:"template/wap\default_new\urlModel.html";i:1531183592;s:41:"template/wap\default_new\controGroup.html";i:1543281343;}*/ ?>
<!DOCTYPE html>
<html>
<head>
<meta name="renderer" content="webkit" />
<meta http-equiv="X-UA-COMPATIBLE" content="IE=edge,chrome=1"/>
<meta content="text/html; charset=UTF-8">
<meta name="viewport" content="initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<title><?php if($title_before != ''): ?><?php echo $title_before; ?>&nbsp;-&nbsp;<?php endif; ?><?php echo $platform_shopname; if($seoconfig['seo_title'] != ''): ?>-<?php echo $seoconfig['seo_title']; endif; ?></title>
<meta name="keywords" content="<?php echo $seoconfig['seo_meta']; ?>" />
<meta name="description" content="<?php echo $seoconfig['seo_desc']; ?>"/>
<link rel="shortcut  icon" type="image/x-icon" href="__TEMP__/<?php echo $style; ?>/public/images/favicon.ico" media="screen"/>
<link rel="stylesheet" type="text/css" href="__TEMP__/<?php echo $style; ?>/public/css/pre_foot.css">
<link rel="stylesheet" type="text/css" href="__TEMP__/<?php echo $style; ?>/public/css/pro-detail.css">
<link rel="stylesheet" type="text/css" href="__TEMP__/<?php echo $style; ?>/public/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="__TEMP__/<?php echo $style; ?>/public/css/showbox.css">
<link rel="stylesheet" href="__TEMP__/<?php echo $style; ?>/public/css/layer.css" id="layuicss-skinlayercss">
<script src="__TEMP__/<?php echo $style; ?>/public/js/showBox.js"></script>
<script src="__TEMP__/<?php echo $style; ?>/public/js/jquery.js"></script>
<script src="__TEMP__/<?php echo $style; ?>/public/js/jquery.lazyload.js"></script>
<script type="text/javascript" src="__TEMP__/<?php echo $style; ?>/public/js/layer.js"></script>
<script src="__STATIC__/js/load_task.js" type="text/javascript"></script>
<script src="__STATIC__/js/load_bottom.js" type="text/javascript"></script>
<script src="__STATIC__/js/time_common.js" type="text/javascript"></script>
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

//页面底部选中
function bottomActive(event){
	clearButton();
	if(event == "#bottom_home"){
		$("#bottom_home").find("img").attr("src","__TEMP__/<?php echo $style; ?>/public/images/home_check.png");
		$(".nav-b5").find("span").removeClass("spanActive");
		$("#bottom_home").find("span").addClass("spanActive");
	}else if(event == "#bottom_classify"){
		$("#bottom_classify").find("img").attr("src","__TEMP__/<?php echo $style; ?>/public/images/classify_check.png");
		$(".nav-b5").find("span").removeClass("spanActive");
		$("#bottom_classify").find("span").addClass("spanActive");
	}else if(event == "#bottom_stroe"){
		$("#bottom_stroe").find("img").attr("src","__TEMP__/<?php echo $style; ?>/public/images/store_check.png");
		$(".nav-b5").find("span").removeClass("spanActive");
		$("#bottom_stroe").find("span").addClass("spanActive");
	}else if(event == "#bottom_cart"){
		$("#bottom_cart").find("img").attr("src","__TEMP__/<?php echo $style; ?>/public/images/cart_check.png");
		$(".nav-b5").find("span").removeClass("spanActive");
		$("#bottom_cart").find("span").addClass("spanActive");
	}else if(event == "#bottom_member"){
		$("#bottom_member").find("img").attr("src","__TEMP__/<?php echo $style; ?>/public/images/user_check.png");
		$(".nav-b5").find("span").removeClass("spanActive");
		$("#bottom_member").find("span").addClass("spanActive");
	}
}

function clearButton(){
	$("#bottom_home").find("img").attr("src","__TEMP__/<?php echo $style; ?>/public/images/home_uncheck.png");
	$("#bottom_classify").find("img").attr("src","__TEMP__/<?php echo $style; ?>/public/images/classify_uncheck.png");
	$("#bottom_stroe").find("img").attr("src","__TEMP__/<?php echo $style; ?>/public/images/store_uncheck.png");
	$("#bottom_cart").find("img").attr("src","__TEMP__/<?php echo $style; ?>/public/images/cart_uncheck.png");
	$("#bottom_member").find("img").attr("src","__TEMP__/<?php echo $style; ?>/public/images/user_uncheck.png");
}

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
.body-gray .head{
	background: #111;
	color:#fff;
}
.head-title .controlSearch .control-search-input .search-input{
	background: none;
}
.head-title .controlSearch .control-search-input{
    background: #313131;
}
.head .head-title span,.head .head-title{
	color:#fff;
}
.head-title .group{
	background: none;
	border-left:none;
}
.icon-good, .icon-share, .icon-server, .icon-back, .icon-cart, .icon-home {
    color: #fff;
}

/*后加的*/
#cart-none a.btn,.body-gray .button.red {
    background: #006ab6;
    border: 1px solid #006ab6;
}
.body-gray .goodsCategoryList .all_goods,#divInfo .button-submit button,#saveBtn button,.body-gray .btn-save ,.com_content .coupon-contianer .coupon-item,.body-gray .a_button {
    background: #006ab6;
}
.body-gray .cf-container .cf-tab-item.select a{
	    border-bottom: 2px solid #006ab6;
	    color: #5dbbff;
}
.body-gray .member_head p.info-content-bottom span,.body-gray .team-info .role_name{
	color: #5dbbff;
}
.body-gray .member_head p.info-content-bottom span mark.level,.body-gray .no {
    border: 1px solid #5dbbff;
    color: #fff;
    background: #006ab6;
}
.body-gray .bro-spare .number-big {
    text-shadow: 1px 2px 0 #006ab6;
}
.body-gray .new-btn,.body-gray .orange-btn{
    background: #111;
}
.body-gray .new-btn .desc {
    color: #fff;
}
/*.body-gray i.goods_tab {
    background: #006ab6;
}*/
</style>

<link rel="stylesheet" type="text/css" href="__TEMP__/<?php echo $style; ?>/public/css/components.css">
<link rel="stylesheet" type="text/css" href="__TEMP__/<?php echo $style; ?>/public/css/group_goods_list.css">
<link rel="stylesheet" type="text/css" href="__TEMP__/<?php echo $style; ?>/public/css/group_buy.css">
<style>
.custom-tag-list{margin-bottom:10px;}
.group-list-box{width:100%;}
.group-list-box .group-list li {width: 43%;float: left;margin: 0 3px 5px 3px;}
.brand-info .brand-info-right .main-btn {font-size: 12px;}
.slick {max-height: 175px;}
.custom-tag-list {margin-top: 0;}
.slick{margin-bottom: 10px;}
.custom-tag-list{padding-top:0;}
.group-list-box .group-list li .brand-name{text-align: left;}
</style>

</head>
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
<body class="body-gray" style="margin:auto;">
	
<section class="head">
	<a class="head_back" href="javascript:window.history.go(-1)"><i class="icon-back"></i></a>
	<div class="head-title"><span style="margin-left: 40px;"><?php echo lang("goods_topSelling"); ?></span>
	<style>
*{
	padding:0;
	margin:0;
}
.group{
	display: inline-block;
	width: 44px;
	height: 44px;
	background: #F7F7F7;
	float: right;
	text-align: center;
	border-left: 1px solid #F7F7F7;
}
.group img{
	width: 20px;
	margin-top: 15px;
}
.group-child{
	position: absolute;
	z-index: 10;
	width: 100%;
	height: 60px;
	background: #fff;
	margin-top: 1px;
	border-bottom: 1px solid #E2E2E2;
	display: none;
}
.group-child ul.gorup-nav{
	width: 100%;
}
.group-child ul.gorup-nav li{
	display: inline-block;
	width: 25%;
	height: 59px;
	float: left;
	text-align: center;
}
.group-child ul.gorup-nav li a{
	position: static;
	display: block;
}
.group-child ul.gorup-nav li a div{
	text-align: center;
	height: 54px;
	padding-top: 5px;
}
.group-child ul.gorup-nav li a div img{
	width: 25px;
	height: 25px;
	display: block;
	margin:5px auto 0 auto;
}
.group-child ul.gorup-nav li a div span.nav_name{
	font-size: 13px!important;
	height: 15px;
	display: block;
	color: #979899;
	margin-top: -10px;
}
</style>
<div class="group" data-show="false">
	<img src="__TEMP__/<?php echo $style; ?>/public/images/group.png" alt="">
</div>
<div class="group-child">
	<ul class="gorup-nav">
		<li>
			<a href="<?php echo __URL('APP_MAIN'); ?>">
				<div>
					<img src="__TEMP__/<?php echo $style; ?>/public/images/home_uncheck.png"/>
					<span class="nav_name"><?php echo lang('home_page'); ?></span>
				</div>
			</a>
		</li>
		<li>
			<a href="<?php echo __URL('APP_MAIN/goods/goodsclassificationlist'); ?>">
				<div>
					<img src="__TEMP__/<?php echo $style; ?>/public/images/classify_uncheck.png"/>
					<span class="nav_name"><?php echo lang('category'); ?></span>
				</div>
			</a>
		</li>
		<li>
			<a href="<?php echo __URL('APP_MAIN/goods/cart'); ?>">
				<div>
					<img src="__TEMP__/<?php echo $style; ?>/public/images/cart_uncheck.png"/>
					<span class="nav_name"><?php echo lang('goods_cart'); ?></span>
				</div>
			</a>
		</li>
		<li>
			<a href="<?php echo __URL('APP_MAIN/member/index'); ?>">
				<div>
					<img src="__TEMP__/<?php echo $style; ?>/public/images/user_uncheck.png"/>
					<span class="nav_name"><?php echo lang('member_member_center'); ?></span>
				</div>
			</a>
		</li>
	</ul>
</div>
<script>
	$(".group").click(function(){
			if($(this).attr("data-show") == "false"){
				//$(this).css({"background":"#fff","border-bottom":"1px solid #fff","border-left":"1px solid #E2E2E2"});
				$(".group-child").slideDown();
				$(this).attr("data-show","true");
			}else{
				//$(this).css({"background":"#F7F7F7","border-bottom":"none","border-left":"1px solid #F7F7F7"});
				$(".group-child").slideUp();
				$(this).attr("data-show","false");
			}
			
		}
	)
</script>
	</div>
</section>
<div style="height: 45px;"></div>
<input type="hidden" id="page_count"><!-- 总页数 -->
<input type="hidden" id="page" value="1"><!-- 当前页数 -->
<input type="hidden" id="ms_time" value="<?php echo $ms_time; ?>"/>

	
	<!-- showBox弹出框 -->
	<div class="motify" style="display: none;">
		<i class="show_type warning"></i>
		<div class="motify-inner"><?php echo lang('pop_up_prompt'); ?></div>
	</div>

	
<div class="custom-tag-list clearfix">
	<div class="group-list-box">
		<?php if($discounts_adv['is_use'] == 1): if($discounts_adv['adv_list'][0]['adv_image'] != ''): ?>
			<div class="slick">
				<a href="<?php echo $discounts_adv['adv_list'][0]['adv_url']; ?>">
					<img src="<?php echo __IMG($discounts_adv['adv_list'][0]['adv_image']); ?>" style="max-width: 100%;max-height: 100%;">
					<!-- style="height:<?php echo $discounts_adv['ap_height']; ?>px;" -->
				</a>
			</div>
		   <?php endif; endif; ?>
		<ul class="group-list" style="overflow: hidden;"></ul>
	</div>
<script>
$(function(){
	showCategorySecond(0,0,1);
})

var is_load = true;
function showCategorySecond(obj,category_id,page){
	//设置选中效果
	if($(obj).length!=0){
		$(".custom-tag-list-side-menu li a").removeClass("selected");
		$(obj).addClass("selected");
	}
	if(is_load){
		is_load = false;
		$.ajax({
			type : "get",
			url:'<?php echo __URL('APP_MAIN/Index/topSelling'); ?>',
			async:false,
			data:{'category_id':"<?php echo $category_id; ?>","page":page},
			dataType:'json',
			success:function(data){
				is_load = true;
				$("#page_count").val(data['page_count']);
				$("#page").val(page);
				if(page == 1){
					var list_html='';
				}else if(page > 1){
					var list_html = $('.group-list').html();
				}
			
				if(data['data'].length==0){
					$('.group-list').html('<p style="color:#939393;text-align:center;margin-top:100px;"><img src="__TEMP__/<?php echo $style; ?>/public/images/wap_nodata.png" height="60" style="margin-bottom:20px;"><br>Sorry！<?php echo lang("goods_no_goods_you_want"); ?>…</p>');
				}else{
					for(key in data['data']){
						var item=data['data'][key];
						var img = "";
						if(item.pic_cover_small != null){
							img = item.pic_cover_small;
							var default_goods_img=__IMG(img);
						}else{
							var default_goods_img="<?php echo __IMG($default_goods_img); ?>";
						}
						list_html+='<li>'
							+'<div class="p-img">'
							+'<a href="'+__URL('APP_MAIN/goods/goodsdetail?id='+item.goods_id)+'" title="'+item.goods_name+'">'
							+'<img src="'+default_goods_img+'" class="lazy_load" data-original="'+__IMG(img)+'">'
							+'</a>'
							+'</div>'
							+'<span class="brand-name">'+item.goods_name+'</span>'
							+'<div class="brand-info"  style="height:initial;">'
							+'<div class="brand-info-left"  style="float:none;">'
							+'<p class="b-price" style="float:left;margin:5px 0;">'+item.display_price+'</p>';
							list_html+= '<p class="buyer" style="float:right;line-height:30px;"><?php echo lang("goods_sales_volume"); ?>: '+item.sales+'</p>';	
							list_html+= '</div>'
							list_html+= '</div></li>';
					}
					$('.group-list').html(list_html);
				}
				img_lazyload();	
			}
		});
	}
}

//滑动到底部加载
$(window).scroll(function(){
	var totalheight = parseFloat($(window).height()) + parseFloat($(window).scrollTop());
	var content_box_height = parseFloat($(".group-list-box").height());
	if(totalheight - content_box_height >= 50){
		if(is_load){
			var page = parseInt($("#page").val()) + 1;//页数
			var total_page_count = $("#page_count").val(); // 总页数
			var sear_type = $("#sear_type").val();
			if(page > total_page_count){
				return false;
			}else{
				showCategorySecond(0,0,page);
			}
		}
	}
})
</script>
</div>

	<!-- 微信登录弹出绑定手机号遮罩层 -->
	
	
	<input type="hidden" value="<?php echo $uid; ?>" id="uid"/>
	<!-- 加载弹出层 -->
	<div class="mask-layer-loading">
		<img src="__TEMP__/<?php echo $style; ?>/public/images/mask_load.gif"/>
	</div>
	
</body>
</html>