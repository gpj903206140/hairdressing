<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:54:"template/course\default_new\Courses\specialdetail.html";i:1546852925;s:39:"template/course\default_new\header.html";i:1545876327;}*/ ?>
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
<div class="ztkcxq new-course clearfix">
    <div class="photo-hair ztphoto l"><a href="javascript:;">
    <?php if($class['category_pic']): ?>
    <img src="<?php echo __IMG($class['category_pic']); ?>">
    <?php else: ?>
    <img src="__TEMP__/<?php echo $style; ?>/public/images/temp/noImg.png">
    <?php endif; ?>
     </a></div>
    <div class="juli">
        <div class="course-bt"><a href="javascript:;"><?php echo $class['category_name']; ?></a></div>
        <div class="zhineng"><?php echo $class['description']; ?></div>

    </div>
</div>
<div class="cousetop">
    <div class="wzbt">课程（<span>0</span>）</div>
</div>
<div class="rel">

    <div class=" mui-content  mui-scroll-wrapper new-course " id="refreshContainer" style="top: 0">
        <div class="mui-scroll">
            <ul class="mui-table-view " id="list"></ul>
        </div>
    </div>
    <div id="list_c" style="display:none;">
        

        <li class="wsj" style="display: none"><img src="__TEMP__/<?php echo $style; ?>/public/images/wtp.png"><br>暂无数据</li>
    </div>
</div>
<input type="hidden" id="page_count">
<script src="__TEMP__/<?php echo $style; ?>/public/mui/js/mui.js"></script>
<script type="text/javascript">
    mui('body').on('tap', 'a', function () {
        document.location.href = this.href;
    })
    mui.init();
    $(function () {
        var count = 1;
        mui.init({
            pullRefresh: {
                container: '#refreshContainer',
                down: {
                    auto: true,
                    callback: function () {
                        setTimeout(function () {
                            count = 0;
                            //$('#list').html($('#list_c').html());
                            mui('#refreshContainer').pullRefresh().endPulldownToRefresh();
                            mui('#refreshContainer').pullRefresh().endPullupToRefresh(false);
                            ajaxPage(1);
                            count++;
                        }, 1000);
                    }
                },
                up: {
                    height: 50,//可选.默认50.触发上拉加载拖动距离
                    callback: function () {
                        setTimeout(function () {
                            //$('#list').append($('#list_c').html());
                            var page_count = $("#page_count").val();
                            count++;
                            mui('#refreshContainer').pullRefresh().endPullupToRefresh(count > page_count);
                            ajaxPage();
                        }, 1000);

                    }
                }
            }
        });
    })
    var page=2;
    function ajaxPage(pages=0){
        var keyword=$("#keyword").val();
        if(pages>0){
            page=pages;
        }
        var category_id="<?php echo $category_id; ?>";
        url="<?php echo __URL('COURSE_MAIN/courses/kc_more'); ?>&page_index="+page+'&category_id='+category_id;
        $.get(url,function(data){
            if(data==0){
                if(page==1){
                   var wsj = $(".wsj").clone();
                   $("#list").html("");
                   $("#list").html(wsj);
                   var len=$(".wsj").length;
                   if(len>1){
                    $(".wsj").eq(1).remove();
                   }
                   $(".wsj").show(); 
                   $(".mui-pull").hide();
                }
            }else{
                var myjson='';
                eval('myjson='+data+'');
                var html='';
                var len=myjson['data'].length;
                if(len>0){
                    for(var i=0;i<len;i++){
                        var item=myjson['data'][i];
                        html+='<li class="mui-table-view-cell">';
                            html+='<a href="'+__URL('COURSE_MAIN/courses/coursedetail?id='+item.goods_id)+'">';
                                if(item.picture_info.pic_cover){
                                   var pic_cover=item.picture_info.pic_cover;
                                   html+='<div class="img-jq l" style="background-image: url('+__IMG(item.picture_info.pic_cover)+')"></div>';
                                }else{
                                   html+='<div class="img-jq l" style="background-image: url("__TEMP__/<?php echo $style; ?>/public/images/temp/noImg.png")"></div>'; 
                                }
                                html+='<div class="juli">';
                                    html+='<div class="ssbt">';
                                        html+='<div class="l"><span class="fashion-tab">'+item['goods_group_name'][0]+'</span></div>';
                                         html+='<div class="r"><i class="icon icon-star"></i><span class="juse">'+item.score+'</span></div>';
                                    html+='</div>';
                                    html+='<div class="course-bt">'+item.goods_name+'</div>';
                                    html+='<div class="zhineng">'+item.introduction+'</div>';
                                    html+='<div class="clearfix rel">';
                                        html+='<div class="listen">'+item.sales+'人<?php echo lang('course_detail_price'); ?></div>';
                                        html+='<div class="price" style="height: 1.5rem;">';
                                        if(item.is_showprice==1){
                                        html+='￥'+item.price;
                                        }
                                        html+='</div>';
                                    html+='</div>';
                                html+='</div>';
                            html+='</a>';
                        html+='</li>'; 
                    }
                    page++;
                }else{
                    $(".wsj").show();
                }
                if(pages==1){
                    $(".wzbt span").html(myjson['total_count']);
                    $("#page_count").val(myjson['page_count']);
                    $("#list").html(html);
                }else{
                    $("#list").append(html);
                }
                
            }
            
            //$("#pages").html(myjson.page);
        })
        return false;
    }
</script>
</body>
</html>