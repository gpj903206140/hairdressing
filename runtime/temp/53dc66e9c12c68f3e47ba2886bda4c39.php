<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:50:"template/course\default_new\Member\my_collect.html";i:1551063707;s:39:"template/course\default_new\header.html";i:1545876327;s:39:"template/course\default_new\footer.html";i:1546484966;}*/ ?>
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

<div class="rel">
    <div id="segmentedControl" class="mui-segmented-control mui-segmented-control-inverted switch">
        <a class="mui-control-item <?php if($course_type == 0): ?>mui-active<?php endif; ?>" href="<?php echo __URL('COURSE_MAIN/Member/my_collect&course_type=0'); ?>">线上课程 <span></span></a>
        <a class="mui-control-item <?php if($course_type == 1): ?>mui-active<?php endif; ?>" href="<?php echo __URL('COURSE_MAIN/Member/my_collect&course_type=1'); ?>">线下课程<span></span></a>
        <a class="mui-control-item <?php if($course_type == 2): ?>mui-active<?php endif; ?>" href="<?php echo __URL('COURSE_MAIN/Member/my_collect&course_type=2'); ?>">产品课程<span></span></a>
    </div>
    <div class=" mui-content  mui-scroll-wrapper new-course " id="refreshContainer">
        <div class="mui-scroll">
            <ul class="mui-table-view " id="list"></ul>
        </div>
    </div>
    <div id="list_c" style="display:none;">
        <li class="mui-table-view-cell">
            <a  href="kc_jieshao.html">
                <div class="img-jq l" style="background-image: url('__TEMP__/<?php echo $style; ?>/public/images/temp/new.jpg')"></div>
                <div class="juli">
                    <div class="ssbt">
                        <div class="l"><span class="fashion-tab">时尚美发</span></div>
                       <!-- <div class="r"><i class="icon icon-star"></i><span class="juse">8.6</span></div>-->
                    </div>
                    <div class="course-bt">国际联盟美发师顶尖强化班</div>
                    <div class="zhineng">这是美业史上最简单易学，最成体系的造宝典</div>
                    <div class="clearfix rel">
                        <div class="listen">4201人收藏</div>
                        <div class="price">￥79.00</div>
                    </div>
                </div>
            </a>
        </li>
        <li class="mui-table-view-cell">
            <a  href="kc_jieshao.html">
                <div class="img-jq l" style="background-image: url('__TEMP__/<?php echo $style; ?>/public/images/temp/new.jpg')"></div>
                <div class="juli">
                    <div class="ssbt">
                        <div class="l"><span class="fashion-tab">时尚美发</span></div>
                        <!--<div class="r"><i class="icon icon-star"></i><span class="juse">8.6</span></div>-->
                    </div>
                    <div class="course-bt">国际联盟美发师顶尖强化班</div>
                    <div class="zhineng">这是美业史上最简单易学，最成体系的造宝典</div>
                    <div class="clearfix rel">
                        <div class="listen">4201人收藏</div>
                        <div class="price">￥79.00</div>
                    </div>
                </div>
            </a>
        </li>

        <li class="wsj" style="display: none"><img src="__TEMP__/<?php echo $style; ?>/public/images/wtp.png"><br>暂无数据</li>
    </div>
</div>
<input type="hidden" id="page_count">
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
<script type="text/javascript">
    mui('body').on('tap', 'a', function () {
        document.location.href = this.href;
    })
    mui('body').on('tap', '.follow', function () {
        var ai=$(this);
        var cover_id=$(this).attr('data-id');
        var cover_name=$(this).attr('data-name');
        var state=0;
        var url="<?php echo __URL('COURSE_MAIN/Courses/follow'); ?>";
        $.post(url,{cover_id:cover_id,cover_name:cover_name,state:state},function(reslut){
            if(reslut==1){
                layer.msg('收藏成功');
                ai.addClass("active");
            }else if(reslut==2){
                layer.msg('收藏失败');
            }else if(reslut==3){
                layer.msg('取消收藏成功');
                ai.parents('li').remove();
            }else if(reslut==4){
                layer.msg('取消收藏失败');
            }else if(reslut==5){
                layer.msg('你还未登录,请先登录!');
                
                setTimeout(function(){window.location.href="<?php echo __URL('COURSE_MAIN/login'); ?>";},1000);
            }
        })
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
        if(pages>0){
            page=pages;
        }
        course_types="&course_type=<?php echo $course_type; ?>";
        url="<?php echo __URL('COURSE_MAIN/member/my_collect'); ?>&page_index="+page+course_types;
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
                        html+='<li class="mui-table-view-cell" data-id="'+item.goods_id+'" style="position:relative;">';
                            html+='<a  href="'+__URL('COURSE_MAIN/courses/coursedetail?id='+item.goods_id)+'">';
                            //html+='<a  href="javascript:;">';
                                if(item.picture_info.pic_cover){
                                   var pic_cover=item.picture_info.pic_cover;
                                   html+='<div class="img-jq l link" style="background-image: url('+__IMG(item.picture_info.pic_cover)+')"></div>';
                                }else{ 
                                   html+='<div class="img-jq l link" style="background-image: url("__TEMP__/<?php echo $style; ?>/public/images/temp/noImg.png")"></div>';
                                }
                                html+='<div class="juli">';
                                    html+='<div class="ssbt">';
                                        html+='<div class="l"><span class="fashion-tab">'+item['goods_group_name'][0]+'</span></div>';
                                        
                                    html+='</div>';
                                    html+='<div class="course-bt link">'+item.goods_name+'</div>';
                                    html+='<div class="zhineng link">'+item.introduction+'</div>';
                                    html+='<div class="clearfix rel">';
                                        html+='<div class="listen">'+item.collects+'人收藏</div>';
                                        html+='<div class="price" style="height: 1.5rem;">';
                                        if(item.is_showprice==1){
                                        html+='￥'+item.price;
                                        }
                                        html+='</div>';
                                    html+='</div>';
                                html+='</div>';
                            html+='</a>';
                            html+='<div class="r follow" style="color:#ff8f00;position: absolute;right:5%;top:16px;" data-id="'+item.goods_id+'">取消收藏</div>';
                       html+='</li>';
                    }
                    page++;
                }else{
                    $(".wsj").show();
                }
                if(pages==1){
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