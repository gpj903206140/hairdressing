<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:51:"template/course\default_new\Courses\video_view.html";i:1546931095;s:39:"template/course\default_new\header.html";i:1545876327;}*/ ?>
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
        .xialk{position:fixed; top:0; right:0;width: 100vw;height: 100vh; z-index: 1000; display: none }
        .tmbg{  width: 100vw;height: 100vh; background: #000; opacity: .5;position: absolute}
        .xialk .photo{z-index: 100;position: absolute; text-align: center;top:30vh}
        .xialk .photo .nr{width:100%; margin:1rem auto 2rem }
        .xialk .photo .nr .mui-radio input[type="radio"]{right: 66px;top:8px;}
        .xiaozs li{
             position: relative;
        }
        .watch{
            width:100%;
            height:100%;
            position: absolute;
            left:0;
            top:0;
            /*background:rgba(255,255,255,0.5);*/
        }
        .show_share,.login_share,.lastopacity{
            opacity: 0.2;
        }
        .nowatch{
            display:none;
        }
        .kcxqfix .icon-left {
            background-image: url(__TEMP__/<?php echo $style; ?>/public/images/return2.png);
        }
        .txname span{
            float:right;
            font-size:8px;
        }
    </style>
<div class="kcxqfix">
    <ul>
        <li>
            <a href="<?php echo __URL('COURSE_MAIN/courses/coursedetail&id='.$goods_id); ?>" ><i class="icon icon-left"></i><br>课程 </a>
        </li>
        <li id="back-to-top">
            <a href="javascript:;" ><i class="icon icon-up"></i><br>顶部 </a>
        </li>
        <li id="back-to-bottom">
            <a href="javascript:;"><i class="icon icon-down"></i><br>底部 </a>
        </li>
        <li>
            <a href="javascript:;" class="wechat"><i class="icon icon-wechat"></i><br>客服 </a>
        </li>
    </ul>
</div>
<?php if($courseorder_num == 0): if($course_info['price'] > 0 && $course_info['is_showprice'] == 1): ?><div class="kcxqgmfix"><a href="<?php echo __URL('COURSE_MAIN/Order/course_buy&goods_id='.$goods_id); ?>"><img src="__TEMP__/<?php echo $style; ?>/public/images/goumai.png"></a> </div><?php endif; endif; ?>
<!-- <a href="kc_invit.html" class="tjbtn djyq">点击邀请</a>

<div class="tc">邀请好友一起来听课</div> -->
<div class="fufeiye">
    <div class="bikan">课前必看！</div>
    <div class="bkvideo">

        <!-- <iframe frameborder="0" src="<?php echo $catalogue_info['video_url']; ?>" allowFullScreen="true"
                class="video"></iframe> -->
         <video controls="" autoplay:true name="media" poster=""><source src="<?php echo $catalogue_info['video_url']; ?>" type="video/mp4" ></video>

    </div>
    <div class="xiaozs">
        <ul>
            <!-- <li>
                <div class="txinform">
                    <div class="l"><img src="__TEMP__/<?php echo $style; ?>/public/images/zs.jpg" class="yjimg zs "></div>
                    <div class="txname zs">小助手</div>
                </div>
                <div class="bkvideo width1">
                    <div class="mui-content-padded zoom" id="imgContainer">
                    <img src="__TEMP__/<?php echo $style; ?>/public/images/temp/wei.jpg" class="imgb " data-preview-src="" data-preview-group="1" onload="onReady(this)">
                    </div>
                </div>
            </li> -->
            <li>
                <div class="txinform">
                    <div class="l"><img src="__TEMP__/<?php echo $style; ?>/public/images/zs.jpg" class="yjimg zs "></div>
                    <div class="txname zs">小助手</div>
                </div>
                <div class="bkvideo ">
                    <?php echo $catalogue_info['description']; ?>
                </div>
            </li>
        </ul>
    </div>
    <div class="cichusf"><span><?php if($courseorder_num == 0): if($course_info['price'] > 0 &&$course_info['is_showprice'] == 1): ?>此处需购买可观看<?php else: ?>分享之后可观看<?php endif; else: ?>敬请观看<?php endif; ?></span></div>
    <div class="xiaozs gray" style="opacity: 1;">
        <a href="javascript:;">
        <ul>
            <?php if(is_array($res) || $res instanceof \think\Collection || $res instanceof \think\Paginator): $i = 0; $__LIST__ = $res;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$video): $mod = ($i % 2 );++$i;?>
            <li class="<?php if($courseorder_num == 0): if($video['share_num'] == 0): if($uid): ?>show_share<?php else: ?>login_share<?php endif; endif; endif; ?>" data-id="<?php echo $video['video_id']; ?>" data-see="<?php echo $video['try_see']; ?>">
                
                <div class="txinform">
                    <div class="l">
                    <?php if($video['teacher_pic']): ?>
                    <img src="<?php echo __IMG($video['teacher_pic']); ?>" class="yjimg zs ">
                    <?php else: ?>
                    <img src="<?php echo __IMG($default_headimg); ?>" class="yjimg zs ">
                    <?php endif; ?>
                    </div>
                    <div class="txname zs"><?php if($video['teacher_id']): ?><?php echo $video['teacher_name']; else: endif; if($courseorder_num == 0): if($video['share_num'] == 0): ?><span>可试看:<?php echo $video['try_see']; ?>分钟</span><?php endif; endif; ?></div>
                </div>
              
                <div class="bkvideo ">
                    <div class="bofang tup"><?php if($courseorder_num == 0): if($video['share_num'] == 0): ?><i class="icon icon-bf"></i><?php endif; endif; ?></div>
                    <!-- <img src="__TEMP__/<?php echo $style; ?>/public/images/temp/xqt2.jpg" class="imgb"> -->
                    <div class="iframe"><!-- <iframe frameborder="0" src="<?php echo __IMG($video['video_url']); ?>" allowFullScreen="false"
                            class="video"></iframe> --><video controls="" autoplay:true name="media" class="record_play" data-id="<?php echo $video['video_id']; ?>" poster=""><source src="<?php echo __IMG($video['video_url']); ?>" type="video/mp4" ></video></div>
                </div>
                <div class="watch <?php if($video['share_num'] > 0 || $courseorder_num > 0): ?>nowatch<?php endif; ?>"></div>
            </li>
            <?php endforeach; endif; else: echo "" ;endif; ?>
        </ul>
        </a>
        <?php if($lastInfo == ''): ?>
        <a href="javascript:;" class="tjbtn  yj <?php if($last == 0 && $courseorder_num == 0): ?>lastopacity<?php else: ?>yeslastopacity<?php endif; ?>">下一节：没有了</a>
        <?php else: ?>
        <a href="<?php echo __URL('COURSE_MAIN/courses/video_view&goods_id='.$goods_id.'&id='.$lastInfo['catalogue_id']); ?>" class="tjbtn  yj lastLink <?php if($last == 0 && $courseorder_num == 0): ?>lastopacity<?php else: ?>yeslastopacity<?php endif; ?>" data-link="<?php if($last == 0 && $courseorder_num == 0): ?>0<?php else: ?>1<?php endif; ?>">下一节：<?php echo $lastInfo['catalogue_name']; ?></a>
        <?php endif; ?>
    </div>

