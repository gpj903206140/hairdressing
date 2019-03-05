<?php if (!defined('THINK_PATH')) exit(); /*a:6:{s:59:"template/wap\default_new\Goods\goodsClassificationList.html";i:1534216805;s:34:"template/wap\default_new\base.html";i:1544512053;s:38:"template/wap\default_new\urlModel.html";i:1531183592;s:49:"template/wap\default_new\Index\controlSearch.html";i:1503654949;s:82:"template/wap\default_new\CustomTemplate\controlCommonCustomTemplateBaseFooter.html";i:1520390541;s:36:"template/wap\default_new\footer.html";i:1543281644;}*/ ?>
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
<style>
body{background: #eee;}
.custom-search-button{top:6px;}
.category{width:95%;margin:10px auto;display: none;}
.category img{display: inline-block;width: 100%;}
.nothing-data{margin-top:50%;}
.custom-tag-list-goods dl{width:100%;}
.custom-tag-list-goods dt a {padding:0 10px;}
.custom-tag-list{height:92%;}
.controlSearch {width: 85%;padding: 0;background: none;margin: 8px 0 5px 9%;}
.controlSearch .control-search-input{height: 30px;border-bottom-left-radius: 15px;border-top-left-radius: 15px;overflow: hidden;border-bottom-right-radius: 15px;border-top-right-radius: 15px;}
.controlSearch .control-search-input .search-input {width: 72%;height: 20px;line-height: 20px;margin: 4px 0;padding: 0 15px;border: none;color: #999;float: left;font-size: 13px;background:#EFEFEF;}
.controlSearch .control-search-input .search-button{margin: 4px 0;}
.more{height: 4rem;display: flex;align-items: center;justify-content: center;color: #333;}
.pull_icon{width: 25px;height: 25px;background-image: url('__TEMP__/<?php echo $style; ?>/public/images/pull.png');background-repeat: no-repeat;background-position: center;background-size: 25px;transition: all .5s;}
.more span{padding-left: .5rem;}
.scroller{background-color: #fff;}
.more .flip{transform: rotate(180deg);}
.loading{background-image: url('__TEMP__/<?php echo $style; ?>/public/images/loading.png');background-repeat: no-repeat;background-position: center;background-size: 25px;width: 25px;height: 25px;position: relative;display: inherit;}
.more i.loading{transform: rotate(0deg) translateZ(0);transition-duration: 0;animation-name: loading;animation-duration: 2s;animation-iteration-count: infinite;animation-timing-function: linear;}
@-webkit-keyframes loading {
	from {
		-webkit-transform: rotate(0deg) translateZ(0);
	}
	to {
		-webkit-transform: rotate(360deg) translateZ(0);
	}
}
.custom-tag-list .custom-tag-list-goods .custom-tag-list-goods-detail .custom-tag-list-goods-buy img {max-width: 120%;max-height: 120%;}
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
	<a class="head_back" id="head_back" href="<?php echo __URL('APP_MAIN'); ?>"><i class="icon-back"></i></a>
	<div class="head-title"><span><script src="__TEMP__/<?php echo $style; ?>/public/js/public_assembly.js"></script>
<div class="controlSearch">
	<div class="control-search-input">
		<input type="text" class="search-input custom-search-input" placeholder="<?php echo lang('search_goods'); ?>">
		<button type="button" class="search-button custom-search-button"><?php echo lang('search'); ?></button>
		<input type="hidden" value="<?php echo $shop_id; ?>" id="hidden_shop_id"/>
	</div>
</div>
</span></div>
</section>

	
	<!-- showBox弹出框 -->
	<div class="motify" style="display: none;">
		<i class="show_type warning"></i>
		<div class="motify-inner"><?php echo lang('pop_up_prompt'); ?></div>
	</div>

	
<div class="goodsCategoryList">
	<div class="all_goods">
		<a href="<?php echo __URL('APP_MAIN/goods/goodslist'); ?>">全部商品</a>
	</div>
	<?php if(is_array($goods_category_list) || $goods_category_list instanceof \think\Collection || $goods_category_list instanceof \think\Paginator): if( count($goods_category_list)==0 ) : echo "" ;else: foreach($goods_category_list as $key=>$vo): ?>
	<div class="one_level_category">
		<span><?php echo $vo['category_name']; ?></span>
		<div class="data-line"></div>
	</div>
	<div class="two-level_category">
		<ul>
			<li><a href="<?php echo __URL('APP_MAIN/goods/goodslist','category_id='.$vo['category_id']); ?>">全部</a></li>
			<?php if(!(empty($vo['child_list']) || (($vo['child_list'] instanceof \think\Collection || $vo['child_list'] instanceof \think\Paginator ) && $vo['child_list']->isEmpty()))): if(is_array($vo['child_list']) || $vo['child_list'] instanceof \think\Collection || $vo['child_list'] instanceof \think\Paginator): if( count($vo['child_list'])==0 ) : echo "" ;else: foreach($vo['child_list'] as $key=>$to): ?>
					<li><a href="<?php echo __URL('APP_MAIN/goods/goodslist','category_id='.$to['category_id']); ?>"><?php echo $to['category_name']; ?></a></li>
				<?php endforeach; endif; else: echo "" ;endif; endif; $__FOR_START_8263__=0;$__FOR_END_8263__=$vo['num'];for($i=$__FOR_START_8263__;$i < $__FOR_END_8263__;$i+=1){ ?>
				<li><a href="javascript:;">&nbsp;</a></li>
			<?php } ?>
		</ul>
		<div style="clear: both;"></div>
	</div>
	<div style="clear: both;"></div>
	<?php endforeach; endif; else: echo "" ;endif; ?>
</div>
<script>
$(function(){
	bottomActive('#bottom_classify');
});
</script>

	<!-- 微信登录弹出绑定手机号遮罩层 -->
	
	
		<?php if($custom_template_is_enable == 1): ?>
		
			<div class="js-bottom-blank" style="height:56px;"></div>
			<!-- 底部菜单 -->
<style>
.control-footer{border-top:1px solid #e5e5e5;}
.control-footer ul li{float: left;text-align: center;cursor: pointer;padding:5px 0;background: #ffffff;font-family: "微软雅黑", "Helvetica Neue", "Helvetica", Helvetica, Arial,sans-serif;}
.control-footer ul li img {width: 25px;}
.control-footer ul li label {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;margin: 2px 0 0;display: block;font-size:12px;}
</style>
<div class="fixed bottom control-footer js-base-footer">
	<ul>
		<?php foreach($custom_footer as $k=>$footer_val): ?>
		<li style="width: <?php echo 1/count($custom_footer)*100; ?>%" onclick="location.href='<?php echo $footer_val['href']; ?>'">
			<?php if($footer_val['img_src'] !=''): if($k==$select_footer_index): ?>
			<img src="<?php echo __IMG($footer_val['img_src_hover']); ?>"/>
			<?php else: ?>
			<img src="<?php echo __IMG($footer_val['img_src']); ?>"/>
			<?php endif; endif; if($footer_val['menu_name'] !=''): ?>
			<label style="color:<?php echo $footer_val['color']; ?>;"><?php echo $footer_val['menu_name']; ?></label>
			<?php endif; ?>
		</li>
		<?php endforeach; ?>
	</ul>
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

	
	
	<input type="hidden" value="<?php echo $uid; ?>" id="uid"/>
	<!-- 加载弹出层 -->
	<div class="mask-layer-loading">
		<img src="__TEMP__/<?php echo $style; ?>/public/images/mask_load.gif"/>
	</div>
	
</body>
</html>