<!--
	author：龚鑫
	  date：2018-08-06 09:16  
	 email：gx1008666@163.com
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />





<!doctype html>
<html>
 <head> 
  <meta charset="utf-8"> 
  <meta name="pathname" content="bytecom_tetris"> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, minimal-ui"> 
  <!--原来的css开始-->
  <!--font-awsome-css-->
<link rel="stylesheet" href="${contextPath}/css/h5/font-awesome.min.css">
<!--bootstrap-->
<link href="${contextPath}/css/h5/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<!--custom css-->
<link href="${contextPath}/css/h5/style.css" rel="stylesheet"
	type="text/css" />
	<!--新建css样式-->
<link href="${contextPath}/css/h5/style2.css" rel="stylesheet"
	type="text/css" />
	<link rel="shortcut icon" href="${contextPath}/img/o/favicon.ico" type="image/x-icon">
<!--component-css-->
<script src="${contextPath}/js/h5/jquery-2.1.4.min.js"></script>
<!--script-->
<script src="${contextPath}/js/h5/modernizr.custom.js"></script>
<script src="${contextPath}/js/h5/bigSlide.js"></script>
<script>
	$(document).ready(function() {
		$('.menu-link').bigSlide();
	});
</script>
<!-- web-fonts -->
<link href='http://fonts.googleapis.com/css?family=Abril+Fatface'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
  <!--原来的css结束-->
  <!--logo-->
  <!-- 网页添加logo -->
  <link rel="shortcut icon" href="${contextPath}/img/o/favicon.ico" type="image/x-icon">  
  <style type="text/css">@charset "utf-8";html{height:100%;color:#000;overflow-y:scroll;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;font-family:Arial,Helvetica,'Hiragino Sans GB','Microsoft YaHei',sans-serif;background-color:#FFF}html *{outline:0;-webkit-text-size-adjust:none;-webkit-tap-highlight-color:rgba(0,0,0,0);box-sizing:border-box;margin:0;padding:0}html input{font-family:Arial,Helvetica,'Hiragino Sans GB','Microsoft YaHei',sans-serif}table{border-collapse:collapse;border-spacing:0}fieldset,img{border:0}del{text-decoration:line-through}address,caption,cite,code,dfn,em,th,var{font-style:normal;font-weight:500}ol,ul{list-style:none}caption,th{text-align:left}a:hover{text-decoration:underline}ins,a{text-decoration:none}html,body{width:100%}body{min-height:100%;line-height:1.5}#content{width:100%;margin:0 auto}.piece{width:100%;background-color:transparent;position:relative;box-sizing:border-box}.piece.fbottom,.piece.ftop{position:fixed!important;width:100%!important;z-index:10!important}.create-left-content{width:1.867rem;height:auto;text-align:center;z-index:9999;position:fixed;bottom:0;left:0}.create-right-content{width:1.867rem;height:auto;text-align:center;z-index:9999;position:fixed;bottom:0;right:0}.piece.fbottom{top:auto!important;bottom:0!important}.piece.ftop{top:0!important;bottom:auto!important}#content{min-height:100%;position:relative;overflow:hidden}#MEIQIA-PANEL-HOLDER{right:0!important}html::-webkit-scrollbar{display:none}.hide{display:none!important}</style> 
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/swiper_302abfc.css">
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/ledfont_ccb326d.css">
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/daymode_1ae66db.css">
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/notice_7471b49.css"> 
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/bricks/bricks-common_9b66357.css"> 
  <!--<script id="globalvar">
        GLOBAL_VAR = JSON.parse('{"siteId":"1590548427500557","pageIds":[1590548427500557],"pageid_map":{"506793":1590548427500557},"shareTitle":"诚士教育积分入户咨询","name":"积分入户2","shareDesc":"你关心的，才是头条！","shareThumb":"","adId":"0"}');
        componentsConfig = {
            PanoramaList: []
        }
    </script> -->
  <script src="https://s3.pstatp.com/bytecom/resource/vue/lib/vendor_41f269e.js"></script>
 <!-- <script src="https://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>-->
  <script src="https://s3.pstatp.com/bytecom/resource/vue/lib/main_5fdef5d.js"></script>
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/brand_5a9c6d0.css">
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/iconfont_03f5f23.css">
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/brickicon_2e09b13.css"> 
  <!-- 替换为Vue模板语法 --> 
  <title>深圳入户资格测评系统</title> 
  <script>
            !function(){"use strict";!function(t,e){var r=t.seed=t.seed||[];if(r.start=+new Date,!r.initialize&&!r.invoked){r.invoked=!0,r.methods=["track","page","on","once"],r.factory=function(t){return function(){var e=Array.prototype.slice.call(arguments);return e.unshift(t),r.push(e),r}};for(var n=0;n<r.methods.length;n++){var a=r.methods[n];r[a]=r.factory(a)}r.load=function(){var t=e.createElement("script");t.type="text/javascript",t.async=!0,t.src="//s3.pstatp.com/bytecom/resource/tetris/insight/v0.1.4-beta/analytics.js";var r=e.getElementsByTagName("script")[0];r.parentNode.insertBefore(t,r)},r.SNIPPET_VERSION="1.1.8",r.load()}}(window,document)}();
            </script> 
  <style>
  	.clearfix::after{display:block;content:"";clear:both}
  /*按钮css*/
.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 14px 30px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 22px;
    margin:auto 0;
    width:80%;
    height:100%;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}