</div>
<style>
.tips{
    width:100%;
    height:120px;
    line-height:120px;
    font-size:14px;
    color:#4c4c4c;
    text-align:center;

}
.purchase{
    width:50%;
    float:left;
    height:50px;
    line-height:50px;
    font-size:14px;
    color:#5a5a5a;
    text-align:center;
    background: #f1f1f1;
}
.yespurchase{
    color:#fff;
    background: #fa2a28;
}
.share_img {
    position: fixed;
    top: 0;
    right: 0;
    z-index: 99999;
    display: none;
    background: #000;
    opacity: 0.8;
    filter: alpha(opacity=80);
    width: 100%;
    height: 100%;
    text-align: right;
}
.share_img p {
    color: #fff;
    line-height: 30px;
    font-size: 16px;
}
.wxphoto{
    padding:60px 0 40px 0;
    position:relative;
}
.wxphoto p{
    margin-top:20px;
    color:#000;
    font-size:16px;
}
.wxphoto span{
    font-size:22px;
    color:#333;
    position: absolute;
    right:15px;
    top:15px;
}
.wxphoto span img{
    width:15px;
    height:15px;
}
.try{
    position:relative;
    color:#f00;
}
.novideo{
    width:100%;
    height:85.6%;
    position:absolute;
    left:0;
    top:0;
    display:inline-block;
    background:rgba(0,0,0,0.4);
    /*background:rgba(255,255,255,0.4);*/
}
.novideo2{
    visibility:hidden;
}
audio, canvas, progress, video{
    width:100%;
}
</style>
<?php if($courseorder_num == 0): if($course_info['price'] > 0 && $course_info['is_showprice'] == 1): ?>
<div class="xialk bgw showdiv" style="display: lock" >
    <div class="photo ">
        <div class="nr">
            <p class="tips"><span class='try' data-state="1"></span>购买之后,精彩内容才能呈现哦!</p>
            <a href="javascript:;" class="purchase nopurchase">暂不购买</a>
            <a href="<?php echo __URL('COURSE_MAIN/Order/course_buy&goods_id='.$goods_id); ?>" class="purchase yespurchase">立即购买</a>
            <input type="hidden" id="video_id">
        </div>
    </div>
    <div class="tmbg"></div>
