<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:53:"template/course\default_new\Courses\coursedetail.html";i:1545966690;s:39:"template/course\default_new\header.html";i:1545876327;}*/ ?>
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
    <header class="arrow">
        <a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" onclick="window.history.go(-1)" ></a>
    </header>
    <iframe frameborder="0" src="<?php echo $course_info['goods_video_address']; ?>" allowFullScreen="true"
            class="video"></iframe>
</div>
<div class="bgwh kcjj-about gap">
    <div class="bdline rel">
        <div class="favor">
            <a href="javascript:;" class="follow" data-state="0">
                <i class="icon icon-favor sc <?php if($state == 1): ?>active<?php endif; ?>"></i>收藏
            </a>
        </div>
        <!-- <div class="guanzhubt"><a  href="kc_invit.html">+邀请好友</a></div> -->
        <div class="price kcbtzt"><?php if($course_info['is_showprice'] == 1): ?>￥<?php echo $course_info['price']; endif; ?></div>
        <div class=" clearfix">
            <div class="l mftab">
            <?php if($course_info['group_name']): if(is_array($course_info['group_name']) || $course_info['group_name'] instanceof \think\Collection || $course_info['group_name'] instanceof \think\Paginator): $i = 0; $__LIST__ = $course_info['group_name'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$group): $mod = ($i % 2 );++$i;?>
            <span class="fashion-tab"><?php echo $group; ?></span>
            <?php endforeach; endif; else: echo "" ;endif; endif; ?>
            </div>
            <div class="pinxing" style="width:100%">
                <div class="pingjiaxing ">
                    <ul>
                        <li class="<?php if($course_info['score'] >= 2): ?>active<?php endif; ?>"></li>
                        <li class="<?php if($course_info['score'] >= 4): ?>active<?php endif; ?>"></li>
                        <li class="<?php if($course_info['score'] >= 6): ?>active<?php endif; ?>"></li>
                        <li class="<?php if($course_info['score'] >= 8): ?>active<?php endif; ?>"></li>
                        <li class="<?php if($course_info['score'] >= 10): ?>active<?php endif; ?>"></li>
                    </ul>
                    <bdo><?php echo $course_info['score']; ?></bdo>
                </div>
            </div>
        </div>
        <div class="course-bt kcbtzt" style="width:70%"><?php echo $course_info['goods_name']; ?></div>
    </div>
    <div class="kcjj-down">
        <div class="kcjj-down1 clearfix">
            <ul>
                <li><i class="icon icon-rq"></i> <?php echo $course_info['crowd']; ?></li>
                <li><i class="icon icon-gm"></i> <?php echo $course_info['sales']; ?>人已购买</li>
            </ul>
        </div>
        <div>
            <i class="icon icon-bfa"></i> 共<?php echo $course_info['total_num']; ?>节课<span class="red ml10">已更新<?php echo $course_info['release_num']; ?>节课</span></div>
    </div>
</div>
<?php if($course_info['teacher']): ?>
<div class="bgwh mfteacher">
    <div class="cousetop ">
        <div class="wzbt">课程老师</div>
    </div>
    
    <div class="txinform">
        <div class="l">
        <?php if($course_info['teacher']['teacher_pic']): ?>
        <img src="<?php echo __IMG($course_info['teacher']['teacher_pic']); ?>" class="yjimg ">
        <?php else: ?>
        <img src="__TEMP__/<?php echo $style; ?>/public/images/temp/noImg.png" class="yjimg ">
        <?php endif; ?>
        </div>
        <div class="plzl">
            <div class="txname"><?php echo $course_info['teacher']['teacher_name']; ?></div>
            <p><?php echo $course_info['teacher']['description']; ?>
            </p>
        </div>
    
    </div>
    
