<!--
	author：龚鑫
	  date：2018-08-06 14:00 
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
  <!--<link rel="icon" href="https://ad.toutiao.com/favicon.ico" type="image/x-icon">--> 
  <style type="text/css">@charset "utf-8";html{height:100%;color:#000;overflow-y:scroll;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;font-family:Arial,Helvetica,'Hiragino Sans GB','Microsoft YaHei',sans-serif;background-color:#FFF}html *{outline:0;-webkit-text-size-adjust:none;-webkit-tap-highlight-color:rgba(0,0,0,0);box-sizing:border-box;margin:0;padding:0}html input{font-family:Arial,Helvetica,'Hiragino Sans GB','Microsoft YaHei',sans-serif}table{border-collapse:collapse;border-spacing:0}fieldset,img{border:0}del{text-decoration:line-through}address,caption,cite,code,dfn,em,th,var{font-style:normal;font-weight:500}ol,ul{list-style:none}caption,th{text-align:left}a:hover{text-decoration:underline}ins,a{text-decoration:none}html,body{width:100%}body{min-height:100%;line-height:1.5}#content{width:100%;margin:0 auto}.piece{width:100%;background-color:transparent;position:relative;box-sizing:border-box}.piece.fbottom,.piece.ftop{position:fixed!important;width:100%!important;z-index:10!important}.create-left-content{width:1.867rem;height:auto;text-align:center;z-index:9999;position:fixed;bottom:0;left:0}.create-right-content{width:1.867rem;height:auto;text-align:center;z-index:9999;position:fixed;bottom:0;right:0}.piece.fbottom{top:auto!important;bottom:0!important}.piece.ftop{top:0!important;bottom:auto!important}#content{min-height:100%;position:relative;overflow:hidden}#MEIQIA-PANEL-HOLDER{right:0!important}html::-webkit-scrollbar{display:none}.hide{display:none!important}</style> 
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/swiper_302abfc.css">
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/ledfont_ccb326d.css">
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/daymode_1ae66db.css">
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/notice_7471b49.css"> 
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/bricks/bricks-common_9b66357.css"> 
  
  
  <script src="https://s3.pstatp.com/bytecom/resource/vue/lib/vendor_41f269e.js"></script>
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

/*会员注册成功样式*/
.m_sccess{
	width: 96%;
	margin: 0 auto;
}
.m_sccess img{
	width: 96%;
	margin: 0 auto;
}
/*会员注册成功样式*/


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
   <span></span>
   <section id="frame-9" class="brick-frame brick-frame-server" style="padding-top:0;padding-bottom:0;padding-left:0;padding-right:0;">
    
		
   </section>
   
   <!--=========注册生成的二维码===========-->
   <div class="m_sccess">
    <br/>
	        <h4 style="color: red;">恭喜您，注册会员成功！</h4>
	        <h5 style="color: white;"><br/><br/>以下是您的会员二维码，请您妥善保管(<span style="color:red">长按图片保存至手机</span>)。若您不慎丢失此二维码，可以登陆会员中心点击头像查看或联系我们工作人员重新获取。<br/><br/>
			他人扫此码办理入户立减200元。若成功办理入户，您可获得最高1300元奖励金。他人扫此二维码注册会员，即可成为您下属团队的一员，其推荐人成功办理深户您也可获得相应奖励金</h4>
			<br/><br/>
			<center><img src="${member.qrcodeUrl}"/></center>
			<!--<img src="../../../resources/img/qrcode/qrcode_bg.jpg" />-->
	        <br/><br/><br/><br/>
	</div>
   
   
   <!--=========注册生成的二维码结束===========-->
 
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
 
 	<!--=========返回首页============-->
 	<center>
 		<table class="banner_tb">
	   		<tr>
	   			<td style="background-color: #f44336;border-radius: 8px;">
	   				<a href="${pageContext.request.contextPath}/o/customer?mid=${mid}" target="_blank" style="color: white;">返回首页</a>
	   			</td>
	   		</tr>
   		</table>
   	</center>	
   	<!--=========返回首页结束============-->
   	
 	
    <br />
   <center>
   	<table class="banner_tb">
   		<tr>
   			<td style="background-color:#0055CC;border-radius: 8px;">
   				<a href="${pageContext.request.contextPath}/o/member/login" target="_blank" style="color: white;">立即登录</a>
   			</td>
   		</tr>
   	</table>
   </center>
   
  	<br />
  
  
     <center> <div class="demo_line_05">———————— <span style="font-size: 8px;color: gainsboro;">我是有底线的</span> ————————</div></center>
   <br /><br />
  
 </body>
</html>
<script>
	
	
	function verify() {
		
		return true;
	}
</script>