</div>
<?php else: ?>
<div class="xialk bgw showdiv" style="display: lock" >
    <div class="photo ">
        <div class="nr">
            <p class="tips"><span class='try' data-state="2"></span>分享之后,精彩内容才能呈现哦!</p>
            <a href="javascript:;" class="purchase nopurchase">暂不分享</a>
            <a href="javascript:;" class="purchase yespurchase data-icon-share" data-type="2">立即分享</a>
            <input type="hidden" id="video_id">
        </div>
    </div>
    <div class="tmbg"></div>
</div>
<?php endif; endif; ?>
<div id="share_img" class="share_img" onclick="document.getElementById('share_img').style.display='none';" style="display: lock;">
    <p><img class="arrowss" src="__TEMP__/<?php echo $style; ?>/public/images/temp/goods_share.png"></p>
    <p style="margin-top:30px; margin-right:50px;">点击右上角</p>
    <p style="margin-right:50px;">将此课程分享给好友</p>
</div>
<div class="xialk bgw showwx " style="display: lock;" >
    <div class="photo wxphoto">
        <div class="nr">
            <img src="__TEMP__/<?php echo $style; ?>/public/images/temp/wxkf.png" width="40%">
            <p>长按识别二唯码咨询客服</p>
        </div>
        <span class="clickHide"><img class="arrowss" src="__TEMP__/<?php echo $style; ?>/public/images/temp/close.png"></span>
    </div>
    <div class="tmbg"></div>
</div>
<div class="xialk bgw trysee" style="display: lock" >
    <div class="photo " style="width:94%;left:3%;top:25%;">
        <div class="nr" style="margin:0;">
            <p class=""><video id="video1" autoplay="autoplay" controls style="width:100%;"></video><input type="hidden" id="showTime"/><span class="novideo novideo2"></span></p>
            <a href="javascript:;" class="purchase nopurchase">暂不分享</a>
            <a href="javascript:;" class="purchase yespurchase data-icon-share">立即分享</a>
            <input type="hidden" id="video_id">
        </div>
    </div>
    <div class="tmbg"></div>