</div>
<?php endif; ?>
<div class="rel">
    <div id="segmentedControl" class="mui-segmented-control mui-segmented-control-inverted switch">
        <a class="mui-control-item mui-active" href="#item1">课程介绍<span></span> </a>
        <a class="mui-control-item" href="#item2">课程目录<span></span></a>
        <a class="mui-control-item" href="#item3">课程评价<span></span></a>
    </div>
    <div class="wdzp">
        <div id="item1" class="mui-control-content mui-active">
            <div class="p10">
                <?php echo $course_info['description']; ?>
            </div>
        </div>
        <div id="item2" class="mui-control-content">
            <div class=" new-course meifa ">
                <ul>
                    <?php if(is_array($course_info['catalogue']) || $course_info['catalogue'] instanceof \think\Collection || $course_info['catalogue'] instanceof \think\Paginator): $ck = 0; $__LIST__ = $course_info['catalogue'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$catalogue): $mod = ($ck % 2 );++$ck;?>
                    <li>
                        <a href="<?php echo __URL('COURSE_MAIN/courses/video_view&goods_id='.$course_info['goods_id'].'&id='.$catalogue['catalogue_id']); ?>">
                            <div class="bofang"><i class="icon icon-bf"></i></div>
                            <div class="zhezhao"></div>
                            <div class="photo-hair l">
                            <?php if($catalogue['catalogue_pic']): ?>
                            <img src="<?php echo __IMG($catalogue['catalogue_pic']); ?>">
                            <?php else: ?>
                            <img src="__TEMP__/<?php echo $style; ?>/public/images/temp/noImg.png">
                            <?php endif; ?>
                            </div>
                            <div class="juli">
                                <div class="course-bt"><?php echo $catalogue['catalogue_name']; ?></div>
                                <div class="zhineng"><?php echo $catalogue['description']; ?></div>
                            </div>
                        </a>
                    </li>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                    
                    <li class="wsj" style="display: none"><img src="__TEMP__/<?php echo $style; ?>/public/images/wtp.png"><br>暂无数据</li>
                </ul>
            </div>
        </div>
        <div id="item3" class="mui-control-content">
            <div class="new-course pfym">
                <ul>
                    <?php if(is_array($assessList) || $assessList instanceof \think\Collection || $assessList instanceof \think\Paginator): $i = 0; $__LIST__ = $assessList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$assess): $mod = ($i % 2 );++$i;?>
                    <li>
                        <div class="txinform">
                            <div class="pinxing">
                                <div class="pingjiaxing ">
                                    <ul>
                                        <li class="<?php if($assess['score'] >= 2): ?>active<?php endif; ?>"></li>
                                        <li class="<?php if($assess['score'] >= 4): ?>active<?php endif; ?>"></li>
                                        <li class="<?php if($assess['score'] >= 6): ?>active<?php endif; ?>"></li>
                                        <li class="<?php if($assess['score'] >= 8): ?>active<?php endif; ?>"></li>
                                        <li class="<?php if($assess['score'] >= 10): ?>active<?php endif; ?>"></li>
                                    </ul>
                                    <bdo><?php echo $assess['score']; ?></bdo>
                                </div>
                            </div>
                            <div class="l">
                            <?php if($assess['head_img']): ?>
                            <img src="<?php echo __IMG($assess['head_img']); ?>" class="yjimg ">
                            <?php else: ?>
                            <img src="__TEMP__/<?php echo $style; ?>/public/images/temp/none-header.png" class="yjimg ">
                            <?php endif; ?>
                            </div>
                            <div class="plzl">
                                <div class="txname"><?php echo $assess['member_name']; ?></div>
                                <div class="date"><?php echo date("Y-m-d H:i:s",$assess['addtime']); ?></div>
                                <div><?php echo $assess['content']; ?>
                                </div>
                            </div>
                        </div>
                    </li>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                    
                    <li class="wsj" style="display: none"><img src="__TEMP__/<?php echo $style; ?>/public/images/wtp.png"><br>暂无数据</li>
                </ul>
            </div>
            <div class="cyplbar clearfix">
                <div class="l cyplbar1">
                    <?php if($uid): ?>
                    <a href="<?php echo __URL('COURSE_MAIN/courses/assess&id='.$course_info['goods_id']); ?>">
                        <i class="icon icon-comment"></i>参与评论
                    </a>
                    <?php else: ?>
                    <a href="javascript:;" class='logins'>
                        <i class="icon icon-comment"></i>参与评论
                    </a>
                    <?php endif; ?>
                    
                </div>
                <a href="<?php echo __URL('COURSE_MAIN/courses/assessList&id='.$course_info['goods_id']); ?>" class="chakan">查看更多评论</a>
            </div>
        </div>

    </div>

</div>
<div class="rush-buy ">
    <div class="cousetop">
        <div class="wzbt">相关课程</div>
    </div>
    <div class="mui-slider cg">
        <div class="mui-scroll-wrapper mui-slider-indicator mui-segmented-control mui-segmented-control-inverted">
            <div class="mui-scroll">
                <?php if(is_array($submit_list['data']) || $submit_list['data'] instanceof \think\Collection || $submit_list['data'] instanceof \think\Paginator): $k = 0; $__LIST__ = $submit_list['data'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$submit): $mod = ($k % 2 );++$k;?>
                <a href="<?php echo __URL('COURSE_MAIN/courses/coursedetail&id='.$submit['goods_id']); ?>" class="mui-control-item <?php if($k == 1): ?>mui-active<?php endif; ?>"">
                    <?php if($submit['picture_info']): ?>
                    <img src="<?php echo __IMG($submit['picture_info']['pic_cover']); ?>" class="photo-img">
                    <?php else: ?>
                    <img src="__TEMP__/<?php echo $style; ?>/public/images/temp/noImg.png" class="photo-img">
                    <?php endif; ?>
                    <div class="juli">
                        <div class="ssbt">
                            <div class="l"><span class="fashion-tab"><?php echo $submit['goods_group_name']['0']; ?></span></div>
                            <div class="r"><i class="icon icon-star"></i><span class="juse"><?php echo $submit['score']; ?></span></div>
                        </div>
                        <div class="course-bt"><?php echo $submit['goods_name']; ?></div>
                        <div class="zhineng"><?php echo $submit['introduction']; ?></div>
                        <div class="clearfix rel">
                            <div class="listen"><?php echo $submit['sales']; ?>人收听</div>
                            <div class="price">￥<?php echo $submit['price']; ?></div>
                        </div>
                    </div>
                </a>
                <?php endforeach; endif; else: echo "" ;endif; ?>

            </div>
        </div>
    </div>
