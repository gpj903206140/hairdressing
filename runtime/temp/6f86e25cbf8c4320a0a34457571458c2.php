<?php if (!defined('THINK_PATH')) exit(); /*a:9:{s:41:"template/adminblue\course\editCourse.html";i:1545123980;s:28:"template/adminblue\base.html";i:1545011442;s:45:"template/adminblue\controlCommonVariable.html";i:1530933188;s:63:"template/adminblue\Course\controlEditCourseCommonResources.html";i:1545211607;s:32:"template/adminblue\urlModel.html";i:1531183408;s:42:"template/adminblue\Goods\fileAlbumImg.html";i:1522668244;s:60:"template/adminblue\Course\controlEditCourseCommonScript.html";i:1545211522;s:34:"template/adminblue\pageCommon.html";i:1538099192;s:34:"template/adminblue\openDialog.html";i:1522669943;}*/ ?>
<!DOCTYPE html>
<html>
	<head>
	<meta name="renderer" content="webkit" />
	<meta http-equiv="X-UA-COMPATIBLE" content="IE=edge,chrome=1"/>
	<?php if($frist_menu['module_name']=='首页'): ?>
	<title><?php echo $title_name; ?> - 商家管理</title>
	<?php else: ?>
		<title><?php echo $title_name; ?> - <?php echo $frist_menu['module_name']; ?>管理</title>
	<?php endif; ?>
	<link rel="shortcut icon" type="image/x-icon" href="ADMIN_IMG/admin_icon.ico" media="screen"/>
	<link rel="stylesheet" type="text/css" href="__STATIC__/blue/bootstrap/css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="__STATIC__/blue/css/ns_blue_common.css" />
	<link rel="stylesheet" type="text/css" href="__STATIC__/font-awesome/css/font-awesome.min.css" />
	<link rel="stylesheet" type="text/css" href="__STATIC__/simple-switch/css/simple.switch.three.css" />
	<link rel="stylesheet" type="text/css" href="ADMIN_CSS/selectric.css" />
	<style>
	.Switch_FlatRadius.On span.switch-open{background-color: #126AE4;border-color: #126AE4;}
	#copyright_meta a{color:#333;}
	</style>
	<script src="__STATIC__/js/jquery-1.8.1.min.js"></script>
	<script src="__STATIC__/blue/bootstrap/js/bootstrap.js"></script>
	<script src="__STATIC__/bootstrap/js/bootstrapSwitch.js"></script>
	<script src="__STATIC__/simple-switch/js/simple.switch.js"></script>
	<script src="__STATIC__/js/jquery.unobtrusive-ajax.min.js"></script>
	<script src="__STATIC__/js/common.js"></script>
	<script src="__STATIC__/js/seller.js"></script>
	<script src="__STATIC__/js/load_task.js"></script>
	<script src="__STATIC__/js/load_bottom.js" type="text/javascript"></script>
	<script src="ADMIN_JS/layer/layer.js"></script>
	<script src="ADMIN_JS/jquery-ui.min.js"></script>
	<script src="ADMIN_JS/ns_tool.js"></script>
	<script src="ADMIN_JS/jquery.selectric.js"></script>
	<link rel="stylesheet" type="text/css" href="__STATIC__/blue/css/ns_table_style.css">
	<style>
       .ns-base-header {
		    background: #006ab6;
		}
		.ns-logo {
		    height: 50px;
		    width: 139px;
		    line-height: 50px;
		    cursor: pointer;
		    background: #006ab6 url(__STATIC__/blue/img/top_logo.png) no-repeat;
		    /*background: #006ab6 url(<?php echo $website['logo']; ?>) no-repeat;*/
		    background-size: 65%;
		    background-position: center;
		}
		.ns-base-header .ns-search .nav-menu {
		    background: #006ab6;
		}
		.ns-base-aside {
		    background: rgb(18, 18, 26);
		}
		.ns-base-aside nav li{
		    color: #fff;
		}
		.ns-base-aside nav li:hover {
		    background: #006ab6;
		    color: #fff;
		}
		.ns-base-aside nav li.selected,.ns-base-header nav ul li.selected {
		    background: #12e4a0;
		    color: #fff;
		}
		.ns-base-aside nav li{
            margin:0;
		}
		.shortcut-menu {
		    background: #0ebb83;
		    color: #fff;
		    border-color: #fff;
		}
		.shortcut-menu:hover {
		    background: #12e4a0;
		    color: #fff;
		    border-color: #fff;
		}
		.ns-base-aside nav li {
		    
		}
		.ns-base-aside .ns-main-block h3 {
		    /*background: #49b3ff;
		    color: #fff;*/
		}
		.module_img{
			width:18px;
			margin-right:5px;
		}
		.modal-header {
		    /*background: -webkit-gradient(linear,0 0,0 100%,from(#fdfcfc),to(#e8e8e8));*/
		    background: #f7f7f7;
		}
		#set_shortcut_menu .modal-body::-webkit-scrollbar-thumb{
			background: none;
		}
		.modal-header h3 {
		    color: #666;
		}
		.menu-box li h4 {
		    background: #f7f7f7;
		    color:#666;
		}
		.shortcut-menuspan {
		    display: inline-block;
		    width: 12px;
		    height: 12px;
		    background-image: url(__STATIC__/blue/img/menu_add_off.png);
		    background-size: 100% 100%;
		    vertical-align: -2px;
		    margin-left: 10px;
		    margin-right: 4px;
		    float: right;
		    margin-top: 12px;
		}
		.shortcut-menu{
            position:absolute;
            left:90px;
            top:103px;
            width:auto;
            height:auto;
            background:none;
            border:none;
		}
		.shortcut-menu:hover{
            background:none;
		}
		.ns-main .statistical {
		    overflow: hidden;
		    background: none;
		    margin-bottom: 5px;
		}
		.ns-main .statistical ul li{
		    width: 13.98%;
		    padding: 10px 1%;
		    background: #fff;
		    margin-left: 0.8%;
		    height: 80px;
		    border-radius: 3px;
		}
		.ns-main .statistical ul li:first-child {
		    margin-left: 0%;
		}
		.ns-main .statistical ul li:after {
		    content: '';
		    border-right:none;
		    display: block;
		    float: right;
		    height: 80px;
		}
		#goods-prompts .goods-state ul li {
		    float: left;
		    width: 17.6%;
		    height:80px;
		    margin-top:0;
		    background: #12e4a0;
		    margin-left:2%;
		}
		#goods-prompts .goods-state ul li a span,#goods-prompts .goods-state ul li a strong{
			color:#fff;
		}
		
		#goods-prompts .goods-state ul li.goods-promptli2{
			background: #006ab6;
		}
		#goods-prompts .goods-state ul li.goods-promptli3{
			background: #cc50ff;
		}
		#goods-prompts .goods-state ul li.goods-promptli4{
			background: #ff9800;
		}
		#goods-prompts .goods-state ul li.goods-promptli5{
			background: #03a9f4;
		}
		#goods-prompts .goods-state.a-line {
		    padding: 0 0 20px;
		}
		.ns-main .i-circular{
			display:none;
		}
		.ns-main .goods-prompt h3, .merchants-help h3, .sales h3, .sales-ranking h3, .charts h3, .system-config h3 {
		    border-bottom: 1px solid #dedede;
		    margin-bottom: 10px;
		}
		#merchants-uses ul li {
		    position: relative;
		    background: #b198dc;
		    width: 10%;
		    margin-left: 23%;
		    height:76px;
		    line-height:60px;
		}
		#merchants-uses ul li.merchants-usesli2 {
		    background: #34c0e3;
		}
		#merchants-uses ul li.merchants-usesli3 {
		    background: #03a9f4;
		}
		#merchants-uses ul li:first-child {
		    margin-left: 4%;
		}
		.merchants-use li a img{
			width:30px;
			height:30px;
			margin-top:20px;

		}
		#merchants-uses ul li span {
		    margin-top: 10px;
		    position: absolute;
		    right: -70px;
		    top: 0;
		}
		#merchants-uses ul li.merchants-usesli3 span {
		    position: absolute;
		    right: -80px;
		    top: 0;
		}
		#goods-stateStrong ul li a{
			position:relative;
		}
		#goods-stateStrong ul li {
		    margin-top: 10px;
		}
		#goods-stateStrong ul li a strong{
			width:80px;
			height:80px;
			background:url(__STATIC__/blue/img/order1.png)no-repeat center;
			background-size:40px 40px;
			background-position:57%;
			text-align:right;
			font-size:14px;
			color:#f76c6c;
		}
		#goods-stateStrong ul li a strong.daifahuo{
			background:url(__STATIC__/blue/img/order2.png)no-repeat center;
			background-size:40px 40px;
			background-position: 57%;
			color:#29dfee;
		}
		#goods-stateStrong ul li a strong.yifahuo{
			background:url(__STATIC__/blue/img/order3.png)no-repeat center;
			background-size:40px 40px;
			color:#4bc554;
		}
		#goods-stateStrong ul li a strong.yishouhuo{
			background:url(__STATIC__/blue/img/order4.png)no-repeat center;
			background-size:40px 40px;
			background-position: 57%;
			color:#1296db;
		}
		#goods-stateStrong ul li a strong.yiwancheng{
			background:url(__STATIC__/blue/img/order5.png)no-repeat center;
			background-size:40px 40px;
			background-position: 57%;
			color:#ffa200;
		}
		#goods-stateStrong ul li a strong.yiguanbi{
			background:url(__STATIC__/blue/img/order6.png)no-repeat center;
			background-size:40px 40px;
			background-position: 57%;
			color:#dd9e58;
		}
		#goods-stateStrong ul li a strong.tuikuanzhong{
			background:url(__STATIC__/blue/img/order7.png)no-repeat center;
			background-size:40px 40px;
			background-position: 57%;
			color:#ffbd03;
		}
		.ns-main .sales h3{
			margin-bottom:30px;
		}
		.ns-main .sales {
		    height: 213px;
		}
		#sales-rankings h3 {
		    margin-bottom:10px;
		}
		.sales-ranking table tbody tr:first-child {
		    background: #12e4a0;
		    color:#fff;
		}
        .ns-base-article .ns-base-section{
        	/*background:#f7f7f7;*/
        }
		.table-class tr th {
		    /* background-color: #fafafa; */
		    border-top: 1px solid #ebecec;
		    border-bottom: 1px solid #ebecec;
		    background: #f7f7f7 !important;
		}
		.ns-main .sales,.ns-main .merchants-help,.ns-main .sales-ranking {
		    width: 38.3%;
		    float: left;
		}
	</style>
	<script>
	/**
	 * 商品发布中的第二步，编辑商品信息
	 */
	var PLATFORM_NAME = "<?php echo $title_name; ?>";
	var ADMINIMG = "ADMIN_IMG";//后台图片请求路径
	var ADMINMAIN = "ADMIN_MAIN";//后台请求路径
	var SHOPMAIN = "SHOP_MAIN";//PC端请求路径
	var APPMAIN = "APP_MAIN";//手机端请求路径
	var UPLOAD = "__UPLOAD__";//上传文件根目录
	var PAGESIZE = "<?php echo $pagesize; ?>";//分页显示页数
	var ROOT = "__ROOT__";//根目录
	var ADDONS = "__ADDONS__";
	var STATIC = "__STATIC__";
	
	//上传文件路径
	var UPLOADGOODS = 'UPLOAD_GOODS';//存放商品图片
	var UPLOADGOODSSKU = 'UPLOAD_GOODS_SKU';//存放商品SKU
	var UPLOADGOODSBRAND = 'UPLOAD_GOODS_BRAND';//存放商品品牌图
	var UPLOADGOODSGROUP = 'UPLOAD_GOODS_GROUP';////存放商品分组图片
	var UPLOADGOODSCATEGORY = 'UPLOAD_GOODS_CATEGORY';////存放商品分类图片
	var UPLOADCOMMON = 'UPLOAD_COMMON';//存放公共图片、网站logo、独立图片、没有任何关联的图片
	var UPLOADAVATOR = 'UPLOAD_AVATOR';//存放用户头像
	var UPLOADPAY = 'UPLOAD_PAY';//存放支付生成的二维码图片
	var UPLOADADV = 'UPLOAD_ADV';//存放广告位图片
	var UPLOADEXPRESS = 'UPLOAD_EXPRESS';//存放物流图片
	var UPLOADCMS = 'UPLOAD_CMS';//存放文章图片
	var UPLOADVIDEO = 'UPLOAD_VIDEO';//存放视频文件
	var UPLOADGOODSVIDEO = "<?php echo constant('GOODS_VIDEO_PATH'); ?>";//存放商品视频
	var UPLOADFILE = "<?php echo constant('UPLOAD_FILE'); ?>";//存放文件
	var UPLOADWATERMARK = "<?php echo constant('UPLOAD_WATERMARK'); ?>";//存放水印图片
