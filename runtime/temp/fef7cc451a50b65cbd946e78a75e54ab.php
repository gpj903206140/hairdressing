<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:54:"template/course\default_new\Index\mechanismdetail.html";i:1551072275;s:39:"template/course\default_new\header.html";i:1545876327;}*/ ?>
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
<style>
.guanzhubt a.active{
   background:#9c9c9c;
}
.clearfix li img{
    height:140px;
}
.guanzhubt {
    position: absolute;
    right: 2rem;
    top: 2rem;
}
</style>
<header class="arrow">
    <a class="mui-action-back mui-icon mui-icon-left-nav" href="<?php echo __URL('COURSE_MAIN/Index/index'); ?>" data-return="1"></a>
</header>
<div class="hezuojg rel ">
    <?php if($data['mechanism_pic']): ?>
    <img src="<?php echo __IMG($data['mechanism_pic']); ?>" class="photo-img hz-img">
    <?php else: ?>
    <img src="__TEMP__/<?php echo $style; ?>/public/images/temp/noImg.png" class="photo-img hz-img">
    <?php endif; ?>
    <h3><?php echo $data['mechanism_name']; ?></h3>
    <div class="guanzhubt"><a href="javascript:;"  class="follow <?php if($state == 1): ?>active<?php endif; ?>" data-state="1"><?php if($state == 1): ?>已关注<?php else: ?>+关注<?php endif; ?></a></div>
    <div class="gzren"><span><?php echo $data['follow_num']; ?></span> 人关注</div>
</div>
<div class="jigoujj">
    <div class="jj"><?php echo $data['description']; ?></div>
    <div class="rush-buy ">
        <div class="cousetop">
            <div class="wzbt">机构老师</div>
        </div>
        <div class="mui-slider  cg hz">
            <div class="mui-scroll-wrapper mui-slider-indicator mui-segmented-control mui-segmented-control-inverted">
                <div class="mui-scroll">
                    <?php if(is_array($teacher_list) || $teacher_list instanceof \think\Collection || $teacher_list instanceof \think\Paginator): $k = 0; $__LIST__ = $teacher_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$teacher): $mod = ($k % 2 );++$k;?>
                    <a href="<?php echo __URL('COURSE_MAIN/Index/teacherdetail&mechanism_id='.$mechanism_id); ?>" class="mui-control-item <?php if($km == 1): ?>mui-active<?php endif; ?>">
                        <?php if($teacher['teacher_pic']): ?>
                        <img src="<?php echo __IMG($teacher['teacher_pic']); ?>" class="photo-img hz-img">
                        <?php else: ?>
                        <img src="__TEMP__/<?php echo $style; ?>/public/images/temp/noImg.png" class="photo-img hz-img">
                        <?php endif; ?>
                    </a>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                </div>
            </div>
        </div>

    </div>