.button1 {
	border-radius: 8px;
    background-color: #4CAF50; 
    color: white; 
    border: 1px solid #E6E6FA;
}
.button2 {
	border-radius: 8px;
    background-color: #f44336; 
    color: white; 
    border: 1px solid #E6E6FA;
}
.button3 {
	border-radius: 8px;
    background-color: #008CBA; 
    color: white; 
    border: 1px solid #E6E6FA;
}

.button1:hover {
    background-color: #F1360A;
    color: white;
}

.button{      /* 统一设置所以样式 */
     font-family:"microsoft yahei";
     font-size:18px;
     text-align:center;
     margin:3px;
}
.button:link,a:visited{  /* 超链接正常状态、被访问过的样式 */
    color:#FFF7EB;
    padding:4px 10px 4px 10px;
    background-color:#4CAF50;
    text-decoration:none;
 
 	border-radius: 8px;
    border-top:1px solid #EEEEEE; /* 边框实现阴影效果 */
    border-left:1px solid #EEEEEE;
    border-bottom:1px solid #717171;
    border-right:1px solid #717171;
}
.button:hover{       /* 鼠标指针经过时的超链接 */
    color:#000000;     /* 改变文字颜色 */
    padding:5px 8px 3px 12px;  /* 改变文字位置 */
    background-color:#f44336;  /* 改变背景色 */
    border-top:1px solid #717171; /* 边框变换，实现“按下去”的效果 */
    border-left:1px solid #717171;
    border-bottom:1px solid #EEEEEE;
    border-right:1px solid #EEEEEE;
}
/*按钮css结束*/
 /*分割线*/
.demo_line_05{
    letter-spacing: -1px;
    color: 	#DCDCDC;
}
.demo_line_05 span{
    letter-spacing: 0;
    color: #222;
    margin:0 auto;
}
/*分割线结束*/

/*滚动logo*/
.picutre_many img{width:170px; height:150px;}
/*滚动logo结束*/
/*电话会员样式*/
.member_tab{
	border-radius: 8px;
	width:98%;
	height: 32px; 
	margin: 0px;
	background-color:#B2BBBB ;
}
.member_tab a{
	font-size: 16px;
	color: red;
}
.member_tab th{
	border-radius: 8px;
}
/*电话会员样式结束*/
/*三个banner样式*/
.banner_tb{
	text-align: center;
	font-size: 20px;
	width: 80%;
	height: 50px;
	border-radius: 8px;/*表格圆角*/
	border: 2px;
}

/*三个banner样式结束*/
/*超链接颜色*/
/*a:link {color: #F0F0F0} *//* 未访问的链接 */
/*a:visited {color: #00FF00}*/ /* 已访问的链接 */
a:hover {color: #FF00FF} /* 鼠标移动到链接上 */
a:hover {text-decoration: none;}
/*a:active {color: #0000FF}*/ /* 选定的链接 */
/*超链接颜色结束*/
/*悬浮会员中心，拨打电话*/
.mem_btn{
	text-align: center;
	background-color:#FF0000; 
	width:100%; height:3.0em; 
	margin:0 auto; 
	overflow:hidden;
	position: fixed; 
	bottom:0;
}
/*悬浮会员中心，拨打电话*/

/*测评成功样式*/
#cp_success{
	text-align: center;
	color: #E42B75;
	/*color: #FFD700;*/
	font-size: 18px;
}