</script>
	
<!-- 编辑课程时，用到的JS、CSS资源 -->
<!-- 编辑课程，公共CSS、JS文件引用 -->
<link rel="stylesheet" type="text/css" href="ADMIN_CSS/product.css">
<!-- 选择课程图，弹出框的样式 -->
<link rel="stylesheet" type="text/css" href="ADMIN_CSS/defau.css">
<link href='ADMIN_CSS/select_category_next.css' rel='stylesheet' type='text/css'>
<link href="ADMIN_CSS/goods/editgoods.css" rel="stylesheet" type="text/css">
<link href="__STATIC__/blue/css/goods/add_goods.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="ADMIN_CSS/plugin/video-js.css">

<script type="text/javascript" charset="utf-8" src="ADMIN_JS/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="ADMIN_JS/ueditor/ueditor.all.js"></script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8" src="ADMIN_JS/ueditor/zh-cn.js"></script>

<script src="ADMIN_JS/image_common.js" type="text/javascript"></script>
<script src="ADMIN_JS/kindeditor-min.js" type="text/javascript"></script>

<!--  用  验证课程输入信息-->
<script src="ADMIN_JS/jscommon.js" type="text/javascript"></script>

<!-- 用 ，加载数据-->
<script src="ADMIN_JS/art_dialog.source.js"></script>
<script src="ADMIN_JS/iframe_tools.source.js"></script>

<!-- 我的图片 -->
<script src="ADMIN_JS/material_managedialog_course.js"></script>
<script src="__STATIC__/js/ajax_file_upload.js" type="text/javascript"></script>
<script src="__STATIC__/js/file_upload.js" type="text/javascript"></script>
<script src='ADMIN_JS/goods/init_address.js'></script>

<script type="text/javascript" src="ADMIN_JS/goods/goods_sku_create.js"></script>
<script src="ADMIN_JS/goods/release_course_second.js"></script>

<script type="text/javascript" src="ADMIN_JS/plugin/jquery.toTop.min.js"></script>
<script src="__STATIC__/js/BootstrapMenu.min.js"></script>

<!-- 可搜索的下拉选项框 -->
<link rel="stylesheet" type="text/css" href="ADMIN_CSS/plugin/jquery.searchableSelect.css"/>
<script src="ADMIN_JS/plugin/jquery.searchableSelect.js"></script>
<script type="text/javascript" src="__STATIC__/My97DatePicker/WdatePicker.js"></script>

<script src="ADMIN_JS/plugin/videojs-ie8.min.js"></script>
<script src="ADMIN_JS/plugin/video.min.js"></script>

<script>
var img_id_arr = "";//图片标识ID
var speciFicationsFlag = 0;// 0：课程图的选择，1:课程详情的图片
var shopImageFlag = -1;//所点击的课程图片标识
// 实例化编辑器，建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
var ue = UE.getEditor('editor');
var group_str = '<?php echo $group_str; ?>';//标签列表
$(function() {
	resizeBtnSubmit();
	$(window).resize(function(){
		resizeBtnSubmit();
	});
});
</script>

	</head>
