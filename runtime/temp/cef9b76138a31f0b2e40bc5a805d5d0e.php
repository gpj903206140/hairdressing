<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:49:"template/course\default_new\Index\photo_wall.html";i:1545470237;s:39:"template/course\default_new\header.html";i:1545876327;}*/ ?>
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
<style type="text/css">
    body{background: #121011;}
</style>
<div class="topcontent teacher clearfix">
    <div id="sliderx" class="mui-slider">
        <div class="mui-slider-group mui-slider-loop">
            <div class="mui-slider-item mui-slider-item-duplicate">
                <a href="#">
                    <?php if($last['pic_cover']): ?>
                    <img src="<?php echo __IMG($last['pic_cover']); ?>">
                    <?php else: ?>
                    <img src="__TEMP__/<?php echo $style; ?>/public/images/temp/noImg.png">
                    <?php endif; ?>
                </a>
            </div>
            <!-- 第一张 -->
            <?php if(is_array($imgs) || $imgs instanceof \think\Collection || $imgs instanceof \think\Paginator): $k = 0; $__LIST__ = $imgs;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$img): $mod = ($k % 2 );++$k;?>
            <div class="mui-slider-item">
                <a href="#">
                    <?php if($img['pic_cover']): ?>
                    <img src="<?php echo __IMG($img['pic_cover']); ?>">
                    <?php else: ?>
                    <img src="__TEMP__/<?php echo $style; ?>/public/images/temp/noImg.png">
                    <?php endif; ?>
                </a>
            </div>
            <?php endforeach; endif; else: echo "" ;endif; ?>
            <div class="mui-slider-item mui-slider-item-duplicate">
                <a href="#">
                    <?php if($imgs['0']['pic_cover']): ?>
                    <img src="<?php echo __IMG($imgs['0']['pic_cover']); ?>">
                    <?php else: ?>
                    <img src="__TEMP__/<?php echo $style; ?>/public/images/temp/noImg.png">
                    <?php endif; ?>
                </a>
            </div>
        </div>
        <div class="mui-slider-indicator">
            <?php if(is_array($imgs) || $imgs instanceof \think\Collection || $imgs instanceof \think\Paginator): $k = 0; $__LIST__ = $imgs;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$img): $mod = ($k % 2 );++$k;?>
            <div class="mui-indicator <?php if($ks == 1): ?>mui-active<?php endif; ?>"></div>
            <?php endforeach; endif; else: echo "" ;endif; ?>
        </div>
    </div>
</div>

<script src="__TEMP__/<?php echo $style; ?>/public/mui/js/mui.js"></script>
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