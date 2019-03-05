<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:50:"template/wap\default_new\Member\memberAddress.html";i:1519973936;s:34:"template/wap\default_new\base.html";i:1544512053;s:38:"template/wap\default_new\urlModel.html";i:1531183592;}*/ ?>
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

<link rel="stylesheet" type="text/css" href="__TEMP__/<?php echo $style; ?>/public/css/common-v4.4.css">
<link rel="stylesheet" type="text/css" href="__TEMP__/<?php echo $style; ?>/public/css/member_address.css">
<style>
.addr-box {
	padding-top: 0px;
	text-align: center;
}

.addr-tip {
	font-size: 14px;
	color: #8f8f8f;
	margin-top: 10px;
}

.btn-save {
	margin-top: 40px;
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
		<a class="head_back" href="javascript:window.history.go(-1)"><i class="icon-back"></i></a>
		<div class="head-title"></div>
	</section>
	
	
	<!-- showBox弹出框 -->
	<div class="motify" style="display: none;">
		<i class="show_type warning"></i>
		<div class="motify-inner"><?php echo lang('pop_up_prompt'); ?></div>
	</div>

	
<input type="hidden" id="ref_url" value="<?php echo $pre_url; ?>">
<input type="hidden" value="<?php echo $flag; ?>" id="hidden_flag" />
<section class="head">
	<?php if($flag==1): ?>
	<a class="head_back" id="backoutapp" href="<?php echo __URL('APP_MAIN/member/index'); ?>"><i class="icon-back"></i></a>
	<?php elseif($flag==4): ?>
	<a class="head_back" id="backoutapp"  href="<?php echo __URL('APP_MAIN/PintuanOrder/paymentorder'); ?>"><i class="icon-back"></i></a>
	<?php else: ?>
	<a class="head_back" id="backoutapp"  href="<?php echo __URL('APP_MAIN/order/paymentorder'); ?>"><i class="icon-back"></i></a>
	<?php endif; ?>
	<div class="head-title"><?php echo lang('my_delivery_address'); ?></div>
</section>
<ul class="side-nav address" id="ul" style="background: #eee; padding: 0">
	<?php if(is_array($list['data']) || $list['data'] instanceof \think\Collection || $list['data'] instanceof \think\Paginator): if( count($list['data'])==0 ) : echo "" ;else: foreach($list['data'] as $k=>$address): if($address['is_default'] == '1'): ?>
	<li id="<?php echo $address['id']; ?>" class="current" style="margin-bottom: 5px; background: #fff; padding: 0; margin-top: 10px;">
	<?php else: ?>
	<li id="<?php echo $address['id']; ?>" style="margin-bottom: 5px; margin-top: 5px; background: #fff; padding: 0; margin-top: 10px;">
	<?php endif; ?>
	<div style="background: url('__TEMP__/<?php echo $style; ?>/public/images/border_order_top.png'); height: 2px"></div>
		<div class="div-simply" style="display: inline-block; width: 100%; padding: 5px; border-bottom: 1px solid #e2e2e2;">
			<span class="payStatus"><?php echo lang('member_receiving_information'); ?>：</span>
			<span class="payStatus"><span class="name"><?php echo $address['consigner']; ?>&nbsp;&nbsp;</span></span>
			<div style="display: inline-block; float: right;">
				<a href="<?php echo __URL('APP_MAIN/member/updatememberaddress?id='.$address['id'].'&flag='.$flag); ?>" style="display: inline-block; float: right;">【<?php echo lang('member_modify'); ?>】</a>
				<?php if(count($list) > 1): ?>
					<a href="javascript:void(0);" onclick="address_delete(<?php echo $address['id']; ?>,<?php echo $address['is_default']; ?>);" style="display: inline-block; float: right;">【<?php echo lang('goods_delete'); ?>】</a>
				<?php endif; ?>
			</div>
		</div>
		<div class="div-simply" style="display: inline-block; width: 100%; padding: 5px;border-bottom: 1px solid #e2e2e2;" onclick='selectAddress(<?php echo $address['id']; ?>,this)'>
			<span class="payStatus"><?php echo lang('member_phone_number'); ?>：</span>
			<span class="payStatus"><span class="mobile"><?php echo $address['mobile']; ?></span></span>
		</div>
		<a href="javascript:void(0)" class="classnone" style="padding: 5px;" id="mo" onclick='selectAddress(<?php echo $address['id']; ?>,this)'>
			<span class="payStatus"><?php echo lang('member_detailed_address'); ?>：</span>
			<span class="address"><?php echo $address['address_info']; ?>&nbsp;<?php echo $address['address']; ?></span>
			<span class="payStatus" style="float: right; line-height: 20px;"><i class="icon-success"></i></span>
		</a>
	</li><?php endforeach; endif; else: echo "" ;endif; ?>
</ul>
<?php if(count($list['data']) == 0): ?>
<img src="__TEMP__/<?php echo $style; ?>/public/images/member_none_address.png" style="margin: 0 auto; display: block; margin-top: 10px;">
<div class="addr-box">
	<p class="addr-tip"><?php echo lang('you_have_not_added_your_shipping_address_yet_add_one'); ?>!</p>
</div>
<?php endif; ?>
<button class="btn-save" onclick="window.location.href='<?php echo __URL('APP_MAIN/Member/addMemberAddress?flag='.$flag); ?>';"><?php echo lang('member_new_delivery_address'); ?></button>

	<!-- 微信登录弹出绑定手机号遮罩层 -->
	
	
	<input type="hidden" value="<?php echo $uid; ?>" id="uid"/>
	<!-- 加载弹出层 -->
	<div class="mask-layer-loading">
		<img src="__TEMP__/<?php echo $style; ?>/public/images/mask_load.gif"/>
	</div>
	
<script type="text/javascript">
function selectAddress(id,obj){
	var ref_url = '<?php echo $url; ?>';//$("#ref_url").val();
	var flag = "<?php echo $flag; ?>";
	$.ajax({
		url: "<?php echo __URL('APP_MAIN/member/updateaddressdefault'); ?>",
		data: { "id": id },
		type: "post",
		success: function (res) {
			if (res["code"] > 0) {
				$(".side-nav li").removeClass("current");
				$(obj).parent().addClass("current");
				//选择银行的时候也用到了，但是单店版没有
				if(flag == "1"){
					return;
				}else if(flag == "2"){
					window.location.href = __URL("APP_MAIN/member/toReceiveThePrize");
					return;
				}else if(flag == "4"){
					window.location.href = __URL("APP_MAIN/PintuanOrder/paymentorder");
					return;
				}
				if(ref_url == 'cart'){
					window.location.href = __URL("APP_MAIN/order/paymentorder");
				}else{
					window.location.reload();
				}
			}else{
				showBox(res["message"],"error");
			}
		}
	})
}
function address_delete(id,is_default){
	if(is_default == 1){
		showBox("<?php echo lang('the_default_address_cannot_be_deleted'); ?>","warning");
		return;
	}
	$.ajax({
		url: "<?php echo __URL('APP_MAIN/member/memberaddressdelete'); ?>",
		data: { "id": id },
		type: "post",
		success: function (res) {
			//alert(JSON.stringify(res));
			if (res["code"] == 1) {
				showBox("<?php echo lang('member_delete_successfully'); ?>!","success",window.location.href);
			} else {
				showBox(res["outmessage"],"error");
			}
		}
	})
}
$("#backoutapp").click(function (){
    var json ={
    		"center" : "1",
        }
    window.webkit.messageHandlers.center.postMessage(json);
})
</script>

</body>
</html>