<?php if (!defined('THINK_PATH')) exit(); /*a:6:{s:46:"template/adminblue\course\courseClassList.html";i:1545284203;s:28:"template/adminblue\base.html";i:1545011442;s:45:"template/adminblue\controlCommonVariable.html";i:1530933188;s:32:"template/adminblue\urlModel.html";i:1531183408;s:34:"template/adminblue\pageCommon.html";i:1538099192;s:34:"template/adminblue\openDialog.html";i:1522669943;}*/ ?>
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
	
<style>
.input-error { color: #ff0000;margin-top: 5px!important;display: none; }
.add-child{
	padding-left: 15px;
	background: url(ADMIN_IMG/add-child.png) no-repeat;
	background-position: 0 2px;
}
.add-child i{
	font-style: normal;
	display: none;
}
.add-child:hover i{
	display: inline-block;
}
</style>

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
			
<div class="options-btn">
	<button class="btn-common btn-small" onclick="location.href='<?php echo __URL('ADMIN_MAIN/course/addCourseClass'); ?>';">添加课程分类</button>
</div>
<?php if(!(empty($category_list) || (($category_list instanceof \think\Collection || $category_list instanceof \think\Paginator ) && $category_list->isEmpty()))): ?>
<table class="table-class">
	<colgroup>
		<col style="width: 2%;">
		<col style="width: 30%;">
		<col style="width: 30%;">
		<col style="width: 17%;">
		<col style="width: 7%;">
		<col style="width: 4%;">
		<col style="width: 10%;">
	</colgroup>
	<thead>
		<tr align="center">
			<th></th>
			<th align="left">分类名称</th>
			<th align="left">课程分类简称</th>
			<th align="left"></th>
			<th>是否显示</th>
			<th>排序</th>
			<th>操作</th>
		</tr>
	</thead>
	<tbody>
		<?php if(is_array($category_list) || $category_list instanceof \think\Collection || $category_list instanceof \think\Paginator): if( count($category_list)==0 ) : echo "" ;else: foreach($category_list as $key=>$v1): ?>
		<tr class="pid_0" style="height: 30px;" data-category-id="<?php echo $v1['category_id']; ?>" data-pid="<?php echo $v1['pid']; ?>" data-level="<?php echo $v1['level']; ?>">
			<td>
				<?php if($v1['child_list'] != array()): ?>
				<a href="javascript:;" onclick="tab_switch(<?php echo $v1['category_id']; ?>)" class="tab_jia_<?php echo $v1['category_id']; ?>" style="display: block;">[+]</a>
				<a href="javascript:;" onclick="tab_switch(<?php echo $v1['category_id']; ?>)" class="tab_jian_<?php echo $v1['category_id']; ?>" style="display: none;">[-]</a>
				<?php endif; ?>
			</td>
			
			<td>
				<input class="input-common middle" type="text" fieldid="<?php echo $v1['category_id']; ?>" fieldname="category_name" value="<?php echo $v1['category_name']; ?>" style="width: 150px;">
				<a href="javascript:;" onclick="addChildGoodsCategory(this, 2, <?php echo $v1['category_id']; ?>);">
				<span class="add-child"><i>添加子分类</i></span>
				</a>
			</td>
			<td><input class="input-common middle" type="text" fieldid="<?php echo $v1['category_id']; ?>" fieldname="short_name" value="<?php echo $v1['short_name']; ?>" style="width: 150px;"></td>
			<td><?php echo $v1['attr_name']; ?></td>
			<td style="text-align: center;"><?php echo !empty($v1['is_visible'])?'是' : '否'; ?></td>
			<td style="text-align: center;"><input type="number" class="sort input-common input-common-sort" fieldid="<?php echo $v1['category_id']; ?>" fieldname="sort" value="<?php echo $v1['sort']; ?>" size="1"></td>
			<td style="text-align: center;">
				<a href="<?php echo __URL('ADMIN_MAIN/course/updateCourseClass','category_id='.$v1['category_id']); ?>">修改</a>
				<a href="javascript:void(0);" onclick="delCategory(<?php echo $v1['category_id']; ?>)">删除</a>
			</td>
		</tr>
		
			<?php if(is_array($v1['child_list']) || $v1['child_list'] instanceof \think\Collection || $v1['child_list'] instanceof \think\Paginator): if( count($v1['child_list'])==0 ) : echo "" ;else: foreach($v1['child_list'] as $key=>$v2): ?>
			<tr class="pid_<?php echo $v1['category_id']; ?>" style="height: 30px;display:none;" data-category-id="<?php echo $v2['category_id']; ?>" data-pid="<?php echo $v2['pid']; ?>" data-level="<?php echo $v2['level']; ?>">
				<td>
					<?php if($v2['child_list'] != array()): ?>
					<a href="javascript:;" onclick="tab_switch(<?php echo $v2['category_id']; ?>)" class="tab_jian_<?php echo $v2['category_id']; ?>" style="display: block;">[-]</a>
					<a href="javascript:;" onclick="tab_switch(<?php echo $v2['category_id']; ?>)" class="tab_jia_<?php echo $v2['category_id']; ?>" style="display: none;">[+]</a>
					<?php endif; ?>
				</td>
				
				<td><span style="color:#ccc;">|——</span> <input type="text" class="input-common middle" fieldid="<?php echo $v2['category_id']; ?>" fieldname="category_name" value="<?php echo $v2['category_name']; ?>" style="width: 150px;">
					<a href="javascript:;" onclick="addChildGoodsCategory(this, 3, <?php echo $v2['category_id']; ?>);">
						<span class="add-child"><i>添加子分类</i></span>
					</a>
				</td>
				<td><input type="text" class="input-common middle" fieldid="<?php echo $v2['category_id']; ?>" fieldname="short_name" value="<?php echo $v2['short_name']; ?>" style="width: 150px;"></td>
				<td><?php echo $v2['attr_name']; ?></td>
				<td style="text-align: center;"><?php echo !empty($v2['is_visible'])?'是' : '否'; ?></td>
				<td style="text-align: center;"><input type="number" class="sort input-common input-common-sort" fieldid="<?php echo $v2['category_id']; ?>" fieldname="sort"  value="<?php echo $v2['sort']; ?>" size="1"></td>
				<td style="text-align: center;">
					<a href="<?php echo __URL('ADMIN_MAIN/course/updateCourseClass','category_id='.$v2['category_id']); ?>">修改</a>
					<a href="javascript:void(0);" onclick="delCategory(<?php echo $v2['category_id']; ?>)">删除</a>
				</td>
			</tr>
			
				<?php if(is_array($v2['child_list']) || $v2['child_list'] instanceof \think\Collection || $v2['child_list'] instanceof \think\Paginator): if( count($v2['child_list'])==0 ) : echo "" ;else: foreach($v2['child_list'] as $key=>$v3): ?>
				<tr class="pid_<?php echo $v2['category_id']; ?> pid_<?php echo $v1['category_id']; ?>" style="height: 30px;display:none;" data-category-id="<?php echo $v3['category_id']; ?>" data-pid="<?php echo $v3['pid']; ?>" data-level="<?php echo $v3['level']; ?>">
					<td></td>
					
					<td><span style="color:#ccc;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|——</span> <input class="input-common middle" type="text" fieldid="<?php echo $v3['category_id']; ?>" fieldname="category_name" value="<?php echo $v3['category_name']; ?>" style="width: 150px;"></td>
					<td><input type="text" class="input-common middle" fieldid="<?php echo $v3['category_id']; ?>" fieldname="short_name" value="<?php echo $v3['short_name']; ?>" style="width: 150px;"></td>
					<td><?php echo $v3['attr_name']; ?></td>
					<td style="text-align: center;"><?php echo !empty($v3['is_visible'])?'是' : '否'; ?></td>
					<td style="text-align: center;"><input type="number" class="sort input-common input-common-sort" fieldid="<?php echo $v3['category_id']; ?>" fieldname="sort"  value="<?php echo $v3['sort']; ?>" size="1"></td>
					<td style="text-align: center;">
						<a href="<?php echo __URL('ADMIN_MAIN/course/updateCourseClass','category_id='.$v3['category_id']); ?>">修改</a>
						<a href="javascript:void(0);" onclick="delCategory(<?php echo $v3['category_id']; ?>)">删除</a>
					</td>
				</tr>
				<?php endforeach; endif; else: echo "" ;endif; endforeach; endif; else: echo "" ;endif; endforeach; endif; else: echo "" ;endif; ?>
	</tbody>
</table>
<?php else: ?>
	<div class="tip-box">当前系统还没有课程分类，<a href="<?php echo __URL('ADMIN_MAIN/course/addCourseClass'); ?>">马上添加</a></div>
<?php endif; ?>


<div class="options-btn" id="saveNewAddedCategory" style="display: none;">
	<button class="btn-common btn-small">保存</button>
</div>

<!--添加分类-->
<div id="addChildGoodsCategory" class="modal hide fade" tabindex="-1" role="dialog" aria-hidden="true" >
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		<h3 id="myModalLabel" class="box-title">添加分类</h3>
	</div>
	<div class="modal-body">
		<div class="form-horizontal">
			
			<div class="control-group">
				<label class="control-label" for="article_class_name"><span class="color-red">*</span>分类名称：</label>
				<div class="controls">
					<input type="text" id="category_name" class="input-common" placeholder="请输入分类名称" />
					<p class="help-block input-error">课程分类不能为空，且长度不能超过30个字</p>
				</div>
			</div>

			<div class="control-group">
				<label class="control-label" for="article_class_name"><span class="color-red">*</span>分类简称：</label>
				<div class="controls">
					<input type="text" id="short_name" class="input-common" placeholder="请输入分类简称" />
					<p class="help-block input-error">课程分类简称不能为空，且长度不能超过20个字</p>
				</div>
			</div>
			
			<div class="control-group">
				<label class="control-label" for="goods_category_pid"><span class="color-red">*</span>上级分类：</label>
				<div class="controls">
					<select id="goods_category_pid" name="account" class="select-common">
						<option value="0">顶级分类</option>
						<?php if(is_array($category_list) || $category_list instanceof \think\Collection || $category_list instanceof \think\Paginator): if( count($category_list)==0 ) : echo "" ;else: foreach($category_list as $key=>$v1): ?>
							<option value="<?php echo $v1['category_id']; ?>"><?php echo $v1['category_name']; ?></option>
							<?php if(is_array($v1['child_list']) || $v1['child_list'] instanceof \think\Collection || $v1['child_list'] instanceof \think\Paginator): if( count($v1['child_list'])==0 ) : echo "" ;else: foreach($v1['child_list'] as $key=>$v2): ?>
							<option value="<?php echo $v2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $v2['category_name']; ?></option>
							<?php endforeach; endif; else: echo "" ;endif; endforeach; endif; else: echo "" ;endif; ?>
					</select>
				</div>
			</div>
			
			<div class="control-group">
				<label class="control-label" for="sort">排序：</label>
				<div class="controls">
					<input onkeyup="value=value.replace(/[^\d+(\.\d+)?]/g,'')" type="number" name="sort" id="sort" value="0" class="input-common"/>
					<p class="help-block input-error" id='sortPrompt'>排序不可为空</p>
				</div>
			</div>
		</div>
	</div>
	<div class="modal-footer">
		<button class="btn-common" id="addBtn" onClick="save()">保存</button>
		<button class="btn" onclick="closeAddGoodsCategory()">关闭</button>
	</div>
</div>

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

<script type="text/javascript">
$(".table-class tr[data-category-id] input").live("change",function(){
	var fieldid = $(this).attr('fieldid');
	var fieldname = $(this).attr('fieldname');
	var fieldvalue = $(this).val();
	if(fieldvalue == ''){
		showTip("不能为空哦","warning");
	}else{
		$.ajax({
			type:"post",
			url:"<?php echo __URL('ADMIN_MAIN/course/modifycourseclassField'); ?>",
			data:{'fieldid':fieldid,'fieldname':fieldname,'fieldvalue':fieldvalue},
			success: function (data) {
				if(data>0){
					showTip("操作成功","success");
				}else{
					showTip("操作失败","error");
				}
			}
		});
	}
});

function tab_switch(module_id){
	if($(".pid_"+module_id).css('display') != 'none'){
		$(".tab_jian_"+module_id).hide();
		$(".tab_jia_"+module_id).show();
		$(".pid_"+module_id).hide(300);
	}else{
		$(".tab_jian_"+module_id).show();
		$(".tab_jia_"+module_id).hide();
		$(".pid_"+module_id).show(500);
	}
}

/* 删除分类 */
function delCategory(category_id) {
	$( "#dialog" ).dialog({
		buttons: {
			"确定": function() {
				$(this).dialog('close');
				$.ajax({
					type : "post",
					url : "<?php echo __URL('ADMIN_MAIN/course/deleteCourseClass'); ?>",
					data : {
						'category_id' : category_id,
						'goods_category_quick' : JSON.stringify(getCookieGoodsCategory(category_id))
					},
					dataType : "json",
					success : function(data) {
						if(data['code'] > 0){
							showTip(data['message'],"success");
							location.href = "<?php echo __URL('ADMIN_MAIN/course/courseclasslist'); ?>";
						}else{
							showTip(data['message'],"error");
						}
					}
				});
			},
			"取消,#f5f5f5,#666": function() {
				$(this).dialog('close');
			}
		},
		contentText:"你确定删除吗？",
		title:"消息提醒"
	});
}

//查询当前用户最近一天是否发布过课程，修改过课程分类，要删除cookie中对应的值
function getCookieGoodsCategory(category_id){
	var goods_category_quick_new = new Array();// 快速选择课程分类集合
	$.ajax({
		url : "<?php echo __URL('ADMIN_MAIN/goods/getquickcourse'); ?>",
		type : "post",
		async : false,
		success : function(res) {
			var goods_category_quick = eval(res);// 将Cookie中的数据取出来
			for (var i = 0; i < goods_category_quick.length; i++) {
				var quick_name = goods_category_quick[i]["quick_name"];
				var quick_id_arr = goods_category_quick[i]["quick_id"].split(",");
				if(quick_id_arr[quick_id_arr.length-1] == category_id){
					continue;
				}else{
					var json = {
						quick_name : quick_name,
						quick_id : goods_category_quick[i]["quick_id"],
					};
					goods_category_quick_new.push(json);
				}
			}
		}
	});
	return goods_category_quick_new;
}

//添加课程分类


function addChildGoodsCategory(obj, level, pid){
	html = '<tr class="new-added pid_'+pid+'" data-level="'+level+'" data-pid="'+pid+'">';
		html += '<td></td>';
		
		if(level == 1){
			//分类名称
			html += '<td style="text-align: left;">';
			html += '<input class="input-common middle" type="text"  value="" name="categoryName"></td>';
			//分类简称
			html += '<td style="text-align: left;">';
				html += '<input class="input-common middle" type="text" name="categoryShortName"  value="" >';
			html += '</td>';
		}else if(level == 2){
			//分类名称
			html += '<td style="text-align: left;">';
			html += '<span style="color:#ccc;">|——</span> <input class="input-common middle" type="text" name="categoryName"  value=""></td>';
			//分类简称
			html += '<td style="text-align: left;">';
				html += '<input class="input-common middle" type="text"  value="" name="categoryShortName">';
			html += '</td>';
		}else if(level == 3){
			//分类名称
			html += '<td style="text-align: left;">';
			html += '<span style="color:#ccc;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|——</span><input class="input-common middle" type="text"  value="" name="categoryName">';
			html += '</td>';
			//分类名称
			html += '<td style="text-align: left;">';
				html += '<input class="input-common middle" type="text"  value="" name="categoryShortName">';
			html += '</td>';
		}
		html += '<td style="text-align: center;"></td>';
		html += '<td style="text-align: center;">是</td>';
		html += '<td style="text-align: center;">';
			html += '<input type="number" class="sort input-common input-common-sort" name="categorySort" value="0" >';
		html += '</td>';
		html += '<td style="text-align: center;"><a href="javascript:void(0);" onclick="delNewAddedCategory(this)">删除</a></td>';
	html += '</tr>';

	$(obj).parents("tr").after(html);

	$("#saveNewAddedCategory").show();
}
// function addChildGoodsCategory(pid){
// 	$("#goods_category_pid option[value='"+pid+"']").prop("selected",true);
// 	$("#addChildGoodsCategory").modal("show");
// }

//删除新增分类
function delNewAddedCategory(event){
	$(event).parents("tr").remove();
}

var is_sub = false;
$("#saveNewAddedCategory").live('click', function(event) {
	var content = new Array();
	$(".new-added").each(function(i, e) {
		var sort = $(e).find("input[name='categorySort']").val();
			sort = sort.length == 0 ? 0 : sort;
		var categoryName = $(e).find("input[name='categoryName']").val();
		var categoryShortName = $(e).find("input[name='categoryShortName']").val();
		var level = $(e).attr("data-level");
		var pid = $(e).attr("data-pid");
		if(categoryName != ""){
			var category_info_arr = new Object();
				category_info_arr.sort = sort;
				category_info_arr.categoryName = categoryName;
				category_info_arr.categoryShortName = categoryShortName;
				category_info_arr.level = level;
				category_info_arr.pid = pid;
				category_info_str = JSON.stringify(category_info_arr);
			content.push(category_info_str);
		}
	});
	content = JSON.stringify(content);

	if(content.length == 2){
		return;
	}
	
	if(is_sub) return;
	is_sub = true;
	$.ajax({
		type : "post",
		url : "<?php echo __URL('ADMIN_MAIN/course/batchAddcourseclass'); ?>",
		data : { "content" : content },
		success : function(data){
			if(data["code"] > 0){
				showTip(data['message'],"success");
				location.href = "<?php echo __URL('ADMIN_MAIN/course/courseclasslist'); ?>";
			}else{
				showTip(data['message'],"error");
				location.href = "<?php echo __URL('ADMIN_MAIN/course/courseclasslist'); ?>";
			}
		}
	})
});

var is_click = false;
function save(){
	var category_name = $("#category_name").val();
	var pid = $("#goods_category_pid").val();
	var sort = $("#sort").val();
	var short_name = $("#short_name").val();
	if(verify( category_name,short_name, sort)){
		if(is_click){
			return false;
		}
		is_click = true;
		$.ajax({
			type : "post",
			url : "<?php echo __URL('ADMIN_MAIN/course/addCourseClass'); ?>",
			data : {
				'category_name' : category_name,
				'pid' : pid,
				'keywords' : "",
				'sort' : sort,
				'description' : "",
				'is_visible' : 1,
				"category_pic" : "",
				"short_name" : short_name,
				"attr_id" : "",
				"attr_name" : ""
			},
			success : function(data) {
				
				var parent = $(".table-class tbody tr[data-category-id='" + pid + "']");
				var level = parseInt(parent.attr("data-level")) + 1;
				
				if (data["code"] > 0) {
					
					var parent_html = '';//父级展开合起开关
					var select_html = '';//课程分类下拉框
					
					var pid_class = 'pid_' + pid;
					if(level == 2){
						//如果当前添加的是二级分类，则要更新课程分类下拉框列表
						select_html = '<option value="' + data.code + '">&nbsp;&nbsp;&nbsp;&nbsp;' + category_name + '</option>';
					}else if(level == 3){
						pid_class = "pid_" + pid + " pid_" + parent.attr("data-pid");
					}
					
					var html = '<tr class="' + pid_class + '" style="height: 30px;" data-category-id="' + data.code + '" data-pid="' + pid + '" data-level="' + level + '">';
					
							html += '<td></td>';
								parent_html += '<a href="javascript:;" onclick="tab_switch(' + pid + ')" class="tab_jia_' + pid + '" style="display: block;"><i class="fa fa-plus-circle"></i></a>';
								parent_html += '<a href="javascript:;" onclick="tab_switch(' + pid + ')" class="tab_jian_' + pid + '" style="display: none;"><i class="fa fa-minus-circle"></i></a>';
							
							html += '<td style="text-align: center;"><input type="number" class="sort input-common input-common-sort" fieldid="' + data.code + '" fieldname="sort" value="' + sort + '" size="1"></td>';

							html += '<td>';
								if(level == 2){
									html += '<span style="color:#ccc;">|——</span>';
								}else if(level == 3){
									html += '<span style="color:#ccc;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|——</span>';
								}
								html += '<input class="input-common" type="text" fieldid="' + data.code + '" fieldname="category_name" value="' + category_name + '" style="width: 150px;">';
								
								if(level == 2){
									html += '<a href="javascript:;" onclick="addChildGoodsCategory(' + data.code + ');">添加子分类</a>';
								}
							html += '</td>';
							
							html += '<td><input class="input-common" type="text" fieldid="' + data.code + '" fieldname="short_name" value="' + short_name + ' " style="width: 150px;"></td>';
							
							html += '<td></td>';
							
							html += '<td style="text-align: center;">是</td>';
							
							html += '<td style="text-align: center;">';
								html += '<a href="' + __URL(ADMINMAIN + "/course/updateCourseClass?category_id=" + data.code) + '">修改</a>';
									html += '<a href="javascript:void(0);" onclick="delCategory(' + data.code + ')">删除</a>';
							html += '</td>';
						html += '</tr>';
				
					if($(".pid_" + pid).length == 0){
						$(".table-class tbody tr[data-category-id='" + pid+ "']").after(html);
					}else{
						var last_pid = ".pid_" + pid + ":last";
						$(last_pid).after(html);
					}
					
					parent.find("td:first").html(parent_html);

					$(".tab_jian_" + pid).show();
					$(".tab_jia_" + pid).hide();
					$(".pid_" + pid).show(500);

					$("#goods_category_pid").append(select_html);
					$("#addChildGoodsCategory").modal("hide");
					
					$("#category_name").val("");
					$("#short_name").val("");
					$("#sort").val(0);
					showTip(data['message'],"success");
				}else{
					showTip(data['message'],"error");
				}
				is_click = false;
			}
		});
	}
}

function closeAddGoodsCategory(){
	is_click = false;
	$("#addChildGoodsCategory").modal("hide");
}

$(".modal-backdrop").live("click",function(){
	closeAddGoodsCategory();
});

//模块输入信息验证
function verify( category_name,short_name, sort){
	if(category_name == '' || category_name.length>30){
		$("#category_name").next().show();
		return false;
	}else{
		$(".input-error").hide();
	}
	if(short_name == '' || short_name.length>20){
		$("#short_name").next().show();
		return false;
	}else{
		$(".input-error").hide();
	}
	if(sort == ''){
		$("#short_name").next().show();
		return false;
	}else{
		$(".input-error").hide();
	}
	return true;
}
</script>

</body>
</html>