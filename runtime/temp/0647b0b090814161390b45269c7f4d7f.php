<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:45:"template/course\default_new\Member\index.html";i:1551063707;s:39:"template/course\default_new\header.html";i:1545876327;s:39:"template/course\default_new\footer.html";i:1546484966;}*/ ?>
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

<div class="mybg">
    <div class="txinform">
        <div class="l">
        <?php if($member_info['user_info']['user_headimg'] == ''): ?>
            <img src="<?php echo __IMG($default_headimg); ?>" class="yjimg "/>
        <?php else: ?>
            <img src="<?php echo __IMG($member_info['user_info']['user_headimg']); ?>" class="yjimg "/>
        <?php endif; ?>
        </div>
        <div class="txname"><?php echo $member_info["user_info"]['nick_name']; ?></div>
    </div>
</div>
<div class="mui-content  ">
    <ul class="mui-table-view zxun gap my ">
        <li class="mui-table-view-cell ">
             <a   href="<?php echo __URL('COURSE_MAIN/Member/means'); ?>" class="mui-navigate-right">
                 <i class="icon icon-my icon-my1"></i>
                个人信息
             </a>
        </li>
        <li class="mui-table-view-cell ">
            <a  href="javascript:;" class="mui-navigate-right" id="shows">
                <div class="l">
                <i class="icon icon-my icon-my2"></i>
                绑定手机
                </div>
                <?php if($member_info['user_info']['user_tel_bind'] == 0): ?>
                <div class="r jyjt">请绑定手机</div>
                <?php else: ?>
                <div class="r jyjt"><?php echo $member_info["user_info"]['user_tel']; ?></div>
                <?php endif; ?>
            </a>
        </li>
    </ul>
    <ul class="mui-table-view zxun my ">
        <!-- <li class="mui-table-view-cell ">
            <a  href="<?php echo __URL('COURSE_MAIN/Member/wirelower_order'); ?>" class="mui-navigate-right">
                <i class="icon icon-my icon-my3"></i>
                线下课订单
            </a>
        </li> -->
        <li class="mui-table-view-cell ">
            <a   href="<?php echo __URL('COURSE_MAIN/Member/my_collect'); ?>" class="mui-navigate-right">
                <i class="icon icon-my icon-my4"></i>
                我的收藏
            </a>
        </li>
        <li class="mui-table-view-cell ">
            <a  href="<?php echo __URL('COURSE_MAIN/Member/my_attention'); ?>" class="mui-navigate-right">
                <i class="icon icon-my icon-my5"></i>
                我的关注
            </a>
        </li>
        <li class="mui-table-view-cell ">
            <a  href="<?php echo __URL('COURSE_MAIN/Member/my_wallet'); ?>" class="mui-navigate-right">
                <i class="icon icon-my icon-my6"></i>
                我的钱包
            </a>
        </li>
        <li class="mui-table-view-cell ">
            <a  href="javascript:;" class="mui-navigate-right logout">
                <i class="icon icon-my icon-my7"></i>
                退出登录
            </a>
        </li>
    </ul>
    <div class="xialk "  data_s="sendto">
        <div class="photo ">
            <a href="javascript:;" data_c="c1">
                <img src="__TEMP__/<?php echo $style; ?>/public/images/qiandao.jpg">
            </a>
        </div>
        <div class="tmbg"></div>
    </div>
</div>
<div class="xialk bgw " style="display: lock" >
    <div class="photo ">
        <div class="r"><a href="javascript:;"><span class="mui-icon mui-icon-closeempty"></span></a></div>
        <div class="clearfix"></div>
        <div class="nr">
            <div class="word">绑定手机号，听课更安心</div>
            <div class="word1">还可以获得专人服务和粉丝福利</div>
            <form id='login-form' class="mui-input-group login ">
                <ul >
                    <li>
                        <input type="text" class="mui-input yjbk" value="<?php echo $member_info['user_info']['user_tel']; ?>" placeholder="请输入手机号码" id="mobile">
                        <input type="hidden" id="oldMobile" value="<?php echo $member_info['user_info']['user_tel']; ?>">
                    </li>
                    <?php if($login_verify_code['pc'] == 1): ?>
                    <li >
                        <input type="text" class="mui-input yjbk" placeholder="请输入图形验证码" id="input_mobile_code">
                        <div class="dtmdw">
                            <img src="<?php echo __URL('SHOP_MAIN/captcha'); ?>" class="tx-yzm" alt="captcha" onclick="this.src='<?php echo __URL('SHOP_MAIN/captcha?tag=1'); ?>'+'&send='+Math.random()" >
                        </div>
                    </li>
                    <?php endif; if($notice['noticeMobile'] == 1): ?>
                    <li >
                        <input type="password" class=" mui-input yjbk" id="mobile_code" placeholder="请输入验证码">
                        <div class="dtmdw">
                            <a href="javascript:;" class="dtm sendOutCode" id="send_mobile" value="<?php echo lang('get_dynamic_code'); ?>">获取验证码</a>
                           <!-- <span class="time">10s</span>-->
                        </div>
                    </li>
                    <?php endif; ?>
                </ul>
                <div class="dl">
                    <a href="javascript:;" class="tjbtn " id="btnsave">确认</a>
                </div>
            </form>

        </div>
    </div>
    <div class="tmbg"></div>