</div>
<script src="__TEMP__/<?php echo $style; ?>/public/mui/js/mui.js"></script>
<script src="__TEMP__/<?php echo $style; ?>/public/mui/js/mui.zoom.js" type="text/javascript" charset="utf-8"></script>
<script src="__TEMP__/<?php echo $style; ?>/public/mui/js/mui.previewimage.js"></script>
<script type="text/javascript">
/*var md=document.getElementsByTagName("video")[0];
md.addEventListener("ended",function(){
     alert("播放结束");
})
md.addEventListener("pause",function(){
     alert("播放暂停");
})
md.addEventListener("play",function(){
     alert("播放开始");
})*/
const setMedia = function(video, scale = 0.8) {
// 设置poster属性：（非本地视频资源会有跨域截图问题）
video.addEventListener('loadeddata', function(e) {
    // 拿到图片
    let canvas = document.createElement('canvas');
    canvas.width = video.videoWidth * scale;
    canvas.height = video.videoHeight * scale;
    canvas.getContext('2d').drawImage(video, 0, 0, canvas.width, canvas.height);
    let src = canvas.toDataURL('image/png');
    alert(src);
    // 显示在dom，测试用
    (function(flag = true) {
        if (!flag) {return;}
        let img = document.createElement('img');
        img.src = src;
        document.body.appendChild(img);
    })(0);
    // 设置属性
    video.setAttribute('poster', src);
});

//播放结束
$(".record_play").bind('ended', function () {
    var video_id=$(this).attr('data-id');
    var currentTime=this.currentTime;
    var url="<?php echo __URL('COURSE_MAIN/courses/addPlay'); ?>";
    $.post(url,{video_id:video_id,time:currentTime,state:1},function(result){
        //alert(result);
    })
})
/*$(".record_play").bind('pause', function () {
    var currentTime=this.currentTime //已播放时长
     alert(currentTime+"播放暂停");
})*/
var start=0;
//播放开始
$(".record_play").bind('play', function () {
    var video_id=$(this).attr('data-id');
    $(".record_play").each(function(e){
        var video_id2=$(this).attr('data-id');
        if ( this.paused ) {
           //alert(video_id+'=='+video_id2+'sss'+e+'停止的');
            //video.play();
        } else {
            //alert(video_id+'=='+video_id2+'sss'+e+'播放的');
            if(video_id!=video_id2){
                this.pause();
                var currentTime=this.currentTime;
                var url="<?php echo __URL('COURSE_MAIN/courses/addPlay'); ?>";
                $.post(url,{video_id:video_id2,time:currentTime,state:1},function(result){
                    
                })
            }
            //video.pause();
        }
    })
    var duration=this.duration; //总时长
    var currentTime=this.currentTime //已播放时长
    //if(start==0){
        
        var currentTime=this.currentTime;
        var goods_id="<?php echo $goods_id; ?>";
        var url="<?php echo __URL('COURSE_MAIN/courses/addPlay'); ?>";
        $.post(url,{video_id:video_id,duration:duration,time:currentTime,state:0,goods_id:goods_id},function(result){
            //alert(result);
        })
    //}
    //start++;
})
window.onbeforeunload = function(event) {
    $(".record_play").each(function(e){
        var video_id2=$(this).attr('data-id');
        if ( this.paused ) {
           //alert(video_id+'=='+video_id2+'sss'+e+'停止的');
            //video.play();
        } else {
            //alert(video_id+'=='+video_id2+'sss'+e+'播放的');
            if(video_id!=video_id2){
                this.pause();
                var currentTime=this.currentTime;
                var url="<?php echo __URL('COURSE_MAIN/courses/addPlay'); ?>";
                $.post(url,{video_id:video_id2,time:currentTime,state:1},function(result){
                    
                })
            }
            //video.pause();
        }
    })
}
</script>
<script>
    //试看
    mui('body').on('tap', '.try', function () {
       var video_id=$("#video_id").val();
        var url=$(".xiaozs li[data-id='"+video_id+"']").find(".iframe video source").attr('src');
        var endTime=$(".xiaozs li[data-id='"+video_id+"']").attr('data-see');
        var state=$(this).attr('data-state');
        $("#video1").attr(url);
        myVid.addEventListener("timeupdate",timeupdate);
        playMedia(0,endTime,url);
        if(state==1){
            $(".trysee .nopurchase").html('暂不购买');
            $(".trysee .yespurchase").html('立即购买');
            $(".trysee .yespurchase").attr('data-type',1);
            $(".trysee .yespurchase").attr('href',"<?php echo __URL('COURSE_MAIN/Order/course_buy&goods_id='.$goods_id); ?>");
        }else if(state==2){
            $(".trysee .nopurchase").html('暂不分享');
            $(".trysee .yespurchase").html('立即分享');
            $(".trysee .yespurchase").attr('data-type',2);
            $(".trysee .yespurchase").attr('href',"javascript:;");
        }
        //playMedia(5,10,url);
        $(".trysee").show();
        $(".showdiv").hide();
    })
    var myVid=document.getElementById("video1");
    myVid.addEventListener("timeupdate",timeupdate);
 
    var _endTime;
 
     //视频播放
    function playMedia(startTime,endTime,url){
        //设置结束时间
        _endTime = endTime*60;
       /*var file = document.getElementById("file").files[0];
       if(!file){
        alert("请指定视频路径");
        return false;
       }
       var url = (window.URL) ? window.URL.createObjectURL(file) : window.webkitURL.createObjectURL(file);*/
       myVid.src = url;
       myVid.controls = true;
       setTimeout("setCurrentTime('"+startTime+"')",200);
    }
    //设置视频开始播放事件
    function setCurrentTime(startTime){
        myVid.currentTime=startTime;
        myVid.play();
    }
    function timeupdate(){
        //因为当前的格式是带毫秒的float类型的如：12.231233，所以把他转成String了便于后面分割取秒
        var time = myVid.currentTime+"";
        document.getElementById("showTime").value=time;
        var ts = time.substring(0,time.indexOf("."));
        if(ts==_endTime){
            layer.msg('试看已结束');
            var h=$("#video1").height();
            $(".novideo").css({'height':h+4+'px'})
            $(".novideo").removeClass("novideo2");
            myVid.pause();
        }
    }
</script>
<script type="text/javascript">
    //回到底部
    mui('body').on('tap', '#back-to-bottom', function () {
       $("html,body").animate({
            scrollTop: document.body.clientHeight
        },1500);

        return false;
        
    })
   //回到顶部
    mui('body').on('tap', '#back-to-top', function () {
       // html,body 都写是为了兼容浏览器
        $('html,body').animate({
            scrollTop: 0
        }, 700);

        return false;
        
    })
   //显示客服二唯码
    mui('body').on('tap', '.wechat', function () {
       $(".showwx").show();
        
    })
     mui('body').on('tap', '.showwx span', function () {
       $(".showwx").hide();
        
    })
    //点击查看下一节
    /*mui('body').on('tap', '.lastLink', function () {
        var url=this.href;
        var link=$(this).attr('data-link');
        if(link==1){
            window.location.href=url;
        }
        return false;
        
    })*/
    //点击视频还未登录提示并跳到登录页面
    mui('body').on('tap', '.login_share', function () {
        layer.msg('你还未登录,请先登录!');
        setTimeout(function(){window.location.href="<?php echo __URL('COURSE_MAIN/login'); ?>";},1000);
    })
    //立即分享
    mui('body').on('tap', '.data-icon-share', function () {
        var state = $(this).attr('data-type');
        if(state==2){
            $("#share_img").show();
            $(".showdiv").hide();
            
            var goods_id="<?php echo $goods_id; ?>";
            var catalogue_id="<?php echo $catalogue_id; ?>";
            var video_id=$("#video_id").val();
            var url="<?php echo __URL('COURSE_MAIN/courses/video_view'); ?>";
            var li=$(".xiaozs li[data-id='"+video_id+"']");
            myVid.removeEventListener("timeupdate",timeupdate);
            $.post(url,{goods_id:goods_id,catalogue_id:catalogue_id,video_id:video_id},function(reslut){
                 if(reslut){
                    li.removeClass("show_share");
                    li.find(".watch").addClass("nowatch");
                    li.find(".bofang.tup .icon-bf").hide();
                    $(".xialk").hide();
                    $(".novideo").addClass("novideo2");
                    $(".txinform .txname span").html("");
                    if($(".show_share").length==0){
                        $(".tjbtn").removeClass("lastopacity");
                        $(".tjbtn").addClass("yeslastopacity");
                        $(".tjbtn").attr('data-link',1);
                    }
                 }else{
   
                 }
            })
        }
        
    })
    //点击立即分享后提示
    mui('body').on('tap', '#share_img', function () {
        $("#share_img").hide();
    })
    //显示分享&购买提示框
    mui('body').on('tap', '.show_share', function () {
        var video_id = $(this).attr('data-id');
        var see = $(this).attr('data-see');
        $(".tips span.try").html("");
        if(see>0){
            $(".tips span.try").html("去试看, ");
        }
        $("#video_id").val(video_id);
        $(".showdiv").show();
    })
    //关闭立即购买提示框
    mui('body').on('tap', '.nopurchase', function () {
        $(".xialk").hide();
        //$(".strysee").hide();
        $(".novideo").addClass("novideo2");
        myVid.removeEventListener("timeupdate",timeupdate);
    })
    mui('body').on('tap', 'a', function () {
         var url=this.href;
        var link=$(this).attr('data-link');
        if(link==1){
            window.location.href=url;
        }else if(link==0){
            return false;
        }else if(link==undefined){
            document.location.href = this.href;
        }
        
        
    })
    mui.init();
    var imageRenderTemplate = '<p><img src="{0}" data-preview-src="" data-preview-group="1" onload="onReady(this)"/></p>';
    var imgContainer = document.getElementById("imgContainer");
    imgContainer.addEventListener("tap",pickPhotos);
    String.prototype.fillData = function(key, value) {
        return this.replace(new RegExp("\\{" + key + "\\}", "g"), value);
    }
    mui.previewImage();
    function onReady(item){
        var scaleX = 60 / item.width;
        var scaleY = 60 / item.height;
        var scale = Math.max(scaleX , scaleY );

        item.width = Math.ceil( item.width * scale);

    }
    function pickPhotos(item){
        var btns = [{title:"拍照"},{title:"从相册选择"}];
        plus.nativeUI.actionSheet({cancel:"取消",buttons:btns},
            function(e){
                var i=e.index;
                if(i>0){
                    photoAction(i-1);
                }
            }
        );
    }

    function photoAction(index){
        if( index == 0 ){
            getImage();
        }else{
            galleryImgs();
        }
    }

    //拍照
    function getImage() {
        var cmr = plus.camera.getCamera();
        cmr.captureImage( function (p) {
            plus.io.resolveLocalFileSystemURL( p, function ( entry ) {
                var localurl = entry.toLocalURL();
                addImage(localurl);
            });
        });
    }
    //相册选取
    function galleryImgs(){
        plus.gallery.pick( function(e){
            for(var i in e.files){
                addImage(e.files[i]);
            }
        }, function ( e ) {
        },{filter:"image",multiple:true});
    }

    function addImage(url){
        var render = imageRenderTemplate;
        render = render.fillData(0,url);
        imgContainer.innerHTML += render;
    }
</script>

</body>
</html>