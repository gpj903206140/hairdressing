// JavaScript Document



/*返回顶部*/
function pageScroll(){
    //把内容滚动指定的像素数（第一个参数是向右滚动的像素数，第二个参数是向下滚动的像素数）
    window.scrollBy(0,-80);
    //延时递归调用，模拟滚动向上效果速度
    scrolldelay = setTimeout('pageScroll()',10);
//获取scrollTop值，声明了DTD的标准网页取document.documentElement.scrollTop，否则取document.body.scrollTop；因为二者只有一个会生效，另一个就恒为0，所以取和值可以得到网页的真正的scrollTop值
    var sTop=document.documentElement.scrollTop+document.body.scrollTop;
    //判断当页面到达顶部，取消延时代码（否则页面滚动到顶部会无法再向下正常浏览页面）
    if(sTop==0) clearTimeout(scrolldelay);
}

//首页商务通效果
if(document.getElementById('swt-right-index')){
	$("#swt-right-index ul li").hover(function(){
		$(this).children("a").addClass("swt-hover");
		$(this).stop().animate({right:"84px"},200);
	
	},function(){
		$(this).animate({right:"0px"},300,function(){
			$(this).stop().children("a").removeClass("swt-hover");
		});
	});
}


//商务通左侧