</div>
<div class="rel">
    <div id="segmentedControl" class="mui-segmented-control mui-segmented-control-inverted switch">
        <a class="mui-control-item  <?php if($type == 0): ?>mui-active<?php endif; ?>" href="<?php echo __URL('COURSE_MAIN/Index/mechanismdetail&type=0&id='.$mechanism_id); ?>" data-type="0">线上课<span></span> </a>
        <a class="mui-control-item  <?php if($type == 1): ?>mui-active<?php endif; ?>" href="<?php echo __URL('COURSE_MAIN/Index/mechanismdetail&type=1&id='.$mechanism_id); ?>" data-type="1">线下课<span></span></a>
        <a class="mui-control-item" href="#item3">作品墙<span></span></a>
    </div>
    <div >
        <div id="item1" class="mui-control-content mui-active">
            <div class=" mui-content  mui-scroll-wrapper new-course " id="refreshContainer" style="top:0;min-height: 35vh;">
                <div class="mui-scroll">
                    <ul class="mui-table-view " id="list" style="padding-bottom: 0px;"></ul>

                </div>
            </div>
        </div>
        <div id="item2" class="mui-control-content">
            <div class=" mui-content  mui-scroll-wrapper new-course " id="refreshContainer" style="top:0;">
                <div class="mui-scroll">
                    <ul class="mui-table-view " id="list1"></ul>
                </div>
            </div>
        </div>
        <div id="item3" class="mui-control-content">
            <div class=" mui-content  mui-scroll-wrapper new-course zpq " id="refreshContainer" style="top:0;">
                <div class="mui-scroll">
                    <ul class="mui-table-view clearfix " id="list2">
                    <?php if($imgs): if(is_array($imgs) || $imgs instanceof \think\Collection || $imgs instanceof \think\Paginator): $k = 0; $__LIST__ = $imgs;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$img): $mod = ($k % 2 );++$k;?>
                        <li >
                            <a href="<?php echo __URL('COURSE_MAIN/Index/photo_wall&mechanism_id='.$mechanism_id); ?>">
                                <?php if($img['pic_cover']): ?>
                                <img src="<?php echo __IMG($img['pic_cover']); ?>" class="imgb">
                                <?php else: ?>
                                <img src="__TEMP__/<?php echo $style; ?>/public/images/temp/noImg.png" class="imgb">
                                <?php endif; ?>
                            </a>
                        </li>
                        <?php endforeach; endif; else: echo "" ;endif; else: ?>
                        <div id="list_c1" style="display:block;">
                           <p style="width: 100%;text-align: center;margin-top:20px;"><img src="__TEMP__/<?php echo $style; ?>/public/images/wtp.png" style="width: 22%;"><br>暂无数据</p>
                        </div>
                    <?php endif; ?>
                    </ul>
                </div>
            </div>
        </div>

    </div>


    <div id="list_c" style="display:none;">
        
        <li class="wsj" style="display: none;padding: 2rem 0;"><img src="__TEMP__/<?php echo $style; ?>/public/images/wtp.png"><br>暂无数据</li>
    </div>

</div>
<input type="hidden" id="page_count">
<input type="hidden" id="course_type" value="<?php echo $type; ?>">
<script src="__TEMP__/<?php echo $style; ?>/public/mui/js/mui.js"></script>
<script type="text/javascript">
    mui('body').on('tap', 'a', function () {
        window.location.href = this.href;
        var returns = $(this).attr('data-return');
        if(returns==1){
            return false;
        }
    })
    mui.init();
</script>
<script type="text/javascript">
    mui('body').on('tap', '.follow', function () {
        var ai=$(this);
        var cover_id="<?php echo $data['mechanism_id']; ?>";
        var cover_name="<?php echo $data['mechanism_name']; ?>";
        var state=$(this).attr('data-state');
        var follow_num = $(".gzren span").html();
        var url="<?php echo __URL('COURSE_MAIN/Courses/follow'); ?>";
        $.post(url,{cover_id:cover_id,cover_name:cover_name,state:state},function(reslut){
            if(reslut==1){
                layer.msg('关注成功');
                ai.addClass("active");
                ai.html("已关注");
                $(".gzren span").html(follow_num*1+1);
            }else if(reslut==2){
                layer.msg('关注失败');
            }else if(reslut==3){
                layer.msg('取消关注成功');
                ai.removeClass("active");
                ai.html("+关注");
                $(".gzren span").html(follow_num*1-1);
            }else if(reslut==4){
                layer.msg('取消关注失败');
            }else if(reslut==5){
                layer.msg('你还未登录,请先登录!');
                
                setTimeout(function(){window.location.href="<?php echo __URL('COURSE_MAIN/login'); ?>";},1000);
            }
        })
    })
    
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
        var mechanism_id = "<?php echo $mechanism_id; ?>";
        var course_type=$("#course_type").val();
        url="<?php echo __URL('COURSE_MAIN/courses/kc_more'); ?>&page_index="+page+'&mechanism_id='+mechanism_id+'&course_type='+course_type;
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
                    $("#page_count").val(myjson['page_count']);
                    $("#list").html(html);
                    $("#list1").html(html);
                }else{
                    $("#list").append(html);
                    $("#list1").append(html);
                }
                
                
                
            }
            
            //$("#pages").html(myjson.page);
        })
        return false;
    }
</script>
</body>
</html>