</div>
<div class="foot-gap"></div>
<div class="foot gmft ">
    <ul>
        <li>
            <a href="<?php echo __URL('COURSE_MAIN/Index/Index'); ?>" class="active">
                <span class="icon icon-ft1"></span>
                <div class="mui-media-body">首页</div>
            </a>
        </li>
        <li>
            <a href="javascript:;">
                <span class="icon icon-ft4"></span>
                <div class="mui-media-body">客服</div>
            </a>
        </li>
        <li class="ljgm">
            <a href="kc_buy.html">
                <div class="mui-media-body">立即购买</div>
            </a>
        </li>

    </ul>
</div>

<script src="__TEMP__/<?php echo $style; ?>/public/mui/js/mui.js"></script>

<script type="text/javascript">
    var shuzu = ['6', '7', '8', "9", '10'];
    $(function () {
        var liHightCount = 0;
        $("#rank ul li").mouseover(function () {
            $("#rank ul li").addClass("active");//给所有的li都高亮
            $(this).nextAll("#rank li").removeClass("active");  //当前li-->后的li高亮样式类名remove
            liHightCount = $("#rank ul").find("li.active").length; //获取高亮的li的个数
            $("#rank bdo:eq(0)").show().html(shuzu[liHightCount - 1]);
        }).click(function () {
            $("#rank bdo:eq(0)").show().html(shuzu[liHightCount - 1]);

        });
    });
    mui('body').on('tap', '.logins', function () {
        layer.msg('你还未登录,请先登录!');
        setTimeout(function(){window.location.href="<?php echo __URL('COURSE_MAIN/login'); ?>";},1000);
    })
</script>
<script type="text/javascript">
    mui('body').on('tap', '.follow', function () {
        var ai=$(this).find("i");
        var cover_id="<?php echo $course_info['goods_id']; ?>";
        var cover_name="<?php echo $course_info['goods_name']; ?>";
        var state=$(this).attr('data-state');
        var url="<?php echo __URL('COURSE_MAIN/Courses/follow'); ?>";
        $.post(url,{cover_id:cover_id,cover_name:cover_name,state:state},function(reslut){
            if(reslut==1){
                layer.msg('收藏成功');
                ai.addClass("active");
            }else if(reslut==2){
                layer.msg('收藏失败');
            }else if(reslut==3){
                layer.msg('取消收藏成功');
                ai.removeClass("active");
            }else if(reslut==4){
                layer.msg('取消收藏失败');
            }else if(reslut==5){
                layer.msg('你还未登录,请先登录!');
                
                setTimeout(function(){window.location.href="<?php echo __URL('COURSE_MAIN/login'); ?>";},1000);
            }
        })
    })
    mui('body').on('tap', 'a', function () {
        document.location.href = this.href;
    })
   /* $(document).ready(function () {
        mui('.favor').on('tap', 'a', function () {
            if ($(this).parent().find(".sc").length > 0) {
                $(this).parent().find('.icon').removeClass('sc');
                $(this).parent().find('.icon').addClass('active');
            } else {
                $(this).parent().find('.icon').addClass('sc');
                $(this).parent().find('.icon').removeClass('active');
            }
        });
    });*/

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
                            $('#list').html($('#list_c').html());
                            mui('#refreshContainer').pullRefresh().endPulldownToRefresh();
                            mui('#refreshContainer').pullRefresh().endPullupToRefresh(false);
                            count++;
                        }, 1000);
                    }
                },
                up: {
                    height: 50,//可选.默认50.触发上拉加载拖动距离
                    callback: function () {
                        setTimeout(function () {
                            $('#list').append($('#list_c').html());
                            count++;
                            mui('#refreshContainer').pullRefresh().endPullupToRefresh(count > 3);
                        }, 1000);

                    }
                }
            }
        });
    })
</script>
</body>
</html>