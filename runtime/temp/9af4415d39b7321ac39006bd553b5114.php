<?php if (!defined('THINK_PATH')) exit(); /*a:5:{s:40:"template/wap\default_new\Goods\cart.html";i:1537405970;s:34:"template/wap\default_new\base.html";i:1544512053;s:38:"template/wap\default_new\urlModel.html";i:1531183592;s:41:"template/wap\default_new\controGroup.html";i:1543281343;s:36:"template/wap\default_new\footer.html";i:1543281644;}*/ ?>
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

<link rel="stylesheet" href="__TEMP__/<?php echo $style; ?>/public/css/order.css">
<link rel="stylesheet" type="text/css" href="__TEMP__/<?php echo $style; ?>/public/css/cart.css">
<script src="__TEMP__/<?php echo $style; ?>/public/js/cart.js" type="text/javascript"></script>
<script type="text/javascript" src="__TEMP__/<?php echo $style; ?>/public/js/weixincommon.js"></script>
<style>
	.group img{
		margin-top: 0!important;
	}
	input{
		appearance:none;
    	-moz-appearance:none;
	    -webkit-appearance:none; 
	    outline: none;
	    -moz-outline: none;
	    -webkit-outline: none;
	}
	.num{
		border-radius: 0;
		-webkit-border-radius: 0;
		border-left: 1px;
		-webkit-border-left: 1px;
		box-shadow: none;
		margin-left: -1px;
		margin-right: -1px;
	}
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
	<a class="head_back" id="head_back" href="javascript:window.history.go(-1)"><i class="icon-back"></i></a>
	<div class="head-title"><span style="margin-left: 40px;"><?php echo lang('goods_cart'); ?></span><style>
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
</script></div>
</section>

	
	<!-- showBox弹出框 -->
	<div class="motify" style="display: none;">
		<i class="show_type warning"></i>
		<div class="motify-inner"><?php echo lang('pop_up_prompt'); ?></div>
	</div>

	