<body>
<input type="hidden" id="root_rewrite_model" value="<?php echo rewrite_model(); ?>">
<input type="hidden" id="root_url_model" value="<?php echo url_model(); ?>">
<input type="hidden" id="root_admin_model" value="<?php echo admin_model(); ?>">
<script>
function __URL(url){
	url = url.replace('SHOP_MAIN', '');
	url = url.replace('APP_MAIN', 'wap');
	url = url.replace('ADMIN_MAIN', $("#root_admin_model"));
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
		if(url_model==1 || url_model==true){
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

//处理图片路径
function __IMG(img_path){
	var path = "";
	if(img_path != undefined && img_path != ""){
		if(img_path.indexOf("http://") == -1 && img_path.indexOf("https://") == -1){
			path = UPLOAD+"\/"+img_path;
		}else{
			path = img_path;
		}
	}
	return path;
}
</script>
<article class="ns-base-article">

	<header class="ns-base-header">
		<div class="ns-logo" onclick="location.href='<?php echo __URL('ADMIN_MAIN'); ?>';"></div>
		<div class="ns-search">
			<div class="nav-menu js-nav">
				<img src="__STATIC__/blue/img/nav_menu.png" title="导航管理" />
			</div>
			<div class="ns-navigation-management">
				<div class="ns-navigation-title">
					<h4>导航管理</h4>
					<span>x</span>
				</div>
				<div style="height:40px;"></div>
				<?php if(is_array($nav_list) || $nav_list instanceof \think\Collection || $nav_list instanceof \think\Paginator): if( count($nav_list)==0 ) : echo "" ;else: foreach($nav_list as $key=>$nav): ?>
				<dl>
					<dt><?php echo $nav['data']['module_name']; ?></dt>
					<?php if(is_array($nav['sub_menu']) || $nav['sub_menu'] instanceof \think\Collection || $nav['sub_menu'] instanceof \think\Paginator): if( count($nav['sub_menu'])==0 ) : echo "" ;else: foreach($nav['sub_menu'] as $key=>$nav_sub): ?>
					<dd>
						<a href="<?php echo __URL('ADMIN_MAIN/'.$nav_sub['url']); ?>"><?php echo $nav_sub['module_name']; ?></a>
					</dd>
					<?php endforeach; endif; else: echo "" ;endif; ?>
				</dl>
				<?php endforeach; endif; else: echo "" ;endif; ?>
			</div>
			<div class="ns-search-block">
				<i class="fa fa-search" title="搜索"></i>
				<span>搜索</span>
				<div class="mask-layer-search">
					<input type="text" id="search_goods" placeholder="搜索" />
					<a href="javascript:search();"><img src="__STATIC__/blue/img/enter.png"/></a>
				</div>
			</div>
		</div>
		<nav>
			<ul>
				<?php if(is_array($headlist) || $headlist instanceof \think\Collection || $headlist instanceof \think\Paginator): if( count($headlist)==0 ) : echo "" ;else: foreach($headlist as $key=>$per): if(strtoupper($per['module_id']) == $headid): ?>
				<li class="selected" onclick="location.href='<?php echo __URL('ADMIN_MAIN/'.$per['url']); ?>';">
					<span><?php echo $per['module_name']; ?></span>
					<?php if($per['module_id'] == 10000): ?>
						<span class="is-upgrade"></span>
					<?php endif; ?>
				</li>
				
				<?php else: ?>
				<li onclick="location.href='<?php echo __URL('ADMIN_MAIN/'.$per['url']); ?>';">
					<span><?php echo $per['module_name']; ?></span>
					<?php if($per['module_id'] == 10000): ?>
						<span class="is-upgrade"></span>
					<?php endif; ?>
				</li>
				<?php endif; endforeach; endif; else: echo "" ;endif; ?>
			</ul>
		</nav>
		<div class="ns-base-tool">
			<!-- <i class="i-home"  title="前台首页"><a href="<?php echo __URL('SHOP_MAIN'); ?>" target="_blank"></a></i> -->
			<i class="i-home"  title="前台首页"><a href="<?php echo __URL('SHOP_MAIN/frontDesk/index'); ?>" target="_blank"></a></i>
			<i class="i-close" title="退出登录"><a href="<?php echo __URL('ADMIN_MAIN/login/logout'); ?>"></a></i>
			<i class="ns-vertical-bar"></i>
			<div class="ns-help">
				<div class="logo">
				<?php if($user_headimg != ''): ?>
				<img src="<?php echo __IMG($user_headimg); ?>"/>
				<?php else: ?>
				<img src="__STATIC__/blue/img/user_admin_blue.png" width="30" >
				<?php endif; ?>
				</div>
				<span><?php echo $user_name; ?></span>
				<i class="fa fa-angle-down"></i>
				<ul>
					<li>
						<img src="__STATIC__/blue/img/add_favorites.png" />
						<a href="#edit-password" data-toggle="modal" title="修改密码">修改密码</a>
					</li>
					<li title="清理缓存" onclick="delcache()">
						<img src="__STATIC__/blue/img/clear_the_cache.png"/>
						<a href="javascript:;">清理缓存</a>
					</li>
					<li title="加入收藏" onclick="addFavorite()">
						<img src="__STATIC__/blue/img/add_favorites.png" />
						<a href="javascript:;">加入收藏</a>
					</li>
				</ul>
			</div>
		</div>
	</header>
	
	<aside class="ns-base-aside">
		<div class="ns-main-block">
			
			<h3 style="margin-top:50px;">
				<?php if(is_array($headlist) || $headlist instanceof \think\Collection || $headlist instanceof \think\Paginator): if( count($headlist)==0 ) : echo "" ;else: foreach($headlist as $key=>$per): if(strtoupper($per['module_id']) == $headid): ?>
					<span class="<?php echo $per['module_name']; ?>"><?php echo $per['module_name']; ?></span>
					<i class="fa fa-caret-down"></i>
				<?php endif; endforeach; endif; else: echo "" ;endif; ?>
			</h3>
			
			<nav>
				<ul>
					<?php if(is_array($leftlist) || $leftlist instanceof \think\Collection || $leftlist instanceof \think\Paginator): if( count($leftlist)==0 ) : echo "" ;else: foreach($leftlist as $key=>$leftitem): if(strtoupper($leftitem['module_id']) == $second_menu_id): ?>
					<li class="selected" onclick="location.href='<?php echo __URL('ADMIN_MAIN/'.$leftitem['url']); ?>';" title="<?php echo $leftitem['module_name']; ?>"><img src="NAV_IMG/<?php echo $leftitem['module_picture']; ?>" class="module_img"><?php echo $leftitem['module_name']; ?></li>
					<?php else: ?>
					<li onclick="location.href='<?php echo __URL('ADMIN_MAIN/'.$leftitem['url']); ?>';" title="<?php echo $leftitem['module_name']; ?>"><img src="NAV_IMG/<?php echo $leftitem['module_picture']; ?>" class="module_img"><?php echo $leftitem['module_name']; ?></li>
					<?php endif; endforeach; endif; else: echo "" ;endif; ?>
					<!-- 快捷菜单列表 -->
					<?php if($is_show_shortcut_menu == 1): if(is_array($shortcut_menu_list) || $shortcut_menu_list instanceof \think\Collection || $shortcut_menu_list instanceof \think\Paginator): $i = 0; $__LIST__ = $shortcut_menu_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$menu): $mod = ($i % 2 );++$i;if($menu['module_name'] != ''): ?>
					<li onclick="location.href='<?php echo __URL('ADMIN_MAIN/'.$menu['url']); ?>';" title="<?php echo $menu['module_name']; ?>"><img src="NAV_IMG/<?php echo $menu['module_picture']; ?>" class="module_img"><?php echo $menu['module_name']; ?></li>
					<?php endif; endforeach; endif; else: echo "" ;endif; endif; ?>
				</ul>
				<!-- 快捷菜单设置按钮 -->
				<?php if($is_show_shortcut_menu == 1): ?>
				<!-- <div class="shortcut-menu" onclick="show_shortcut_menu()">
					<span></span>
					常用功能
				</div> -->
				<div class="shortcut-menu" onclick="show_shortcut_menu()">
					<span></span>
					
				</div>
				<?php endif; ?>
			</nav>
			
			<div style="height:50px;"></div>
			
			<div id="bottom_copyright">
				<footer>
					<img id="copyright_logo"/>
<!-- 					<p> -->
<!-- 						<span id="copyright_desc"></span> -->
<!-- 						<br/> -->
<!-- 						<a id="copyright_companyname" style="color: #333" target="_blank"></a> -->
<!-- 						<br/> -->
<!-- 						<span id="copyright_meta"></span> -->
<!-- 					</p> -->
				</footer>
			</div>
		</div>
	</aside>
	
	<section class="ns-base-section">
		
		
		
		<div style="position:relative;margin:0;">
			<!-- 面包屑导航 -->
			<?php if(!isset($is_index)): ?>
			<div class="breadcrumb-nav">
				<a href="<?php echo __URL('ADMIN_MAIN'); ?>"><?php echo $title_name; ?></a>
				<?php if($frist_menu['module_name'] != ''): ?>
					<i class="fa fa-angle-right"></i>
					<a href="<?php echo __URL('ADMIN_MAIN/'.$frist_menu['url']); ?>"><?php echo $frist_menu['module_name']; ?></a>
				<?php endif; if($secend_menu['module_name'] != ''): ?>
					<i class="fa fa-angle-right"></i>
					<!-- 需要加跳转链接用这个：ADMIN_MAIN/<?php echo $secend_menu['url']; ?> -->
					<a href="javascript:;" style="color:#999;"><?php echo $secend_menu['module_name']; ?></a>
				<?php endif; ?>
			</div>
			<?php endif; ?>
			<!-- 三级导航菜单 -->
			
				<?php if(count($child_menu_list) > 1): ?>
				<nav class="ns-third-menu">
					<ul>
					<?php if(is_array($child_menu_list) || $child_menu_list instanceof \think\Collection || $child_menu_list instanceof \think\Paginator): if( count($child_menu_list)==0 ) : echo "" ;else: foreach($child_menu_list as $k=>$child_menu): if($child_menu['active'] == '1'): ?>
							<li class="selected" onclick="location.href='<?php echo __URL('ADMIN_MAIN/'.$child_menu['url']); ?>';"><?php echo $child_menu['menu_name']; ?></li>
						<?php else: ?>
							<li onclick="location.href='<?php echo __URL('ADMIN_MAIN/'.$child_menu['url']); ?>';"><?php echo $child_menu['menu_name']; ?></li>
						<?php endif; endforeach; endif; else: echo "" ;endif; ?>
					</ul>
				</nav>
				<?php endif; ?>
			
			<div class="right-side-operation">
				<ul>
					
					
<!-- 					<?php if($warm_prompt_is_show == 'show'): ?>style="display:none;"<?php endif; ?> style="display:block;" -->
					<!-- <li>
						<a class="js-open-warmp-prompt" href="javascript:;" data-menu-desc=''><i class="fa fa-question-circle"></i>&nbsp;提示</a>
						<div class="popover">
							<div class="arrow"></div>
							<div class="popover-content">
								<div>
									<?php if($secend_menu['desc']): ?>
									<h4>操作提示</h4>
									<p><?php echo $secend_menu['desc']; ?></p>
									<hr/>
									<?php endif; ?>
									<h4>功能提示</h4>
									<p class="function-prompts"></p>
								</div>
							</div>
						</div>
					</li> -->
					
				</ul>
			</div>
		</div>
		
		<!-- 操作提示 -->
		
<!-- 		<?php if($warm_prompt_is_show == 'hidden'): ?>style="display:none;"<?php endif; ?> -->
		<div class="ns-warm-prompt" style="display:none;">
			<div class="alert alert-info">
				<button type="button" class="close">&times;</button>
				<h4>
<!-- 					{1block name="alert_info"} -->
<!-- 					<i class="fa fa-info-circle"></i> -->
<!-- 					<span class="operating-hints">操作提示</span> -->
<!-- 						<?php if($secend_menu['desc']): ?> -->
<!-- 						<span><?php echo $secend_menu['desc']; ?></span> -->
<!-- 						<?php endif; ?> -->
<!-- 					{1/block} -->
				</h4>
			</div>
		</div>
		
		
		<div class="ns-main">
			
<style>
.goods-nav {
    background: #f7f7f7 !important;
}
.btn-submit {
    background-color: #f7f7f7 !important;
}
</style>
<div class="space-10"></div>
<div class="ncsc-form-goods">
	<nav class="goods-nav">
		<ul>
			<li class="selected" data-c="block-basic-setting"><a href="javascript:;">基础设置</a></li>
			<li data-c="block-goods-sku" style="display: none;"><a href="javascript:;">课程规格</a></li>
			<li data-c="block-goods-type"><a href="javascript:;">合作机构</a></li>
			
			<li data-c="block-photo-video-setting"><a href="javascript:;">媒体设置</a></li>
			<li data-c="block-goods-detail-setting"><a href="javascript:;">课程详情</a></li>
			<li data-c="block-template-setting"><a href="javascript:;">模板设置</a></li>
		</ul>
	</nav>
	<!-- 基础设置 -->
	<div class="block-basic-setting">
		
		<h4>基础信息</h4>
		<dl>
			<dt><i class="required">*</i>课程名称：</dt>
			<dd>
				<input class="productname input-common long" type="text" id="txtProductTitle" placeholder="请输入课程名称，不能超过60个字符" <?php if($goods_info): ?>value="<?php echo $goods_info['goods_name']; ?>"<?php endif; ?> oninput='if(value.length>60){value=value.slice(0,60);$(this).next().text("课程名称不能超过60个字符").show();}else{$(this).next().hide();}'/>
				<span class="help-inline">请填写课程名称</span>
			</dd>
		</dl>
		<dl>
			<dt><i class="required">*</i>课程分类：</dt>
			<?php if($goods_info): ?>
			<dd id="tbcNameCategory" data-flag="category" cid="<?php echo $goods_info['category_id']; ?>" data-attr-id="" cname="<?php echo $goods_info['category_name']; ?>" data-goods-id="<?php echo $goods_info['goods_id']; ?>">
				<span class="category-text"><?php echo $goods_info['category_name']; ?></span>
			<?php else: ?>
			<dd id="tbcNameCategory" data-flag="category" data-goods-id="0" cid="" data-attr-id="" cname="">
				<span class="category-text"></span>
			<?php endif; ?>
				<button class="category-button">选择</button>
				<span><label for="g_name" class="error"><i class="icon-exclamation-sign"></i>课程分类不能为空</label></span>
				<span class="help-inline">请选择课程分类</span>
			</dd>
		</dl>
		<dl>
			<dt>扩展分类：</dt>
			<dd id ="extend_name_category_box">
				<?php if($goods_info): ?>
					<div class="extend-name-category-box">
					<?php if(!empty($goods_info['extend_category'])): foreach($goods_info["extend_category"] as $k=>$vo): ?>
						<div class="extend-name-category" id="extend_name_category<?php echo $k; ?>" data-flag="extend_category" data-goods-id="<?php echo $goodsid; ?>" cid="<?php echo $vo['extend_category_id']; ?>" data-attr-id="" cname="<?php echo $vo['extend_category_name']; ?>">
							<span class="category-text" onclick="editCategory(this);"><?php echo $vo['extend_category_name']; ?></span>
							&nbsp;&nbsp;<span class="do-style" onclick="editCategory(this);"><i class="fa fa-edit"></i>&nbsp;编辑</span>&nbsp;&nbsp;
							<span class="do-style" onclick="removeParentBox(this);"><i class="fa fa-trash-o"></i>&nbsp;删除</span>
							<span class="help-inline" style="vertical-align: top;">已添加的课程扩展分类不能为空</span>
						</div>
					<?php endforeach; endif; ?>
					</div>
				<?php else: ?>
					<div class="extend-name-category-box"></div>
				<?php endif; ?>
				<div class="clear">
					<button class="select-button" onclick="addExtentCategoryBox();"><i class="fa fa-plus-square"></i>&nbsp;添加</button>
				</div>
			</dd>
		</dl>
		
		<dl>
			<dt><i class="required">*</i>是否可删除：</dt>
			<dd>
				<div class="controls">
				        <?php if($goods_info): ?>
						<label class="radio inline normal">
							<i class="radio-common <?php if($goods_info['allow_delete'] == 1): ?>selected<?php endif; ?>">
								<input type="radio" name="allow_delete" id="allow_delete" <?php if($goods_info['allow_delete'] == 1): ?>checked<?php endif; ?> value="1">
							</i>
							<span>是</span>
						</label>
						<label class="radio inline normal">
							<i class="radio-common <?php if($goods_info['allow_delete'] == 0): ?>selected<?php endif; ?>">
								<input type="radio" name="allow_delete" id="allow_delete" value="0" <?php if($goods_info['allow_delete'] == 0): ?>checked<?php endif; ?>>
							</i>
							<span>否</span>
						</label>
						<?php else: ?>
						<label class="radio inline normal">
							<i class="radio-common selected">
								<input type="radio" name="allow_delete" id="allow_delete" checked="checked" value="1">
							</i>
							<span>是</span>
						</label>
						<label class="radio inline normal">
							<i class="radio-common">
								<input type="radio" name="allow_delete" id="allow_delete" value="0">
							</i>
							<span>否</span>
						</label>
						<?php endif; ?>
						
										<span class="help-inline">请选择库存是否显示</span>
				</div>
			</dd>
		</dl>
		
		<dl>
			<dt>课程促销语：</dt>
			<dd>
				<input class="productname input-common long" type="text" id="txtIntroduction" placeholder="请输入促销语，不能超过100个字符" <?php if($goods_info): ?>value="<?php echo $goods_info['introduction']; ?>"<?php endif; ?> oninput='if(value.length>100){value=value.slice(0,100);$(this).next().text("促销语不能超过100个字符").show();}else{$(this).next().hide();}'/>
				<span class="help-inline">请输入课程促销语，不能超过100个字符</span>
			</dd>
		</dl>
		<dl>
			<dt>关键词：</dt>
			<dd>
				<input class="productname input-common" type="text" id="txtKeyWords" placeholder="课程关键词用于SEO搜索" <?php if($goods_info): ?>value="<?php echo $goods_info['keywords']; ?>"<?php endif; ?> oninput='if(value.length>40){value=value.slice(0,40);$(this).next().text("课程关键词不能超过40个字符").show();}'/>
				<span class="help-inline">请输入课程促销语，不能超过40个字符</span>
			</dd>
		</dl>
		<dl>
			<dt>适合人群：</dt>
			<dd>
				<input class="productname input-common" type="text" id="crowd" placeholder="请输入适合人群" <?php if($goods_info): ?>value="<?php echo $goods_info['crowd']; ?>"<?php endif; ?>/>
				<span class="help-inline">请输入本课程适合人群</span>
			</dd>
		</dl>

		<dl>
			<dt>课程标签：</dt>
			<dd>
				<div class="group-text-check-box">
					<div class="controls product-category-position">
						<?php if(!empty($group_list)): if($goods_info['group_id_array'] != ''): ?>
								<select class="select-common" multiple id="goods_group" size="1">
									<option value="0" disabled>请选择课程标签</option>
									<?php foreach($group_list as $k=>$v): if(in_array(($v['group_id']), is_array($goods_info['group_id_array'])?$goods_info['group_id_array']:explode(',',$goods_info['group_id_array']))): ?>
										<option value="<?php echo $v['group_id']; ?>" selected><?php echo $v['group_name']; ?></option>
										<?php else: ?>
										<option value="<?php echo $v['group_id']; ?>"><?php echo $v['group_name']; ?></option>
										<?php endif; endforeach; ?>
								</select>
							<?php else: ?>
								<select class="select-common" multiple id="goods_group" size="1">
									<option value="0" disabled>请选择课程标签</option>	
									<?php foreach($group_list as $k=>$v): ?>
										<option value="<?php echo $v['group_id']; ?>"><?php echo $v['group_name']; ?></option>
									<?php endforeach; ?>
								</select>
							<?php endif; else: ?>
							<span class="span-error" style="display:block;">暂无可选的课程标签</span>
						<?php endif; ?>
					</div>
				</div>
			</dd>
		</dl>
		
		<dl>
			<dt>基础销量：</dt>
			<dd>
				<input type="number" class="span1 input-common harf" id="BasicSales" placeholder="0" <?php if($goods_info): ?>value="<?php echo $goods_info['sales']; ?>"<?php endif; ?> 
				/><em class="unit">件</em>
				<span class="help-inline">基础销量必须是数字，且不能为负数</span>
			</dd>
		</dl>
		<dl>
			<dt>基础点击数：</dt>
			<dd>
				<input type="number" class="span1 input-common harf" id="BasicPraise" placeholder="0" <?php if($goods_info): ?>value="<?php echo $goods_info['clicks']; ?>"<?php endif; ?> 
				/><em class="unit">次</em>
				<span class="help-inline">基础点击数必须是数字，且不能为负数</span>
			</dd>
		</dl>
		<dl>
			<dt>基础分享数：</dt>
			<dd>
				<input type="number" class="span1 input-common harf" id="BasicShare" placeholder="0" <?php if($goods_info): ?>value="<?php echo $goods_info['shares']; ?>"<?php endif; ?> 
				/><em class="unit">次</em>
				<span class="help-inline">基础分享数必须是数字，且不能为负数</span>
			</dd>
		</dl>
        <dl>
			<dt>基础评分数：</dt>
			<dd>
				<input type="number" class="span1 input-common harf" id="BasicScore" placeholder="0" <?php if($goods_info): ?>value="<?php echo $goods_info['score']; ?>"<?php endif; ?> 
				/><em class="unit">次</em>
				<span class="help-inline">基础分享数必须是数字，且不能为负数</span>
			</dd>
		</dl>
		<dl>
			<dt>总课数：</dt>
			<dd>
				<input type="number" class="span1 input-common harf" id="total_num" placeholder="0" <?php if($goods_info): ?>value="<?php echo $goods_info['total_num']; ?>"<?php endif; ?> 
				/><em class="unit">次</em>
				<span class="help-inline">总课数必须是数字，且不能为负数</span>
			</dd>
		</dl>
		<dl>
			<dt><i class="required">*</i>是否上架：</dt>
			<dd>
				<div class="controls">
					<?php if($goods_info): if($goods_info['state'] == 1): ?>
						<label class="radio inline normal">
							<i class="radio-common selected">
								<input type="radio" name="shelves" value="1" checked="checked" />
							</i>
							<span>立刻上架</span>
						</label>
						<label class="radio inline normal">
							<i class="radio-common">
								<input type="radio" name="shelves" value="0" />
							</i>
							<span>放入仓库</span>
						</label>
						<?php else: ?>
						<label class="radio inline normal">
							<i class="radio-common">
								<input type="radio" name="shelves" value="1" />
							</i>
							<span>立刻上架</span>
						</label>
						<label class="radio inline normal">
							<i class="radio-common selected">
								<input type="radio" name="shelves" value="0" checked="checked" />
							</i>
							<span>放入仓库</span>
						</label>
						<?php endif; else: ?>
						<label class="radio inline normal">
							<i class="radio-common selected">
								<input type="radio" name="shelves" value="1" checked="checked" />
							</i>
							<span>立刻上架</span>
						</label>
						<label class="radio inline normal">
							<i class="radio-common">
								<input type="radio" name="shelves" value="0" />
							</i>
							<span>放入仓库</span>
						</label>
					<?php endif; ?>
				</div>
			</dd>
		</dl>
		
		<h4>购买信息</h4>
		
		<dl>
			<dt>市场价格：</dt>
			<dd>
				<input class="goods_price input-common harf" type="number" id="txtProductMarketPrice" <?php if($goods_info): ?>value="<?php echo $goods_info['market_price']; ?>"<?php endif; ?> min="0" placeholder="0.00" 
				/><em class="unit">元</em>
				<span class="help-inline">课程市场价格必须是数字，且不能为负数</span>
			</dd>
		</dl>
		<dl>
			<dt><i class="required">*</i>销售价格：</dt>
			<dd>
				<input class="goods_price input-common harf" type="number" id="txtProductSalePrice" <?php if($goods_info): ?>value="<?php echo $goods_info['price']; ?>"<?php endif; ?> min="0" placeholder="0.00" 
				/><em class="unit">元</em>
				<span class="help-inline">课程销售价不能为空，且不能为负数</span>
			</dd>
		</dl>
		
	</div>
	<!-- 课程规格 -->
	<div class="block-goods-sku" style="display: none;">
		
		
	</div>
	
	<div class="block-goods-type">
		
		<h4>基础信息</h4>
		
		<dl>
			<dt>合作机构：</dt>
			<dd>
				<select id="mechanism_id" class="">
					<option value="0">请选择合作机构</option>
					<?php if($goods_info): if(is_array($mechanism_list) || $mechanism_list instanceof \think\Collection || $mechanism_list instanceof \think\Paginator): if( count($mechanism_list)==0 ) : echo "" ;else: foreach($mechanism_list as $key=>$mechanism): ?>
						<option value="<?php echo $mechanism['mechanism_id']; ?>" <?php echo !empty($mechanism['mechanism_id']) && $mechanism['mechanism_id']==$goods_info['mechanism_id']?'selected':''; ?>><?php echo $mechanism['mechanism_name']; ?></option>
					<?php endforeach; endif; else: echo "" ;endif; else: if(is_array($mechanism_list) || $mechanism_list instanceof \think\Collection || $mechanism_list instanceof \think\Paginator): if( count($mechanism_list)==0 ) : echo "" ;else: foreach($mechanism_list as $key=>$mechanism): ?>
						<option value="<?php echo $mechanism['mechanism_id']; ?>"><?php echo $mechanism['mechanism_name']; ?></option>
					<?php endforeach; endif; else: echo "" ;endif; endif; ?> 
				</select>
				<span class="help-inline">请选合作机构</span>
			</dd>
		</dl>
		<dl>
			<dt>机构老师：</dt>
			<dd>
				<select id="teacher_id" class="">
					<option value="0">请选择机构老师</option>
					<?php if($goods_info): if(is_array($teacher_list) || $teacher_list instanceof \think\Collection || $teacher_list instanceof \think\Paginator): if( count($teacher_list)==0 ) : echo "" ;else: foreach($teacher_list as $key=>$teacher): ?>
						<option value="<?php echo $teacher['teacher_id']; ?>" <?php echo !empty($teacher['teacher_id']) && $teacher['teacher_id']==$goods_info['teacher_id']?'selected':''; ?>><?php echo $teacher['teacher_name']; ?></option>
					<?php endforeach; endif; else: echo "" ;endif; endif; ?> 
				</select>
				<span class="help-inline">请选机构老师</span>
			</dd>
		</dl>
		
	</div>
	
	<!-- 图片视频设置 -->
	<div class="block-photo-video-setting">
		
		<div class="goods-photos">
			<h4>课程图片</h4>
			<dl>
				<dt>图片上传：</dt>
				<dd>
<!-- 			（第一张图片将作为课程主图，支持同时上传多张图片,多张图片之间可随意调整位置；支持jpg、gif、png格式上传或从图片空间中选择，建议使用尺寸800x800像素以上、大小不超过1M的正方形图片，上传后的图片将会自动保存在图片空间的默认分类中。） -->
					
					<div id="goods_picture_box" class="controls">
						<div class="goodspic-uplaod">
							<div class='img-box' style="min-height:160px;">
								<?php if($goods_info): if(count($goods_info['img_temp_array']) > 0): foreach($goods_info["img_temp_array"]  as $vo): ?>
											<div class="upload-thumb draggable-element">
												<img src="<?php echo __IMG($vo['pic_cover']); ?>" />
												<input type="hidden" class="upload_img_id" value="<?php echo $vo['pic_id']; ?>" />
												<div class="black-bg hide">
													<div class="off-box">&times;</div>
												</div>
											</div>
										<?php endforeach; else: ?>
										<div class="upload-thumb" id="default_uploadimg">
											<img src="ADMIN_IMG/album/default_goods_image_240.gif" />
										</div>
									<?php endif; else: ?>
								<div class="upload-thumb" id="default_uploadimg">
									<img src="ADMIN_IMG/album/default_goods_image_240.gif">
								</div>
								<?php endif; ?>
							</div>
							<div class="clear"></div>
							<span class="img-error">最少需要一张图片作为课程主图</span>
							<p class="hint">第一张图片将作为课程主图,支持同时上传多张图片,多张图片之间可随意调整位置；支持jpg、gif、png格式上传或从图片空间中选择，建议使用尺寸800x800像素以上、大小不超过1M的正方形图片，上传后的图片将会自动保存在图片空间的默认分类中。</p>
							<div class="handle" style="margin-top: 5px;">
								<div class="ncsc-upload-btn" style="margin-left:0;">
									<a href="javascript:void(0);">
										<span>
											<input style="cursor:pointer;font-size:0;" type="file" id="fileupload" hidefocus="true" class="input-file" name="file_upload"multiple="multiple" />
										</span>
										<p>图片上传</p>
									</a>
								</div>
								<a class="ncsc-btn mt5" id="img_box" nctype="show_image" href="javascript:void(0);">从图片空间选择</a>
							</div>
						</div>
					</div>
					<span class="help-inline">最少需要一张图片作为课程主图</span>
				</dd>
			</dl>
		</div>
		
		<div class="goods-video">
			<h4>展示视频</h4>
			<dl>
				<dt>视频上传：</dt>
				<dd style="padding:0;">
					<div class="goodspic-uplaod" style="overflow: hidden;position:relative;">
				
						<div class="video-thumb">
							<?php if($goods_info): ?>
								<video id="my-video" class="video-js vjs-big-play-centered" controls 
									<?php if(empty($goods_info['goods_video_address'])): ?> poster="__STATIC__/blue/img/goods_video_upload_bg.png" <?php else: ?> poster="" <?php endif; ?>
									 src="<?php echo $goods_info['goods_video_address']; ?>">
									<p class="vjs-no-js">To view this video please enable JavaScript, and consider upgrading to a web browser that</p>
								</video>
								<span class="del-video <?php if(empty($goods_info['goods_video_address'])): ?> hide <?php endif; ?>" onclick="del_video(this)"></span>
							<?php else: ?>
								<video id="my-video" class="video-js vjs-big-play-centered" controls poster="__STATIC__/blue/img/goods_video_upload_bg.png" preload="auto">
									<p class="vjs-no-js">To view this video please enable JavaScript, and consider upgrading to a web browser that</p>
								</video>
								<span class="del-video hide" onclick="del_video()"></span>
							<?php endif; ?>
						</div>
						<input class="input-file" name="file_upload" id="videoupload" type="file" onchange="fileUpload_video(this);" title="视频上传" style="position: absolute;left: 0;width: 290px;height: 140px;opacity: 0;cursor: pointer;z-index:10;" />
					</div>
				</dd>
			</dl>
			
			<dl>
				<dt>输入网址：</dt>
				<dd>
					<input type="text" id="video_url" class="input-common" style="width: 290px !important;" placeholder="在此输入外链视频地址" <?php if($goods_info): ?>value="<?php echo $goods_info['goods_video_address']; ?>"<?php endif; ?> />
					<p class="hint">
						<span>展示视频<i class="important-note">支持手动输入外链视频地址</i>或者<i class="important-note">上传本地视频</i></span>
					</p>
				</dd>
			</dl>
		</div>
		
		<style>
.upload-thumb{display:block !important;float:left;width:147px !important;height:147px !important;position:relative;border:1px solid #e5e5e5;}
.upload-thumb img{width:100%;height:100%;}
.img-box, .sku-img-box{overflow:hidden;}
.off-box, .sku-off-box{position:absolute;width:18px;height:18px;right:0;top:0;line-height: 18px;background-color:#FFF;cursor:pointer;text-align: center;}
.black-bg{position:absolute;right:0;top:0;left:0;bottom:0;background-color:rgba(0,0,0,0.3);}
.img-error{color:red;height:25px;line-height:25px;display:none;}
</style>
<script src="ADMIN_JS/drag-arrange.js" type="text/javascript" charset="utf-8"></script>
<script src="__STATIC__/js/ajax_file_upload.js" type="text/javascript"></script> 
<script type="text/javascript" src="__STATIC__/js/jquery.ui.widget.js" charset="utf-8"></script>
<script type="text/javascript" src="__STATIC__/js/jquery.fileupload.js" charset="utf-8"></script>
<input type="hidden" id="album_id" value="<?php echo $detault_album_id; ?>"/>
<script type="text/javascript">
var dataAlbum;
$(function() {
	//给图片更换位置事件
	$('.draggable-element').arrangeable();
	
	var album_id = $("#album_id").val();
	dataAlbum = {
		"album_id" : album_id,
		"type" : "1,2,3,4",
		'file_path' : UPLOADGOODS
	};
		
	// ajax 上传图片
	var upload_num = 0; // 上传图片成功数量
	$('#fileupload').fileupload({
		url: "<?php echo __URL('APP_MAIN/upload/photoalbumupload'); ?>",
		dataType: 'json',
		formData:dataAlbum,
		add: function (e,data) {
			$("#goods_picture_box .img-error").hide();
			$("#goods_picture_box #default_uploadimg").remove();
			//显示上传图片框
			var html = "";
			$.each(data.files, function (index, file) {
				html +='<div class="upload-thumb draggable-element"  nstype="' + file.name + '">';
					html +='<img nstype="goods_image" src="ADMIN_IMG/album/uoload_ing.gif">';
					html +='<input type="hidden" class="upload_img_id" nstype="goods_image" />'; 
					html +='<div class="black-bg hide">';
					html +='<div class="off-box">&times;</div>';
					html +='</div>';
				html +='</div>'; 
			});
			$(html).appendTo('#goods_picture_box .img-box');
			//模块可拖动事件
			$('#goods_picture_box .draggable-element').arrangeable();
			data.submit();
		},
		done: function (e,data) {
			var param = data.result;
			$this = $('#goods_picture_box div[nstype="' + param.origin_file_name + '"]');
			if(param.state > 0){
				$this.removeAttr("nstype");
				$this.children("img").attr("src",__IMG(param.file_name));
				$this.children("input[type='hidden']").val(param.file_id);
			}else{
				$this.remove();
				if($("#goods_picture_box .img-box .upload-thumb").length == 0){
					var img_html ='<div class="upload-thumb" id="default_uploadimg">';
					img_html +='<img src="ADMIN_IMG/album/default_goods_image_240.gif">';
					img_html +='</div>';
					$("#goods_picture_box .img-box").append(img_html);
				}
				$("#goods_picture_box .img-error").html("请检查您的上传参数配置或上传的文件是否有误，<a href='<?php echo __URL('ADMIN_MAIN/config/uploadtype'); ?>' target='_blank' style='text-decoration: underline;'>去设置</a>").show();
			}
		}
	});

	//图片幕布出现
	$(".draggable-element").live('mouseenter',function(){
		$(this).children(".black-bg").show();
	});

	//图片幕布消失
	$(".draggable-element").live('mouseleave',function(){
		$(this).children(".black-bg").hide();
	});

	//sku图片幕布出现
	$(".sku-draggable-element").live('mouseenter',function(){
		$(this).children(".black-bg").show();
	});

	//sku图片幕布消失
	$(".sku-draggable-element").live('mouseleave',function(){
		$(this).children(".black-bg").hide();
	});

	//删除页面图片元素
	$(".off-box").live('click',function(){ 
		if($(".img-box .upload-thumb").length == 1){
			var html = "";
			html +='<div class="upload-thumb" id="default_uploadimg">';
			html +='<img nstype="goods_image" src="ADMIN_IMG/album/default_goods_image_240.gif">';
			html +='<input type="hidden" name="image_path" id="image_path" nstype="goods_image" value="">';
			html +='</div>';
			$(html).appendTo('.img-box');
		}
		$(this).parent().parent().remove();
	});
	
	$(".sku-off-box").live('click',function(){ 
		if($(this).parent().parent().parent().find(".sku-img-box .upload-thumb").length == 1){
			var html = "";
			html +='<div class="upload-thumb" id="default_uploadimg">';
			html +='<img nstype="goods_image" src="ADMIN_IMG/album/default_goods_image_240.gif">';
			html +='<input type="hidden" name="image_path" id="image_path" nstype="goods_image" value="">';
			html +='</div>';
			$(html).appendTo('.sku-img-box');
		}
		$(this).parent().parent().remove();
	});

});

function img_upload(){

}

//sku图片上传
function file_upload(obj){
	var spec_id = $(obj).attr("spec_id");
	var spec_value_id = $(obj).attr("spec_value_id");
	$('.sku-draggable-element'+spec_id+'-'+spec_value_id).arrangeable();
	//sku图片上传
	$(obj).fileupload({
		url: "<?php echo __URL('APP_MAIN/upload/photoalbumupload'); ?>",
		dataType: 'json',
		formData:dataAlbum,
		add: function (e,data) {
			var box_obj = $(this).parent().parent().parent().parent().parent().parent().parent().parent();
			var spec_id = box_obj.attr("spec_id");
			var spec_value_id = box_obj.attr("spec_value_id");
			box_obj.find(".img-error").hide();
			box_obj.find("#sku_default_uploadimg").remove();
			//显示上传图片框
			var html = "";
			$.each(data.files, function (index, file) {
				html +='<div class="upload-thumb sku-draggable-element'+ spec_id +'-'+ spec_value_id +' sku-draggable-element"  nstype="' + file.name + '">';
				html +='<img nstype="goods_image" src="ADMIN_IMG/album/uoload_ing.gif">';
				html +='<input type="hidden"  class="sku_upload_img_id" nstype="goods_image" spec_id="" spec_value_id="" value="">';
				html +='<div class="black-bg hide">';
				html +='<div class="sku-off-box">&times;</div>';
				html +='</div>';
				html +='</div>';
			});
			box_obj.find('.sku-img-box').append(html);
			//模块可拖动事件
			$('.sku-draggable-element'+spec_id+'-'+ spec_value_id ).arrangeable();
			data.submit();
		},
		done: function (e,data) {
			var box_obj = $(this).parent().parent().parent().parent().parent().parent().parent().parent();
			var spec_id = box_obj.attr("spec_id");
			var spec_value_id = box_obj.attr("spec_value_id");
			var param = data.result;
			$this = box_obj.find('div[nstype="' + param.origin_file_name + '"]');
			if(param.state > 0){
				$this.removeAttr("nstype");
				$this.children("img").attr("src",__IMG(param.file_name));
				$this.children("input[type='hidden']").val(param.file_id);
				$this.children("input[type='hidden']").attr("spec_id", spec_id);
				$this.children("input[type='hidden']").attr("spec_value_id", spec_value_id);
				//将上传的规格图片记录
				for(var i = 0; i < $sku_goods_picture.length ; i ++ ){
					if($sku_goods_picture[i].spec_id == spec_id && $sku_goods_picture[i].spec_value_id == spec_value_id){
						$sku_goods_picture[i]["sku_picture_query"].push({"pic_id":param.file_id, "pic_cover_mid":param.file_name});
					}
				}
			}else{
				$this.remove();
				if(box_obj.find(".upload-thumb").length == 0){
					var img_html ='<div class="upload-thumb" id="default_uploadimg">';
						img_html +='<img src="ADMIN_IMG/album/default_goods_image_240.gif">';
						img_html +='</div>';
						box_obj.find(".sku-img-box").append(img_html);
				}
				box_obj.find(".img-error").html("请检查您的上传参数配置或上传的文件是否有误，<a href='<?php echo __URL('ADMIN_MAIN/config/uploadtype'); ?>' target='_blank' style='text-decoration: underline;'>去设置</a>").show();
			}
		}
	});
}
</script>
	</div>
	
	<!-- 详情设置 -->
	<div class="block-goods-detail-setting">
	
		<div class="controls" id="discripContainer">
			<textarea id="tareaProductDiscrip" name="discripArea" style="height: 500px; width: 800px; display: none;"></textarea>
			<script id="editor" type="text/plain" style="width: 100%; height: 500px;"></script>
			<span class="help-inline">请填写课程描述</span>
		</div>
	</div>
	
	<div class="block-template-setting">
	
		<!-- 模板设置 -->
		<h4>模板设置</h4>
		<!-- <dl>
			<dt>电脑端：</dt>
			<dd>
				<?php echo $template_url['pc_template_url']; ?>&nbsp;<input type="text" class="input-common harf" name="" id="pc_custom_template" value="<?php echo $goods_info['pc_custom_template']; ?>" style="width: 80px;" onkeyup="value=value.replace(/[^\w\.\/]/ig,'')">&nbsp;.html
				<p class="hint">用户自定义模板必须存放在<?php echo $template_url['pc_template_url']; ?>下，模板名只能由英文组成</p>
			</dd>
		</dl> -->
		<dl>
			<dt>手机端：</dt>
			<dd>
				<?php echo $template_url['wap_template_url']; ?>&nbsp;<input type="text" class="input-common harf" name="" id="wap_custom_template" value="<?php echo $goods_info['wap_custom_template']; ?>" style="width: 80px;" onkeyup="value=value.replace(/[^\w\.\/]/ig,'')">&nbsp;.html
				<p class="hint">用户自定义模板必须存放在<?php echo $template_url['wap_template_url']; ?>下，模板名只能由英文组成</p>
			</dd>
		</dl>
	</div>
	
	<div class="js-mask-category" style="position: fixed; width: 100%; height: 100%; top: 0px; left: 0px; right: 0px; bottom: 0px; z-index: 90; display: none; background: rgba(0, 0, 0, 0);"></div>
	
</div>

<div class="edit-sku-popup-mask-layer"></div>
<div class="edit-sku-popup">
	
</div>

<div class="point-card-inventory-management-popup">
	<div class="point-card-inventory-management-body">
	</div>
	<footer></footer>
</div>

<div style="height: 50px;" class="h50"></div>
<div class="btn-submit ncsc-form-goods" style="text-align: left;">
	<dl>
		<dt></dt>
		<dd style="padding: 0;">
			<button class="btn-common" id="btnSave" type="button" onClick="SubmitProductInfo(0,'ADMIN_MAIN','SHOP_MAIN')">保存</button>
			<button class="btn-common" id="btnSavePreview" type="button" onClick="SubmitProductInfo(1,'ADMIN_MAIN','SHOP_MAIN')">保存并预览</button>
		</dd>
	</dl>
</div>
<script>
$(function(){
	//选择合作机构找到机构下的老师
	$("#mechanism_id").change(function(){
		var id=$(this).val();
		var url="<?php echo __URL('ADMIN_MAIN/Course/getTeacher'); ?>&mechanism_id="+id;
		$.get(url,function(result){
			var myjson='';
			eval('myjson='+result+'');
			var html='<option value="0">请选择机构老师</option>';
			for(var i=0;i<myjson.length;i++ ){
                 html+='<option value="'+myjson[i]['teacher_id']+'">'+myjson[i]['teacher_name']+'</option>';
			}
			$("#teacher_id").html(html);
		})
	})
	
})
</script>
<input type="hidden" id="goodsId" value="<?php echo $goods_id; ?>" />
<input type="hidden" id="shop_type" value="<?php echo $shop_type; ?>" />
<?php if($goods_id != 0): ?>
<input type="hidden" id="hidQRcode" value="0" />
<input type="hidden" id="hidden_qrcode" value="<?php echo $goods_info['QRcode']; ?>" />
<input type="hidden" id="hidden_sort" value="<?php echo $goods_info['sort']; ?>" />

<script>

$(function(){
	ue.ready(function() {
		ue.setContent('<?php echo $goods_info['description']; ?>', false);
	});
});
</script>
<?php else: ?>
<input type="hidden" id="virtual_goods_type_id" value="0" />
<input type="hidden" id="hidQRcode" value="1" />
<input type="hidden" id="hidden_qrcode" />
<input type="hidden" id="hidden_sort" value="0" />
<input type="hidden" id="hidden_goods_brand_id" value="0" />
<input type="hidden" id="hidden_goods_brand_name" />
<script>
var sku_list = null;
</script>
<?php endif; ?>
<script type="text/javascript">
//扩展分类个数
var extent_sort = 0;
//当前可搜索的下拉选项框
var curr_searchable_select = null;
$(function(){
	
	//将分页克隆到点卡库存列表弹出框中
	$(".point-card-inventory-management-popup footer").append($("#turn-ul").clone());
	$(".ns-main>#turn-ul").remove();

	if(parseInt("<?php echo $extent_sort; ?>") > 0){
		extent_sort = parseInt("<?php echo $extent_sort; ?>");
	}
	
	if(parseInt($("#goodsId").val()) > 0){
		initProvince("#provinceSelect",function(){
			//编辑课程时，加载数据
			$("#provinceSelect").find("option[value='"+province_id+"']").attr("selected",true);
			$('#provinceSelect').selectric();
			getProvince("#provinceSelect",'#citySelect',city_id);
		});

	}else{
		initProvince("#provinceSelect");
	}

	//右键复制选择的相册
	var menu = new BootstrapMenu('.searchable-select-holder', {
		actions: [{
		name: '复制',
		onClick: function() {
			var brand_name = $('#brand_id option:selected').text();
			$("#selected_brand_name").val(brand_name);
			var copy_content = document.getElementById('selected_brand_name');
			copy_content.select();
			document.execCommand("Copy");
			showTip("复制成功",'success');
		}
		}]
	});
})

function PopUpCallBack(id, src, upload_type, spec_id, spec_value_id) {

	var idArr, srcArr;
	if (id.indexOf(",")) {
		idArr = id.split(',');
		srcArr = src.split(',');
	} else {
		idArr = new Array(id);
		srcArr = new Array(src);
	}
	switch(speciFicationsFlag){
		case 0:
			//课程主图
			/*if(srcArr.length>=1){
				html = "";
				for(var i=0;i<srcArr.length;i++){
					if(upload_type == 2){
						html +='<div class="upload-thumb sku-draggable-element'+ spec_id +'-'+ spec_value_id +' sku-draggable-element">';
							html +='<img src="'+ __IMG(srcArr[i]) +'">';
							html +='<input type="hidden" class="sku_upload_img_id" spec_id="'+ spec_id +'" spec_value_id="'+ spec_value_id +'" value="'+idArr[i]+'">';
							html +='<div class="black-bg hide">'; 
								html +='<div class="sku-off-box">&times;</div>';
							html +='</div>';
						html +='</div>'; 
						//将规格图片记录存入临时数组
						var pic_id = idArr[i];
						var pic_cover_mid = srcArr[i];
						for(var t = 0; t < $sku_goods_picture.length ; t ++ ){
							if($sku_goods_picture[t].spec_id == spec_id && $sku_goods_picture[t].spec_value_id == spec_value_id){
								$sku_goods_picture[t]["sku_picture_query"].push({"pic_id":pic_id, "pic_cover_mid":pic_cover_mid});
							}
						}
					}else if(upload_type == 1){
						html +='<div class="upload-thumb draggable-element">';
							html +='<img  src="'+__IMG(srcArr[i])+'">';  
							html +='<input type="hidden" class="upload_img_id" value="'+idArr[i]+'">';
							html +='<div class="black-bg hide">'; 
								html +='<div class="off-box">&times;</div>';
							html +='</div>';
						html +='</div>';
					}else{
						var span_obj = $(".js-goods-sku").find("span[data-spec-id='"+ spec_id +"'][data-spec-value-id='"+ spec_value_id +"']");
						span_obj.next().next().find("input").val(idArr[i]);
						span_obj.next().next().find("img").attr("src",__IMG(srcArr[i]));
						//规格spec图片返回并甘斌specObj对象
						var spec = {
							flag : span_obj.hasClass("selected"),
							spec_id : span_obj.attr("data-spec-id"),
							spec_name : span_obj.attr("data-spec-name"),
							spec_value_id : span_obj.attr("data-spec-value-id"),
							spec_value_data : idArr[i]
						};
						editSpecValueData(spec);//修改图片对应的修改SKU数据
					}
				}
				if(upload_type == 2){
					$(".sku-img-box[spec_id='"+ spec_id +"'][spec_value_id='"+ spec_value_id +"'] #sku_default_uploadimg").remove();
					$(".sku-img-box[spec_id='"+ spec_id +"'][spec_value_id='"+ spec_value_id +"']").append(html);
					$('.sku-draggable-element'+spec_id+'-'+ spec_value_id ).arrangeable();
				}else if(upload_type == 1){	
					$("#default_uploadimg").remove();
					$(html).appendTo('.img-box');
					$('.draggable-element').arrangeable();
				}
			}*/
		break;
		case 1:
			//课程详情
			for (var i = 0; i < srcArr.length; i++) {
				var description = "<img src='"+__IMG(srcArr[i])+"' />";
				//在光标后添加内容
				UE.getEditor('editor').focus();
				UE.getEditor('editor').execCommand('inserthtml',description);
			}
		break;
	}
}

//设置课程详情的图片
function setUeditorImg() {
	speciFicationsFlag = 1;
	OpenPricureDialog("PopPicure", ADMINMAIN,30);
}


$(".ladder_preference_content .ladder_preference .delete_preference").live("click",function(){
	$(this).parent().remove();
});

/**
 * 删除已选择的视频
 */
function del_video(event){
	
	// 通过ajax用php删除文件
	var src = $("#video_url").val();
	if(src!= ""){
		
		$("#my-video ").attr('src', "");
		$("#my-video").attr('poster','__STATIC__/blue/img/vs.png');
		$("#videoupload").val('');
		$(".del-video").hide();
		$("#video_url").val('');
		/* $.ajax({
			type : "post",
			url : "<?php echo __URL('ADMIN_MAIN/goods/delSelectedVideo'); ?>",
			data : {  
				'src':src,
			},
			success : function(res){
				//console.log(res);
			}
		}); */
	}
	event.stopPropagation();
}
$(window).scroll(function(){
	var srcoll_top = $(window).scrollTop();
	$(".goods-nav.fixed").css("max-width",($(".ncsc-form-goods").width() - 5)+'px');
	if(srcoll_top > 50){
		$(".goods-nav").addClass('fixed');
	}else{
		$(".goods-nav").removeClass('fixed');
	}
})

</script>

			<script type="text/javascript" src="__STATIC__/js/jquery.cookie.js"></script>
<script src="__STATIC__/js/page.js"></script>
<div class="page" id="turn-ul" style="display: none;">
	<div class="pagination">
		<ul>
			<li class="total-data">共0有条数据</li>
			<li class="according-number">每页显示<input type="text" class="input-medium" id="showNumber" value="<?php echo $pagesize; ?>" data-default="<?php echo $pagesize; ?>" autocomplete="off"/>条</li>
			<li><a id="beginPage" class="page-disable" style="border: 1px solid #dddddd;">首页</a></li>
			<li><a id="prevPage" class="page-disable">上一页</a></li>
			<li id="pageNumber"></li>
			<li><a id="nextPage">下一页</a></li>
			<li><a id="lastPage">末页</a></li>
			<li class="page-count">共0页</li>
		</ul>
	</div>
</div>
<input type="hidden" id="page_count" />
<input type="hidden" id="page_size" />
<script>
/**
 * 保存当前的页面
 */
function savePage(index){
	var json = { page_index : index, show_number : $("#showNumber").val(), url :  window.location.href };
	$.cookie('page_cookie',JSON.stringify(json),{ path: '/' });
 	//console.log(json);
}

$(function() {
	try{
		
		$("#turn-ul").show();//显示分页
		var history_url = "";
		var json = { page_index : 1, show_number : <?php echo $pagesize; ?>, url :  window.location.href };
		var history_json = "";//用于临时保存分页数据
		if($.cookie('page_cookie') != undefined && $.cookie('page_cookie') != "" && $.cookie('page_cookie') != '""'){
			
			var cookie = eval("(" + $.cookie('page_cookie') + ")");
			if(cookie !=undefined && cookie != ""){
				json.page_index = cookie.page_index;
				if(cookie.show_number != undefined && cookie.show_number != "") json.show_number = cookie.show_number;
				else json.show_number = <?php echo $pagesize; ?>;
				history_url = cookie.url;
				history_json = cookie;
			}
			
		}else{
			
			savePage(json.page_index);
			
		}
		if(history_url != undefined && history_url != "" && history_url != json.url && json.page_index != 1){
			
			//如果页面发生了跳转，还原操作
			json.page_index = 1;
			json.show_number = <?php echo $pagesize; ?>;
			json.url = history_url;
 			//console.log("如果页面发生了跳转，还原操作");
			$.cookie('page_cookie',JSON.stringify(json),{ path: '/' });
		}

 		//console.log($.cookie('page_cookie'));
		$("#showNumber").val(json.show_number);
		if(json.page_index != 1) jumpNumber = json.page_index;
		LoadingInfo(json.page_index);//通过此方法调用分页类
		
	}catch(e){
		
		$("#turn-ul").hide();
		//当前页面没有分页，进行还原操作
		$.cookie('page_cookie',JSON.stringify(history_json),{ path: '/' });
//		console.error(e);
 		//console.log("当前页面没有分页，进行还原操作");
 		//console.log($.cookie('page_cookie'));
	}
	
	//首页
	$("#beginPage").click(function() {
		if(jumpNumber!=1){
			jumpNumber = 1;
			LoadingInfo(1);
			savePage(1);
			changeClass("begin");
		}
		return false;
	});

	//上一页
	$("#prevPage").click(function() {
		var obj = $(".currentPage");
		var index = parseInt(obj.text()) - 1;
		if (index > 0) {
			obj.removeClass("currentPage");
			obj.prev().addClass("currentPage");
			jumpNumber = index;
			LoadingInfo(index);
			savePage(index);
			//判断是否是第一页
			if (index == 1) {
				changeClass("prev");
			} else {
				changeClass();
			}
		}
		return false;
	});

	//下一页
	$("#nextPage").click(function() {
		var obj = $(".currentPage");
		//当前页加一（下一页）
		var index = parseInt(obj.text()) + 1;
		if (index <= $("#page_count").val()) {
			jumpNumber = index;
			LoadingInfo(index);
			savePage(index);
			obj.removeClass("currentPage");
			obj.next().addClass("currentPage");
			//判断是否是最后一页
			if (index == $("#page_count").val()) {
				changeClass("next");
			} else {
				changeClass();
			}
		}
		return false;
	});

	//末页
	$("#lastPage").click(function() {
		jumpNumber = $("#page_count").val();
		if(jumpNumber>1){
			LoadingInfo(jumpNumber);
			savePage(jumpNumber);
			$("#pageNumber a:eq("+ (parseInt($("#page_count").val()) - 1) + ")").text($("#page_count").val());
			changeClass("next");
		}
		return false;
	});

	//每页显示页数
	$("#showNumber").blur(function(){
		if(isNaN($(this).val())){
			$("#showNumber").val(20);
			jumpNumber = 1;
			LoadingInfo(jumpNumber);
			savePage(jumpNumber);
			return;
		}
		if($(this).val().indexOf(".") != -1){
			var index = $(this).val().indexOf(".");
			$("#showNumber").val($(this).val().substr(0,index));
			jumpNumber = 1;
			LoadingInfo(jumpNumber);
			savePage(jumpNumber);
			return;
		}
		if(parseInt($(this).val())<=0){
			jumpNumber = 1;
			LoadingInfo(jumpNumber);
			savePage(jumpNumber);
			return;
		}
		//页数没有变化的话，就不要再执行查询
		if(parseInt($(this).val()) != $(this).attr("data-default")){
// 			jumpNumber = 1;//设置每页显示的页数，并且设置到第一页
			$(this).attr("data-default",$(this).val());
			LoadingInfo(jumpNumber);
			savePage(jumpNumber);
		}
		return false;
	}).keyup(function(event){
		if(event.keyCode == 13){
			if(isNaN($(this).val())){
				$("#showNumber").val(20);
				jumpNumber = 1;
				LoadingInfo(jumpNumber);
				savePage(jumpNumber);
			}
			//页数没有变化的话，就不要再执行查询
			if(parseInt($(this).val()) != $(this).attr("data-default")){
// 				jumpNumber = 1;//设置每页显示的页数，并且设置到第一页
				$(this).attr("data-default",$(this).val());
				//总数据数量
				var total_count = parseInt($(".total-data").attr("data-total-count"));
				//计算用户输入的页数是否超过当前页数
				var curr_count = Math.ceil(total_count/parseInt($(this).val()));
				if( curr_count !=0 && curr_count < jumpNumber){
					jumpNumber = curr_count;//输入的页数超过了，没有那么多
				}
				LoadingInfo(jumpNumber);
				savePage(jumpNumber);
			}
		}
		return false;
	});
});

//跳转页面
function JumpForPage(obj) {
	jumpNumber = $(obj).text();
	LoadingInfo($(obj).text());
	savePage($(obj).text());
	$(".currentPage").removeClass("currentPage");
	$(obj).addClass("currentPage");
	if (jumpNumber == 1) {
		changeClass("prev");
	} else if (jumpNumber < parseInt($("#page_count").val())) {
		changeClass();
	} else if (jumpNumber == parseInt($("#page_count").val())) {
		changeClass("next");
	}
}
</script>
		</div>
		
	</section>
	
</article>

<!-- 公共的操作提示弹出框 common-success：成功，common-warning：警告，common-error：错误，-->
<div class="common-tip-message js-common-tip">
	<div class="tip-container">
		<span class="inner"></span>
	</div>
</div>

<!--修改密码弹出框 -->
<div id="edit-password" class="modal hide fade" tabindex="-1" aria-labelledby="myModalLabel" aria-hidden="true" style="width:562px;top:50%;margin-top:-180.5px;">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		<h3>修改密码</h3>
	</div>
	<div class="modal-body">
		<form class="form-horizontal">
			<div class="control-group">
				<label class="control-label" for="pwd0" style="width: 160px;"><span class="color-red">*</span>原密码</label>
				<div class="controls" style="margin-left: 180px;">
					<input type="password" id="pwd0" placeholder="请输入原密码" class="input-common" />
					<span class="help-block"></span>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="pwd1" style="width: 160px;"><span class="color-red">*</span>新密码</label>
				<div class="controls" style="margin-left: 180px;">
					<input type="password" id="pwd1" placeholder="请输入新密码" class="input-common" />
					<span class="help-block"></span>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="pwd2" style="width: 160px;"><span class="color-red">*</span>再次输入密码</label>
				<div class="controls" style="margin-left: 180px;">
					<input type="password" id="pwd2" placeholder="请输入确认密码" class="input-common" />
					<span class="help-block"></span>
				</div>
			</div>
			<div style="text-align: center; height: 20px;" id="show"></div>
		</form>
	</div>
	<div class="modal-footer">
		<button class="btn-common btn-big" onclick="submitPassword()" style="display:inline-block;">保存</button>
		<button class="btn-common-cancle btn-big" data-dismiss="modal" aria-hidden="true">关闭</button>
	</div>
</div>

<link rel="stylesheet" type="text/css" href="ADMIN_CSS/jquery-ui-private.css">
<script>
var platform_shopname= '<?php echo $web_popup_title; ?>';
</script>
<script type="text/javascript" src="ADMIN_JS/jquery-ui-private.js" charset="utf-8"></script>
<script type="text/javascript" src="ADMIN_JS/jquery.timers.js"></script>
<div id="dialog"></div>
<script type="text/javascript">
function showMessage(type, message,url,time){
	if(url == undefined){
		url = '';
	}
	if(time == undefined){
		time = 2;
	}
	//成功之后的跳转
	if(type == 'success'){
		$( "#dialog").dialog({
			buttons: {
				"确定,#0059d6,#fff": function() {
					$(this).dialog('close');
				}
			},
			contentText:message,
			time:time,
			timeHref: url,
			msgType : type
		});
	}
	//失败之后的跳转
	if(type == 'error'){
		$( "#dialog").dialog({
			buttons: {
				"确定,#0059d6,#fff": function() {
					$(this).dialog('close');
				}
			},
			time:time,
			contentText:message,
			timeHref: url,
			msgType : type
		});
	}
}

function showConfirm(content){
	$( "#dialog").dialog({
		buttons: {
			"确定": function() {
				$(this).dialog('close');
				return 1;
			},
			"取消,#f5f5f5,#666": function() {
				$(this).dialog('close');
				return 0;
			}
		},
		contentText:content,
	});
}
</script>
<script src="ADMIN_JS/ns_common_base.js"></script>
<script src="__STATIC__/blue/js/ns_common_blue.js"></script>
<script>
	window.onload = function(){

	}
$(function(){
	
	$(".ns-third-menu ul .btn-more").toggle(
		function(){
			$(".ns-third-menu ul").animate({height:"84px"},300);
		},
		function(){
			$(".ns-third-menu ul").animate({height:"42px"},300);
		}
	);
	
	//公共下拉框
	$('.select-common').selectric();
	
	//公共复选框点击切换样式
	$(".checkbox-common").live("click",function(){
		var checkbox = $(this).children("input");
		if(checkbox.is(":checked")) $(this).addClass("selected");
		else $(this).removeClass("selected");
	});
	
	//鼠标浮上查看预览上传的图片
	$(".upload-btn-common>img,#preview_adv").live("mouseover",function(){
		var curr = $(this);
		var src = curr.attr("data-src");
		if(src){
			//alert(src);
			var contents = '<img src="'+src+'" style="width: 100px;height: auto;display:block;margin:0 auto;">';
			//鼠标每次浮上图片时，要销毁之前的事件绑定
			curr.popover("destroy");
			
			//重新配置弹出框内容
			curr.popover({ content : contents });

			//显示
			curr.popover("show");
		}
	});
	
	//鼠标离开隐藏预览上传的图片
	$(".upload-btn-common>img,#preview_adv").live("mouseout",function(){
		var curr = $(this);
		//隐藏
		if($(".popover.top").is(":visible") && curr.attr("data-src")) curr.popover("hide");
	});

	//公共单选框点击切换样式
	$(".radio-common").live("click",function(){
		var radio = $(this).children("input");
		var name = radio.attr("name");
		if(radio.is(":checked")){
			$(".radio-common>input[type='radio'][name='" + name + "']").parent().removeClass("selected");
			$(this).addClass("selected");
		}else{
			$(this).removeClass("selected");
		}
	});

	//顶部导航管理显示隐藏
	$(".ns-navigation-title>span").click(function(){
		$(".ns-navigation-management").slideUp(400);
	});
	
	$(".js-nav").toggle(function(){
		$(".ns-navigation-management").slideDown(400);
	},function(){
		$(".ns-navigation-management").slideUp(400);
	});
	
	//搜索展开
	$(".ns-search-block").hover(function(){
		if($(this).children(".mask-layer-search").is(":hidden")) $(this).children(".mask-layer-search").fadeIn(300);
	},function(){
		if($(this).children(".mask-layer-search").is(":visible")) $(this).children(".mask-layer-search").fadeOut(300);
	});
	
	$(".ns-base-tool .ns-help").hover(function(){
		if($(this).children("ul").is(":hidden")) $(this).children("ul").fadeIn(250);
	},function(){
		if($(this).children("ul").is(":visible")) $(this).children("ul").fadeOut(250);
	});
	
});

function addFavorite() {
	var url = window.location;
	var title = document.title;
	var ua = navigator.userAgent.toLowerCase();
	if (ua.indexOf("360se") > -1) {
		alert("由于360浏览器功能限制，请按 Ctrl+D 手动收藏！");
	}else if (ua.indexOf("msie 8") > -1) {
		window.external.AddToFavoritesBar(url, title); //IE8
	}
	else if (document.all) {
		try{
			window.external.addFavorite(url, title);
		}catch(e){
			alert('您的浏览器不支持,请按 Ctrl+D 手动收藏!');
		}
	}else if (window.sidebar) {
		window.sidebar.addPanel(title, url, "");
	}else {
		alert('您的浏览器不支持,请按 Ctrl+D 手动收藏!');
	}
}

</script>

</body>
</html>