/*测评成功样式结束*/

  </style> 
  <script>
            !function(){  try{window.addEventListener("DOMContentLoaded",function(){document.querySelectorAll(".form-tel-autofillbtn").forEach(function(ele){ele.parentElement.remove()})})}catch(e){};  }();
            </script> 
 </head> 
 <body id="body" style="background-image: url(https://p3.pstatp.com/origin/5d37000346880132829f);background-size: 100% 100%;background-position-x: initial;background-position-y: initial;background-repeat-x: no-repeat;background-repeat-y: no-repeat;background-color: #ffffff"> 
  <script type="text/javascript">
  	!function(e){function t(){var e=d.getBoundingClientRect().width;u=e/10,d.style.fontSize=u+"px"}function n(){o.body&&(o.body.style.fontSize=14/(i/10)+"rem")}var i=375,o=e.document,d=o.documentElement,c=d.getBoundingClientRect().width,u=(window.devicePixelRatio||1,c/10),l=null;e.addEventListener("resize",function(){clearTimeout(l),l=setTimeout(t,300)},!1),n(),"complete"===o.readyState?n():o.addEventListener("DOMContentLoaded",function(){n()},!1),t()}(window);
  
  
  </script>
  <div id="csrf">
   <input type="hidden" name="csrfmiddlewaretoken" value="lWF7ngC1yaKMZ2bXdZqVYNEc2h1cutzY">
  </div> 
  
  <main data-server-rendered="true">
  	
   <!--=========测评成功===============-->
   <br />
   <div id="cp_success">
	   <p>恭喜您，测评成功！</p>
	   <p>您的测评结果将由专人回复您。</p>
   </div>
   
   <!--=========测评成功结束===============-->
   
   <section id="frame-9" class="brick-frame brick-frame-server" style="padding-top:0;padding-bottom:0;padding-left:0;padding-right:0;">
    <div class="brick-mask"></div>

	<!--一条直线-->
   <!--<br/>
   <div style="width: 90%; margin:0 auto;background:linear-gradient(to left,#efefef,#b6b6b6,#efefef);height:2px;"></div>-->
   <br/><hr style="color: white; width: 94%; margin:0 auto;" />
			
		<!--一条直线-->
		<br/>
		
   </section>
   
    <!--三个banner表格-->
    <br />
   <center>
   	<table class="banner_tb">
   		<tr>
   			<td style="background-color: #4CAF50;border-radius: 8px;">
   				<a href="${pageContext.request.contextPath}/o/member/apply?cid=${customer.id}" target="_blank" style="color: white;">注册会员领取奖励金</a>
   			</td>
   		</tr>
   	</table>
   </center>
   <br />
   <center>
   	<table class="banner_tb">
   		<tr>
   			<td style="background-color: #f44336;border-radius: 8px;">
   				<a href="${pageContext.request.contextPath}/o/entercustomer/enter?mid=${customer.memberId}" target="_blank" style="color: white;">无学历加分入口>></a>
   			</td>
   		</tr>
   	</table>
   	<br />
   </center>
   <center>
   	<table class="banner_tb">
   		<tr>
   			<td style="background-color:#008CBA;border-radius: 8px;">
   				<a href="${pageContext.request.contextPath}/o/customer?mid=${customer.memberId}" target="_blank" style="color: white;">回到首页</a>
   			</td>
   		</tr>
   	</table>
   </center>
   
     <!--悬浮会员中心和电话-->
   <table class="mem_btn">
   	<tr>
   		<td>
   			<a style="color:white;font-size: 18px;" href="${pageContext.request.contextPath}/o/member/login" target="_blank">会员中心</a>
   		</td>
   		<td>
   			<a style="color:white;font-size: 18px;" href="tel:13823267778">电话咨询</a>
   		</td>
   	</tr>
   </table>
   
   
   <!--<a class="mem_btn">会员中心</a><a class="mem_btn2">拨打电话</a>-->
   <!--悬浮会员中心和电话结束-->
   
   <!--三个banner表格结束-->
    <br />
   <center>
   	<a style="color: red;font-size: 15px;" href="${pageContext.request.contextPath}/o/member/login">&lowast;进入会员中心，可查看个人二维码和佣金&lowast;</a> 
	</center>
   <!--<center><h2>入户可领取1.5万-3万</h2>
   <h2>人才引进租房补贴</h2></center>
   <div  style="width:90%;margin:0 auto">
	   <p>
	   	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	   	根据《深圳市人才安居办法》（市政府令273号）和《关于促进人才优先发展的若干措施》（深发〔2016〕9号），经我市人力资源部门引进的应届毕业生、在职人才和归国留学人员符合条件的，可以享受新引进人才租房补贴或新引进人才租房和生活补贴。
	   </p>
	   <p>
	   	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	   	1、补贴标准：
		本科15000元/人（非全日制本科6000元/人）、
		硕士25000元/人、
		博士30000元/人 <br />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		2、年龄条件：
		应届毕业生和归国留学人员无年龄限制。在职人才年龄要求本科未满30周岁、硕士未满35周岁、博士未满40周岁。<br />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		3、发放条件：
		具有本市户籍、未享受我市住房保障政策、在深圳缴纳了社会保险。
	   </p>
	</div>
  -->
  <!--一条直线-->
		<!--<br/><hr style="color: white; width: 92%; margin:0 auto;" />
  		<br/>-->
  		<br/>
  		<center> <div class="demo_line_05">—————<span style="font-size: 18px;color:black;">&nbsp;&nbsp;积分不够？学历来凑！</span> —————</div></center>
  		<br/>
  		<h3 style="color: white; width: 92%; margin:0 auto;"><a style="color: green; font-size: 23px;">|&nbsp;</a>专/本科院校一览表</h3>
  		<br/>
  
  <!--滚动院校logo-->
  	<div id="list" class=" picutre_many"
	style="overflow: hidden; height: 150px; width: 100%; margin: 0 auto;">
		<table cellspacing="0" cellpadding="0"
		style="width: 680px; border: 0px;">
			<tr>
			<td id="list1">
			<table style="border: 0px;" cellpadding="0" cellspacing="0">
			<tr id="pic">
			<td><img style="border: 0px;" alt="" src="${contextPath}/img/schoollogo/1.jpg" /></td>
			<td><img style="border: 0px;" alt="" src="${contextPath}/img/schoollogo/2.jpg" /></td>
			<td><img style="border: 0px;" alt="" src="${contextPath}/img/schoollogo/3.jpg" /></td>
			<td><img style="border: 0px;" alt="" src="${contextPath}/img/schoollogo/4.jpg" /></td>
			<td><img style="border: 0px;" alt="" src="${contextPath}/img/schoollogo/5.jpg" /></td>
			<td><img style="border: 0px;" alt="" src="${contextPath}/img/schoollogo/6.jpg" /></td>
			<td><img style="border: 0px;" alt="" src="${contextPath}/img/schoollogo/7.jpg" /></td>
			</tr>
			</table>
			</td>
			<td id="list2"></td>
			</tr>
		</table>
	</div>
	<script type="text/javascript">
	/*图片滚动效果*/
	var speedpic = 30;//速度数值越大速度越慢
	document.getElementById("list2").innerHTML = document.getElementById("list1").innerHTML;
	function Marqueepic() {
	if (document.getElementById("list2").offsetWidth
	- document.getElementById("list").scrollLeft <= 0) {
	document.getElementById("list").scrollLeft -= document
	.getElementById("list1").offsetWidth;
	} else {
	document.getElementById("list").scrollLeft++;
	}
	}
	var MyMarpic = setInterval(Marqueepic, speedpic);
	document.getElementById("list").onmouseover = function() {
	clearInterval(MyMarpic);
	}
	document.getElementById("list").onmouseout = function() {
	MyMarpic = setInterval(Marqueepic, speedpic);
	}
	</script>	
  
  
  <!--滚动院校logo结束-->
  
  	<br />
  <h3 style="color: white; width: 92%; margin:0 auto;"><a style="color: green; font-size: 23px;">|&nbsp;</a>入户即可领补贴</h3>
     	<br />
     <div tetris-data-click="" tetris-data-component-type="image" tetris-data-action-type="click" class="piece image-con">
      <div class="image-box" style="-webkit-clip-path:none;clip-path:none;">
       <a target="_blank" href="javascript:void(0);" class="image-link">
        <div class="image-mask" style="background-color:rgba(0, 0, 0, 0);border-radius:0;"></div><img src="${contextPath}/img/schoollogo/butie.jpg" class="image-item" style="border-radius:0;"></a>
       <span class="image-text"></span>
      </div>
     </div>
     <center> <div class="demo_line_05">———————— <span style="font-size: 8px;color: gainsboro;">我是有底线的</span> ————————</div></center>
   <br /><br />
  
 </body>
</html>