<div class="popup" id="popup" style="display: none"></div>
<div class="h50"></div>
<div class="cart-detail">
	<section class="cart-prolist">
		<ul class="cart-prolist-ul" style="border: 0;">
		<?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): if( count($list)==0 ) : echo "" ;else: foreach($list as $i=>$cart): $shop_info= explode(",",$i); ?>
			<li data-parent-shopid="<?php echo $shop_info[0]; ?>">
				<h2 class="title">
					<div class="custom-store-img"></div>
					<?php echo lang('shop_name'); ?>：<?php echo $title; ?>
					<div class="cart_ed" >
						<a id="cart_edit<?php echo $shop_info[0]; ?>" data-shopid="<?php echo $shop_info[0]; ?>" onclick="cart_edit(this,<?php echo $shop_info[0]; ?>)" style="display: block;"><?php echo lang('edit'); ?></a>
						<a id="edit_success<?php echo $shop_info[0]; ?>" onclick="cart_succ(this,<?php echo $shop_info[0]; ?>)" style="display: none;"><?php echo lang('member_complete'); ?></a>
					</div>
				</h2>
			</li>
			<?php if(is_array($cart) || $cart instanceof \think\Collection || $cart instanceof \think\Paginator): if( count($cart)==0 ) : echo "" ;else: foreach($cart as $k=>$list): ?>
			<li class="cart-list-li" data-shopid="<?php echo $list['shop_id']; ?>">
				<div class="checkbox" is_check="yes" is_del='no'></div>
				<div class="product">
					<div class="pic">
						<a href="<?php echo __URL('APP_MAIN/goods/goodsdetail?id='.$list['goods_id']); ?>">
							<img src="<?php echo __IMG($default_goods_img); ?>" class="lazy_load" data-original="<?php echo __IMG($list['picture_info']['pic_cover_small']); ?>" alt="<?php echo lang('goods_image'); ?>">
						</a>
					</div>
					<div class="info">
						<p class="info-name">
							<a href="<?php echo __URL('APP_MAIN/goods/goodsdetail?id='.$list['goods_id']); ?>"><?php echo $list['goods_name']; ?><span><br />
							<?php if(!(empty($list['sku_name']) || (($list['sku_name'] instanceof \think\Collection || $list['sku_name'] instanceof \think\Paginator ) && $list['sku_name']->isEmpty()))): ?>
							规格：<?php echo $list['sku_name']; endif; ?></span></a>
						</p>
						<!-- 	<p class="info-price">
						¥<span name="goods_price"><?php echo $list['price']; ?></span>
							<?php if($list['point_exchange_type']==1): ?>
							<span name="goods_integral" data-point="<?php echo $list['point_exchange']; ?>">
								<?php if($list['point_exchange']>0): ?>
									+<?php echo $list['point_exchange']; ?>积分
								<?php endif; ?>
							</span>
							<?php endif; ?>
						</p> -->
						<div class="number">
							¥<span name="goods_price" data-price="<?php echo $list['price']; ?>"><?php echo $list['price']; ?></span>
							<?php if($list['point_exchange_type']==1): ?>
							<span name="goods_integral" data-point="<?php echo $list['point_exchange']; ?>">
								<?php if($list['point_exchange']>0): ?>
									+<?php echo $list['point_exchange']; ?><?php echo lang('goods_integral'); endif; ?>
							</span>
							<?php endif; ?>
							<div name="edit_num<?php echo $list['shop_id']; ?>" style="display: inline-block;float: right;position: absolute;bottom: 10px;right: 20px;">
								<span class="ui-number">
									<button type="button" class="decrease" onclick="Cart.changeBar(&#39;-&#39;,<?php echo $list['cart_id']; ?>,this,<?php echo $list['goods_id']; ?>)" title="<?php echo lang('member_reduce'); ?>">-</button>
									<input class="num" name="quantity" autocomplete="off" data-default-num="<?php echo $list['num']; ?>" value="<?php echo $list['num']; ?>" min="1" max="<?php echo $list['stock']; ?>" min_buy="<?php echo $list['min_buy']; ?>"  max_buy="<?php echo $list['max_buy']; ?>" data-cartid="<?php echo $list['cart_id']; ?>" data-shopid="<?php echo $list['shop_id']; ?>">
									<button type="button" class="increase" onclick="Cart.changeBar(&#39;+&#39;,<?php echo $list['cart_id']; ?>,this,<?php echo $list['goods_id']; ?>)" title="<?php echo lang('plus'); ?>">+</button>
								</span>
								<span name="succ_amount" style="display: none;"><?php echo $list['num']; ?></span>
							</div>
						</div>
					</div>
				</div>
			</li>
			<?php endforeach; endif; else: echo "" ;endif; endforeach; endif; else: echo "" ;endif; ?>
		</ul>
	</section>
</div>
<input type="hidden" id="countlist" value="<?php echo $countlist; ?>">
<input type="hidden" id="goods_ladder_preferential" value='<?php echo $goods_ladder_preferential; ?>'>
<section class="cart-none" id="cart-none" style="display: none">
	<i class="cart-big"></i>
	<p class="text"><?php echo lang('your_shopping_cart_is_not_available_yet'); ?>！</p>
	<?php if($shop_id ==0): ?>
	<a href="<?php echo __URL('APP_MAIN'); ?>" class="btn"><?php echo lang('go_for_a_stroll'); ?></a>
	<?php else: ?>
	<a href="<?php echo __URL('APP_MAIN/shop/index?shop_id='.$shop_id); ?>" class="btn"><?php echo lang('go_for_a_stroll'); ?></a>
	<?php endif; ?>
</section>

	<!-- 微信登录弹出绑定手机号遮罩层 -->
	