</div>
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
<script src="__TEMP__/<?php echo $style; ?>/public/mui/js/mui.picker.js"></script>
<script src="__TEMP__/<?php echo $style; ?>/public/mui/js/mui.poppicker.js"></script>
<script>
    mui('body').on('tap', '.logout', function () {
        logout();
    });
    function logout(){
        $.ajax({
            url: "<?php echo __URL('APP_MAIN/member/logout'); ?>",
            type: "post",
            success: function (res) {
                if (res['code'] > 0) {
                    window.location.href=__URL("COURSE_MAIN/login/index");
                } else if(res["message"]!=null){
                    showBox(res["message"],"error");
                }
            }
        })
    }
    mui('body').on('tap', '#shows', function () {
        $(".bgw").show();
    });
    mui('body').on('tap', '.mui-icon-closeempty', function () {
        $(".bgw").hide();
    });
    mui('body').on('tap', '#btnsave', function () {
        btnsave()
    });
    function btnsave() {
    var url = "APP_MAIN";
    var value = "";
    
    var oldMobile = $.trim($("#oldMobile").val());
    var value = $.trim($("#mobile").val());
    var vertification = $("#input_mobile_code").val();
    var code = $("#mobile_code").val();
    var result = '';
    var res ='';
    var mobile_not_exits = 0;
    if (value == oldMobile) {
        layer.msg("<?php echo lang('consistent_with_the_original_mobile_phone_number_without_modification'); ?>");
        return false;
    }
    if (value == "") {
        layer.msg("<?php echo lang('mobile_phones_must_not_be_empty'); ?>");
        return false;
    }else{

        if(value.search(/^1(3|4|5|7|8)\d{9}$/) == -1){
            $("#mobile").trigger("focus");
            layer.msg("<?php echo lang('phone_is_not_right_format'); ?>");
            return false;
        }
        <?php if($notice['noticeMobile'] != 1): ?>
            $.ajax({
                type: "post",
                url: "<?php echo __URL('APP_MAIN/login/mobile'); ?>",
                data: {"mobile":value},
                async: false,
                success: function(data){
                    if(data) mobile_not_exits = 1;
                }
            });
        <?php endif; ?>
    }
    <?php if($login_verify_code['pc'] == 1): ?>
        if (vertification == "") {
            layer.msg("<?php echo lang('please_enter_verification_code'); ?>");
            return false;
        }
        <?php if($notice['noticeMobile'] != 1): ?>
            $.ajax({
                url: "<?php echo __URL('APP_MAIN/member/check_code'); ?>",
                data: { "vertification": vertification},
                type: "post",
                async : false,
                success : function(data){
                    if(data['code'] < 0){
                        layer.msg(data['message']);
                        res = true;
                    }
                    return res;
                }
            });
            if(res){
                return false;
            }
        <?php endif; endif; ?>
    //判断手机号是否已被绑定
    if(mobile_not_exits == 1){
        layer.msg("<?php echo lang('the_phone_number_already_exists'); ?>");
        return false;
    }
    <?php if($notice['noticeMobile'] == 1): ?>
        if(code.length == 0){
            layer.msg("<?php echo lang('member_enter_mobile_verification_code'); ?>");
            return false;
        }else{
            $.ajax({
                url: "<?php echo __URL('APP_MAIN/member/check_dynamic_code'); ?>",
                data: { "vertification": code },
                type: "post",
                async : false,
                success : function(data){
                    if(data['code'] < 0){
                        layer.msg(data['message']);
                        result = true;
                    }
                    return result;
                }
            })
            if(result){
                return false;
            }
        }
        <?php endif; ?>
        $.ajax({
            url: "<?php echo __URL('APP_MAIN/member/modifymobile'); ?>",
            data: { "mobilephone": value },
            type: "post",
            success: function (res) {
                if (res["code"] > 0) {
                    $("#mobilephone").text(value);
                    backPage();
                } else {
                    layer.msg(res["message"]);
                }
            }
        });
}
//发送短信验证码
mui('body').on('tap', '#send_mobile', function () {
    var mobile = $("#mobile").val();
    var mobile_code = $("#input_mobile_code").val();
    //验证手机格式是否正确
    if(mobile.search(/^1(3|4|5|7|8)\d{9}$/) == -1){
        $("#mobile").trigger("focus");
        layer.msg("<?php echo lang('phone_is_not_right_format'); ?>");
        return false;
    }
    time();
    //验证手机号是否已经注册
    $.ajax({
        type: "post",
        url: "<?php echo __URL('APP_MAIN/login/mobile'); ?>",
        data: {"mobile":mobile},
        async: false,
        success: function(data){
            if(data){
                layer.msg("<?php echo lang('the_phone_number_already_exists'); ?>");
                return false;
            }else{
                //判断输入的验证码是否正确 
                $.ajax({
                    type: "post",
                    url: "<?php echo __URL('APP_MAIN/member/sendbindcode'); ?>",
                    data: {"mobile":mobile,"vertification":mobile_code,"type":"mobile"},
                    success: function(data){
                        layer.msg(data["message"]);
                        $(".verifyimg").attr("src","<?php echo __URL('SHOP_MAIN/captcha'); ?>");
                        return false;
                    }
                });
            }
        }
    });
});

var wait=120;
function time() {
    if (wait == 0) {
        $(".sendOutCode").removeAttr("disabled");
        $(".sendOutCode").html("<?php echo lang('get_validation_code'); ?>");
        wait = 120; 
    } else { 
        $(".sendOutCode").attr("disabled", 'disabled');
        $(".sendOutCode").html(wait+"s<?php echo lang('post_resend'); ?>");
        wait--; 
        setTimeout(function() {
            time();
        },1000);
    }
}
</script>

</body>
</html>