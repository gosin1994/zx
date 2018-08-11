<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html>
 <head> 
  <meta charset="utf-8"> 
  <meta name="pathname" content="bytecom_tetris"> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, minimal-ui"> 
  <!--favicon-->
  <link rel="icon" href="/favicon.ico" type="image/x-icon"> 
  
  <style type="text/css">@charset "utf-8";html{height:100%;color:#000;overflow-y:scroll;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;font-family:Arial,Helvetica,'Hiragino Sans GB','Microsoft YaHei',sans-serif;background-color:#FFF}html *{outline:0;-webkit-text-size-adjust:none;-webkit-tap-highlight-color:rgba(0,0,0,0);box-sizing:border-box;margin:0;padding:0}html input{font-family:Arial,Helvetica,'Hiragino Sans GB','Microsoft YaHei',sans-serif}table{border-collapse:collapse;border-spacing:0}fieldset,img{border:0}del{text-decoration:line-through}address,caption,cite,code,dfn,em,th,var{font-style:normal;font-weight:500}ol,ul{list-style:none}caption,th{text-align:left}a:hover{text-decoration:underline}ins,a{text-decoration:none}html,body{width:100%}body{min-height:100%;line-height:1.5}#content{width:100%;margin:0 auto}.piece{width:100%;background-color:transparent;position:relative;box-sizing:border-box}.piece.fbottom,.piece.ftop{position:fixed!important;width:100%!important;z-index:10!important}.create-left-content{width:1.867rem;height:auto;text-align:center;z-index:9999;position:fixed;bottom:0;left:0}.create-right-content{width:1.867rem;height:auto;text-align:center;z-index:9999;position:fixed;bottom:0;right:0}.piece.fbottom{top:auto!important;bottom:0!important}.piece.ftop{top:0!important;bottom:auto!important}#content{min-height:100%;position:relative;overflow:hidden}#MEIQIA-PANEL-HOLDER{right:0!important}html::-webkit-scrollbar{display:none}.hide{display:none!important}</style> 
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/swiper_302abfc.css">
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/ledfont_ccb326d.css">
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/daymode_1ae66db.css">
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/notice_7471b49.css"> 
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/bricks/bricks-common_9b66357.css"> 
  <script id="globalvar">
        GLOBAL_VAR = JSON.parse('{"siteId":"1590548427500557","pageIds":[1590548427500557],"pageid_map":{"506793":1590548427500557},"shareTitle":"诚士教育积分入户咨询","name":"积分入户2","shareDesc":"你关心的，才是头条！","shareThumb":"","adId":"0"}');
        componentsConfig = {
            PanoramaList: []
        }
    </script> 
  <script src="https://s3.pstatp.com/bytecom/resource/vue/lib/vendor_41f269e.js"></script>
  <script src="https://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
  <script src="https://s3.pstatp.com/bytecom/resource/vue/lib/main_5fdef5d.js"></script>
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/brand_5a9c6d0.css">
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/iconfont_03f5f23.css">
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/brickicon_2e09b13.css"> 
  <!-- 替换为Vue模板语法 --> 
  <title>领取免考学历提升方案</title> 
  <script>
            !function(){"use strict";!function(t,e){var r=t.seed=t.seed||[];if(r.start=+new Date,!r.initialize&&!r.invoked){r.invoked=!0,r.methods=["track","page","on","once"],r.factory=function(t){return function(){var e=Array.prototype.slice.call(arguments);return e.unshift(t),r.push(e),r}};for(var n=0;n<r.methods.length;n++){var a=r.methods[n];r[a]=r.factory(a)}r.load=function(){var t=e.createElement("script");t.type="text/javascript",t.async=!0,t.src="//s3.pstatp.com/bytecom/resource/tetris/insight/v0.1.4-beta/analytics.js";var r=e.getElementsByTagName("script")[0];r.parentNode.insertBefore(t,r)},r.SNIPPET_VERSION="1.1.8",r.load()}}(window,document)}();
            </script> 
  <style>
  	.clearfix::after{display:block;content:"";clear:both}
  	
/*滚动学校logo*/
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
  	
  </style> 
  <script>
            !function(){  try{window.addEventListener("DOMContentLoaded",function(){document.querySelectorAll(".form-tel-autofillbtn").forEach(function(ele){ele.parentElement.remove()})})}catch(e){};  }();
            </script> 
 </head> 
 <body id="body" style="background-image: url(https://p3.pstatp.com/origin/5d37000346880132829f);background-size: 100% 100%;background-position-x: initial;background-position-y: initial;background-repeat-x: no-repeat;background-repeat-y: no-repeat;background-color: #ffffff"> 
  <!--格局屏幕大小调整页面大小-->
  <script type="text/javascript">
  	!function(e){function t(){var e=d.getBoundingClientRect().width;u=e/10,d.style.fontSize=u+"px"}function n(){o.body&&(o.body.style.fontSize=14/(i/10)+"rem")}var i=375,o=e.document,d=o.documentElement,c=d.getBoundingClientRect().width,u=(window.devicePixelRatio||1,c/10),l=null;e.addEventListener("resize",function(){clearTimeout(l),l=setTimeout(t,300)},!1),n(),"complete"===o.readyState?n():o.addEventListener("DOMContentLoaded",function(){n()},!1),t()}(window);
  </script>
  
    <div class="Profile-right">
		<a href="${pageContext.request.contextPath}/o/member/login"
			class="sign-in popup-top-anim"> &nbsp;</a>
	</div>
   
  <main data-server-rendered="true">
   
   <!--===============页面第一张图片=====================-->
   <section id="frame-9" class="brick-frame brick-frame-server" style="padding-top:0;padding-bottom:0;padding-left:0;padding-right:0;">
    <div class="brick-mask"></div>
    <div class="brick-content">
     <div tetris-data-click="" tetris-data-component-type="image" tetris-data-action-type="click" class="piece image-con">
      <div class="image-box" style="-webkit-clip-path:none;clip-path:none;">
       <a target="_blank" href="javascript:void(0);" class="image-link">
        <div class="image-mask" style="background-color:rgba(0, 0, 0, 0);border-radius:0;"></div><img src="${contextPath}/img/background/index.png" class="image-item" style="border-radius:0;"></a>
       <span class="image-text"></span>
      </div>
     </div>
    </div>
   </section>
   <!--================页面第一张图片结束=======================-->
   
   <!--===========学历测评标题===============-->
   <section id="frame-10" class="brick-frame brick-frame-server" style="padding-top:0.267rem;padding-bottom:0.267rem;padding-left:0.4rem;padding-right:0.4rem;">
    <div class="brick-mask"></div>
    <div class="brick-content">
     <div class="piece text-piece" style="border-width:0.027rem;border-color:#000;border-style:none;border-radius:0;">
      <div class="rich-text">
       <div class="inner">
        <div style="text-align: center;">
         <span style="font-family: inherit; display: inline !important;"><font color="#ffffff" style="font-size: 0.64rem;">
         	<b>在线测试
			<br />领取免考学历提升方案
         	</b>
         </font></span>
        </div>
       </div>
      </div>
     </div>
    </div>
   </section>
   
   
   
   <section id="frame-11" class="brick-frame brick-frame-server" style="background-color:rgba(0, 0, 0, 0);">
    <div class="brick-mask" style="background-color:rgba(0, 0, 0, 0);"></div>
    <div class="brick-content">
     <div class="piece form-piece">
      <div>
       <div data-node="topCount" class="form-count">
        <span class="split-count"></span>
        <span data-node="countTextPre" class="count-text">目前已经有</span>
        <span data-node="countTextNum" class="count-text-num">783</span>
        <span data-node="countTextPos" class="count-text">人参与活动</span>
        <span class="split-count"></span>
       </div>
       
        
        
   <!--悬浮会员中心和电话-->
  <!-- <table class="mem_btn">
   	<tr>
   		<td>
   			<a style="color:lightseagreen;font-size: 18px;" href="${pageContext.request.contextPath}/o/member/login" target="_blank">会员中心</a>
   		</td>
   		<td>
   			<a style="color:lightseagreen;font-size: 18px;" href="tel:0755-32831222">电话咨询</a>
   		</td>
   	</tr>
   </table>-->
   
   
   <!--<a class="mem_btn">会员中心</a><a class="mem_btn2">拨打电话</a>-->
   <!--悬浮会员中心和电话结束-->
        
        
        <!--================= form表单开始 ======================-->
        <div class="form-element">
        
        <form action="${contextPath}/o/entercustomer/enter" method="post"
			  onSubmit="return beforeSubmit(this);">
         <input type="hidden" name="memberId" value="${mid}">
         
         <!--================= 姓名 ======================-->
         <div validate="name" class="input-group-i">
          <span id="label" class="input-group-addon-i warn-star" style="color:#808080;">姓名</span>
          <div class="m-input-text">
           <input required type="text" placeholder="请填写真实姓名" validate="name" eleType="name" id="name" name="name" class="input-style form-input-i">
           <span class="el-input-clear"></span>
          </div>
         </div>
        </div>
        <!--===================姓名结束====================-->
        
        <!---====================手机======================-->
        <div class="form-element">
         <!---->
         <div validate="captchav2" class="input-group-i">
          <span id="label" class="input-group-addon-i warn-star" style="color:#808080;">手机</span>
          <div class="m-input-text">
           <input type="text" placeholder="请填写真实手机" 
           	 id="phone" name="phone" class="input-style form-input-i"
           	 value="" maxlength="50">
           
           <span class="el-input-clear"></span>
          </div>
         </div>
        </div>
        <!--===================手机结束====================-->
        
        <!--=====================年龄======================-->
        <div class="form-element">
         <div validate="captchav2" class="input-group-i">
          <span id="label" class="input-group-addon-i warn-star" style="color:#808080;">年龄</span>
          <div class="m-input-text">
          	
           <input  type="text" placeholder="请填写年龄" 
           	value="" name="age" id="age" 
           	maxlength="2" class="input-style form-input-i">
           
           <!--<input class="city" style="width:240px;"
			name="age" id="age" type="text" placeholder="请填写年龄" value=""
			maxlength="2" />-->
           
           <span class="el-input-clear"></span>
          </div>
         </div>
        </div>
        <!--===================年龄结束====================-->
        
        
        <!--===================当前学历====================-->
        <div class="form-element">
         <div data-select="{&quot;tree&quot;:{&quot;text&quot;:&quot;&quot;,&quot;children&quot;:[{&quot;text&quot;:&quot;高中、中专及以下&quot;},{&quot;text&quot;:&quot;非全日制大专&quot;},{&quot;text&quot;:&quot;全日制大专&quot;},{&quot;text&quot;:&quot;非全日制本科&quot;},{&quot;text&quot;:&quot;全日制本科&quot;}]},&quot;deep&quot;:1,&quot;arrObj&quot;:{&quot;0&quot;:{&quot;text&quot;:&quot;&quot;,&quot;pid&quot;:0,&quot;id&quot;:0,&quot;sid&quot;:[&quot;0-1&quot;,&quot;0-2&quot;,&quot;0-3&quot;,&quot;0-4&quot;,&quot;0-5&quot;]},&quot;0-1&quot;:{&quot;text&quot;:&quot;高中、中专及以下&quot;,&quot;pid&quot;:0,&quot;id&quot;:&quot;0-1&quot;,&quot;sid&quot;:[]},&quot;0-2&quot;:{&quot;text&quot;:&quot;非全日制大专&quot;,&quot;pid&quot;:0,&quot;id&quot;:&quot;0-2&quot;,&quot;sid&quot;:[]},&quot;0-3&quot;:{&quot;text&quot;:&quot;全日制大专&quot;,&quot;pid&quot;:0,&quot;id&quot;:&quot;0-3&quot;,&quot;sid&quot;:[]},&quot;0-4&quot;:{&quot;text&quot;:&quot;非全日制本科&quot;,&quot;pid&quot;:0,&quot;id&quot;:&quot;0-4&quot;,&quot;sid&quot;:[]},&quot;0-5&quot;:{&quot;text&quot;:&quot;全日制本科&quot;,&quot;pid&quot;:0,&quot;id&quot;:&quot;0-5&quot;,&quot;sid&quot;:[]}}}" class="selectMulti-group">
          <label class="select-addon" style="color:#808080;">当前学历：</label>
          <div class="selectMulti-wrapper">
           <div class="select-wrapper select-list1" style="display:;">
            <select name="educationLevel" id="educationLevel"  class="input-style">
            	<option value="-1">请选择</option>
				<option value="1">初中及以下</option>
				<option value="2">高中/中专</option>
				<option value="3">大专</option>
				<option value="4">本科及以上</option>
            </select>
            
           </div>
          </div>
         </div>
        </div>
        <!--===================当前学历结束====================-->
        
         <!--===================报考学历====================-->
        <div class="form-element">
         <div data-select="{&quot;tree&quot;:{&quot;text&quot;:&quot;&quot;,&quot;children&quot;:[{&quot;text&quot;:&quot;高中、中专及以下&quot;},{&quot;text&quot;:&quot;非全日制大专&quot;},{&quot;text&quot;:&quot;全日制大专&quot;},{&quot;text&quot;:&quot;非全日制本科&quot;},{&quot;text&quot;:&quot;全日制本科&quot;}]},&quot;deep&quot;:1,&quot;arrObj&quot;:{&quot;0&quot;:{&quot;text&quot;:&quot;&quot;,&quot;pid&quot;:0,&quot;id&quot;:0,&quot;sid&quot;:[&quot;0-1&quot;,&quot;0-2&quot;,&quot;0-3&quot;,&quot;0-4&quot;,&quot;0-5&quot;]},&quot;0-1&quot;:{&quot;text&quot;:&quot;高中、中专及以下&quot;,&quot;pid&quot;:0,&quot;id&quot;:&quot;0-1&quot;,&quot;sid&quot;:[]},&quot;0-2&quot;:{&quot;text&quot;:&quot;非全日制大专&quot;,&quot;pid&quot;:0,&quot;id&quot;:&quot;0-2&quot;,&quot;sid&quot;:[]},&quot;0-3&quot;:{&quot;text&quot;:&quot;全日制大专&quot;,&quot;pid&quot;:0,&quot;id&quot;:&quot;0-3&quot;,&quot;sid&quot;:[]},&quot;0-4&quot;:{&quot;text&quot;:&quot;非全日制本科&quot;,&quot;pid&quot;:0,&quot;id&quot;:&quot;0-4&quot;,&quot;sid&quot;:[]},&quot;0-5&quot;:{&quot;text&quot;:&quot;全日制本科&quot;,&quot;pid&quot;:0,&quot;id&quot;:&quot;0-5&quot;,&quot;sid&quot;:[]}}}" class="selectMulti-group">
          <label class="select-addon" style="color:#808080;">报考学历：</label>
          <div class="selectMulti-wrapper">
           <div class="select-wrapper select-list1" style="display:;">
            <select name="enterEducationLevel" id="enterEducationLevel"  class="input-style">
            	<option value="-1">请选择</option>
				<option value="1">本科</option>
				<option value="2">专科</option>
				<option value="3">硕士及以上</option>
            </select>
            
           </div>
          </div>
         </div>
        </div>
        <!--===================报考学历结束====================-->
        
        
        <br />
        <div class="form-element">
         <div class="input-group-i">
          <div id="submit-result" class="el-result"></div>
          <input value="提交领取学历提升方案" type="submit" class="btn-i" style="border-radius:0.107rem;background-color:rgb(45, 151, 246) !important;color:#FFF;height:1.12rem;line-height:1.12rem;width:100%;"/>
          <!---->
         </div>
        </div>
        </form>
        <!--=====================form表单结束=========================-->
        
        <br />
        
        <!--================注册会员及回到首页===================-->
		<!--注册会员-->
		<center>
	   	<table class="banner_tb">
	   		<tr>
	   			<td style="background-color:#f44336;border-radius: 8px;">
	   				<a href="${pageContext.request.contextPath}/o/member/apply?mid=${mid}" target="_blank" style="color: white;">注册会员领奖励金>></a>
	   			</td>
	   		</tr>
	   	</table>
	   </center>
	   
	   <br />
	   	<!--回到首页-->
	    <center>
	   	<table class="banner_tb">
	   		<tr>
	   			<td style="background-color:#008CBA;border-radius: 8px;">
	   				<a href="${pageContext.request.contextPath}/o/customer?mid=${mid}" target="_blank" style="color: white;">回到首页</a>
	   			</td>
	   		</tr>
	   	</table>
	   </center>
		<br />
		
		
		<!--================注册会员及回到首页结束===================-->
        
        
        
        
        
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
   


   
   <section id="frame-14" class="brick-frame brick-frame-server" style="padding-top:0;padding-bottom:0;padding-left:0;padding-right:0;background-color:rgba(0, 0, 0, 0);">
    <div class="brick-mask" style="background-color:rgba(0, 0, 0, 0);"></div>
    <div class="brick-content">
     <div class="piece telephone-button">
      <a id="a14" href="tel:0755-32831222" data-tel="0755-32831222" tt-data-eventvalue="0755-32831222" phone_number="0755-32831222" class="tel-btn style1" style="background-color:rgb(45, 151, 246);color:#FFF;line-height:1.173rem;border-radius:0.107rem;border-width:0.027rem;border-color:rgba(0, 0, 0, 0);border-style:none;font-size:0.48rem;width:100%;height:1.173rem;"><i class="brick-i-tel-left icon-telphone_left"></i><span class="tel-label text-ellipsis">电话咨询</span><i class="brick-i-tel-right icon-telphone_right"></i><i class="icon-telphone_circle brick-i-tel"></i><i class="icon-left_arrow"></i><input type="hidden" name="site_id" value="1590548427500557"><input type="hidden" name="ad_id" value="0"></a>
     </div>
    </div>
   </section>
  </main>  
  <script src="https://s3.pstatp.com/bytecom/resource/track_log/src/tetris-user-action.js"></script>
  <script src="https://s3.pstatp.com/bytecom/resource/vue/lib/daymode_c65fed4.js"></script>
  <script src="https://s3.pstatp.com/bytecom/resource/vue/lib/base64_68e8d03.js"></script>
  <script src="https://s3.pstatp.com/bytecom/resource/vue/lib/swiper_d5340fc.js"></script>
  <script src="https://s3.pstatp.com/bytecom/resource/vue/lib/notice_584309a.js"></script> 
  <script src="https://s3.pstatp.com/bytecom/resource/vue/bricks/Form/script.landing_d4e371d.js"></script>
  <script src="https://s3.pstatp.com/bytecom/resource/vue/bricks/TelephoneButton/script.landing_d2d7b20.js"></script> 
  <script>(function(){ var FORM = require("tetris/parse/Form.js");var _FORM = FORM.init({
                id: "#a11",
                showJump: "1",
                successUrl: "javascript:void(0);",
                failedUrl: "javascript:void(0);",
                successmsg: "",
                isShowCount: "true",
                countKit: {"prefix":"目前已经有","middle":783,"subfix":"人参与活动"},
                formId: "1604931052029966",
                locateBgColor: "#f85959",
                recentSubmitStyle: 0,
                caculator: null
            });var Phone = require("tetris/parse/TelephoneButton.js");Phone.init('#a14', '1', '14734', '12345678910', '075523769953'); })();</script> 
 </body>
 
 <script type="text/javascript">
	var isPhoneValid = false;

	function beforeSubmit(form) {

		if ($("#name").val() == '' || $("#name").val() == '请输入姓名'
				|| !isUsername($("#name").val())) {
			alert('请填写真实姓名！');
			$("#name").focus();
			return false;
		}
		if ($("#phone").val() == '' || $("#phone").val() == '请输入手机'
				|| !isPhone($("#phone").val())) {
			alert('请填写真实手机号码！');
			$("#phone").focus();
			return false;
		} else {
			checkPhoneUniqueness($("#phone").val())

			if (!isPhoneValid) {
				return false;
			}
		}

		if ($("#age").val() == '' || $("#age").val() == '请输入年龄'
				|| !isNum($("#age").val())) {
			alert('请填写真实的年龄！');
			$("#age").focus();
			return false;
		}
/*
		if ($("#insureYear").val() == '' || $("#insureYear").val() == '请输入社保年限'
				|| !isNum($("#insureYear").val())) {
			alert('请填写真实社保年限！');
			$("#insureYear").focus();
			return false;
		}
*/
		if ($("#educationLevel").val() == '-1') {
			alert('请选择当前学历！');
			$("#educationLevel").focus();
			return false;
		}
		
		if ($("#enterEducationLevel").val() == '-1') {
			alert('请选择报考学历！');
			$("#enterEducationLevel").focus();
			return false;
		}

		return true;
	}

	/* function isUsername(temp) 
	 { 
	 var re = /^[\u4E00-\u9FA5]{1,8}$/; 
	 if(re.test(temp)) return true; 
	 return false; 
	 } */
	function isUsername(temp) {
		/*  var re = /^[\u4E00-\u9FA5]{1,8}$/; 
		 if(re.test(temp)) return true; 
		 return false;  */
		return true;
	}

	function isPhone(temp) {
		var re = /^1[0-9]{10}$/;
		if (re.test(temp))
			return true;
		return false;
	}

	function isNum(temp) {
		var re = /^[1-9][0-9]{0,1}$/;
		if (re.test(temp))
			return true;
		return false;
	}

	function checkPhoneUniqueness(phone) {
		$.ajax({
			async : false,
			type : 'GET',
			url : "${contextPath}/o/customer/isPhoneExist",
			data : {
				phone : phone
			},
			success : function(data) {
				if (data) {
					alert("该手机已经存在");
					isPhoneValid = false;
				} else {
					isPhoneValid = true;
				}
			}
		});
	}
</script>	
</html>