<?php if(!(empty($list) || (($list instanceof \think\Collection || $list instanceof \think\Paginator ) && $list->isEmpty()))): ?>
<div class="fixed bottom">
	<div class="btn_wrap btn_wrap_static">
		<div class="btn ttn_server" id="div_selected">
			<div style="float: left;height: 20px;width: 20px;padding-left:10px;">
				<img src="__TEMP__/<?php echo $style; ?>/public/images/cartp2.png" is_check="yes" is_del="no" id="select_all" style="width:100%;"/>
			</div>
			<span id="sel_text"><?php echo lang('goods_select_all'); ?></span>
		</div>
		<div id="price_info">
			<?php echo lang('summation'); ?>： ¥<span id="orderprice" class="price"></span>
			<br />
			<!-- <span style="color: #999;">不含运费</span> -->
		</div>
		<button class="btn btn_buy" onclick="settlement()">
			<span id="settlement"><?php echo lang('settle_accounts'); ?>()</span>
		</button>
	</div>
</div>
<?php else: ?>
<div style="height:58px;"></div>
<!-- 底部菜单 -->
<style>
.nav-b5 span{
	color: #7a7e83;
}  
.spanActive{
	color:#fff;
}
</style>
<div class="fixed bottom">
	<div class="distribution-tip" id="distribution-tip" style="display: none;"></div>
	<dl class="sub-nav nav-b5" style="background: #111;">
		<dd id="bottom_home">
			<a href="<?php echo __URL('APP_MAIN'); ?>">
				<div class="nav-b5-relative">
					<img src="__TEMP__/<?php echo $style; ?>/public/images/home_check.png"/>
					<span><?php echo lang('home_page'); ?></span>
				</div>
			</a>
		</dd>
		<dd id="bottom_classify">
			<a href="<?php echo __URL('APP_MAIN/goods/goodsclassificationlist'); ?>">
				<div class="nav-b5-relative">
					<img src="__TEMP__/<?php echo $style; ?>/public/images/classify_uncheck.png"/>
					<span><?php echo lang('category'); ?></span>
				</div>
			</a>
		</dd>
		<dd id="bottom_cart">
			<a href="<?php echo __URL('APP_MAIN/goods/cart'); ?>">
				<div class="nav-b5-relative">
					<img src="__TEMP__/<?php echo $style; ?>/public/images/cart_uncheck.png"/>
					<span><?php echo lang('goods_cart'); ?></span>
				</div>
			</a>
		</dd>
		<dd id="bottom_member">
			<a href="<?php echo __URL('APP_MAIN/member/index'); ?>">
				<div class="nav-b5-relative">
					<img src="__TEMP__/<?php echo $style; ?>/public/images/user_uncheck.png"/>
					<span><?php echo lang('member_member_center'); ?></span>
				</div>
			</a>
		</dd>
	</dl>
</div>
<?php endif; ?>
<div class="h60"></div>
<script type="text/javascript">
var isPageHide = false;
window.addEventListener('pageshow', function () {
	if (isPageHide) location.href=__URL("APP_MAIN/goods/cart");
});
window.addEventListener('pagehide', function () {
	isPageHide = true;
});

var cart1 = "__TEMP__/<?php echo $style; ?>/public/images/cartp1.png";
var cart2 = "__TEMP__/<?php echo $style; ?>/public/images/cartp2.png";
//页面加载触发事件
$(function () {
	if(parseInt($("#countlist").val()) == 0){
		$(".cart-prolist").hide();
		$("#cart-none").show();
		// $(".fixed.bottom").hide();
	}
	bottomActive("#bottom_cart");
});
</script>
<script type="text/javascript">
$("#head_back").click(function (){
	var json ={ "center" : "2" }
	window.webkit.messageHandlers.center.postMessage(json);
});
</script>

	
	<input type="hidden" value="<?php echo $uid; ?>" id="uid"/>
	<!-- 加载弹出层 -->
	<div class="mask-layer-loading">
		<img src="__TEMP__/<?php echo $style; ?>/public/images/mask_load.gif"/>
	</div>
	
</body>
</html>