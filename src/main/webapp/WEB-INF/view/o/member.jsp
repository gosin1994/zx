<!--
	author：龚鑫
	  date：2018-08-06 11:23  
	 email：gx1008666@163.com
-->
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
  
  <script src="https://s3.pstatp.com/bytecom/resource/vue/lib/vendor_41f269e.js"></script>
  <!--<script src="https://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>-->
  <script src="https://s3.pstatp.com/bytecom/resource/vue/lib/main_5fdef5d.js"></script>
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/brand_5a9c6d0.css">
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/iconfont_03f5f23.css">
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/brickicon_2e09b13.css"> 
  <!-- 替换为Vue模板语法 --> 
  <title>注册合伙人领取奖励金</title> 
  <script>
            !function(){"use strict";!function(t,e){var r=t.seed=t.seed||[];if(r.start=+new Date,!r.initialize&&!r.invoked){r.invoked=!0,r.methods=["track","page","on","once"],r.factory=function(t){return function(){var e=Array.prototype.slice.call(arguments);return e.unshift(t),r.push(e),r}};for(var n=0;n<r.methods.length;n++){var a=r.methods[n];r[a]=r.factory(a)}r.load=function(){var t=e.createElement("script");t.type="text/javascript",t.async=!0,t.src="//s3.pstatp.com/bytecom/resource/tetris/insight/v0.1.4-beta/analytics.js";var r=e.getElementsByTagName("script")[0];r.parentNode.insertBefore(t,r)},r.SNIPPET_VERSION="1.1.8",r.load()}}(window,document)}();
            </script> 
  <style>
  	.clearfix::after{display:block;content:"";clear:both}
  
  /*佣金表样式*/
 .comments {
 	background: white;
 }
 .comments table,th{
 	border: 2px;
 	background: white;
 	text-align: center;
 	
 }
 
 
 /*佣金表样式结束*/
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
  
   
  <main data-server-rendered="true">
   
   <!--===============页面第一张图片=====================-->
   <!--<section id="frame-9" class="brick-frame brick-frame-server" style="padding-top:0;padding-bottom:0;padding-left:0;padding-right:0;">
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
   </section>-->
   <!--================页面第一张图片结束=======================-->
   
   <!--============顶部文字===============-->
   <center>
        	<p style="color: white;font-size: 15px;"> 注册会员最高可领取1300元奖励金</p>
        </center>
   <!--============顶部文字结束===============-->
   
   
   <!--===========会员注册大标题===============-->
   <section id="frame-10" class="brick-frame brick-frame-server" style="padding-top:0.267rem;padding-bottom:0.267rem;padding-left:0.4rem;padding-right:0.4rem;">
    <div class="brick-mask"></div>
    <div class="brick-content">
     <div class="piece text-piece" style="border-width:0.027rem;border-color:#000;border-style:none;border-radius:0;">
      <div class="rich-text">
       <div class="inner">
        <div style="text-align: center;">
         <span style="font-family: inherit; display: inline !important;"><font color="#ffffff" style="font-size: 0.64rem;"><b>会员注册</b></font></span>
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
        <span data-node="countTextNum" class="count-text-num">2421</span>
        <span data-node="countTextPos" class="count-text">人注册成为会员</span>
        <span class="split-count"></span>
       </div>
       
        
        
        <!--form-->
        
        
        <!--================= form表单开始 ======================-->
        <div class="form-element">
        
        <form action="${contextPath}/o/member/apply" method="post"
			  onSubmit="return beforeSubmit(this);">
         <input type="hidden" name="pid" value="${mid}" />
         <input type="hidden" name="customerId" value="${cid}" />
         
         <!--================= 姓名 ======================-->
         <div validate="name" class="input-group-i">
          <span id="label" class="input-group-addon-i warn-star" style="color:#808080;">姓名</span>
          <div class="m-input-text">
           <input required type="text" placeholder="请填写真实姓名"  id="name" name="name" value="${customer.name}" class="input-style form-input-i">
           <span class="el-input-clear"></span>
          </div>
         </div>
        </div>
        <!--===================姓名结束====================-->
        
        
        <!--===================手机====================-->
        <div class="form-element">
         <div  class="input-group-i">
          <span  class="input-group-addon-i warn-star" style="color:#808080;">手机</span>
          <div class="m-input-text">
           <input required type="text" placeholder="请填写真实手机"  id="phone" name="phone" value="${customer.phone}" maxlength="11" class="input-style form-input-i">
          </div>
         </div>
        </div>
        <!--===================手机结束====================-->
        
        <!--===================支付宝====================-->
        <div class="form-element">
         <div  class="input-group-i">
          <span  class="input-group-addon-i warn-star" style="color:#808080;">支付宝</span>
          <div class="m-input-text">
           <input required type="text" placeholder="请填写支付宝账号(推荐使用)"   name="alipayNo" id="alipayNo"  maxlength="50" class="input-style form-input-i">
          </div>
         </div>
        </div>
        <!--===================支付宝结束====================-->
        
        
        <!---====================开户银行======================-->
        <div class="form-element">
         <!---->
         <div validate="captchav2" class="input-group-i">
          <span id="label"  style="color:#808080;">开户银行</span>
          <div class="m-input-text">
           <input type="text" placeholder="请填写开户银行(可不填)" 
           	 name="bankName" id="bankName"  class="input-style form-input-i"
           	 value="" maxlength="50">
           <span class="el-input-clear"></span>
          </div>
         </div>
        </div>
        <!--===================开户银行结束====================-->
        
        <!--=====================开户名======================-->
        <div class="form-element">
         <div validate="captchav2" class="input-group-i">
          <span id="label"  style="color:#808080;">开户名</span>
          <div class="m-input-text">
          	
           <input  type="text" placeholder="请填写开户姓名(可不填)" 
           	value="" name="bankAccountName" id="bankAccountName" 
           	maxlength="50" class="input-style form-input-i">
           
           <span class="el-input-clear"></span>
          </div>
         </div>
        </div>
        <!--===================开户名结束====================-->
        
        
        <!--===================开户账号====================-->
         <div class="form-element">
         <div validate="captchav2" class="input-group-i">
          <span id="label"  style="color:#808080;">开户账号</span>
          <div class="m-input-text">
           <input  type="text" placeholder="请填写开户账号(可不填)" 
           	value="" name="bankAccountNo" id="bankAccountNo" 
           	maxlength="50" class="input-style form-input-i">
           
           <span class="el-input-clear"></span>
          </div>
         </div>
        </div>
        <!--===================开户账号结束====================-->
        
        
        <br />
        <div class="form-element">
         <div class="input-group-i">
          <div id="submit-result" class="el-result"></div>
          <input value="免费注册" type="submit" class="btn-i" style="border-radius:0.107rem;background-color:rgb(45, 151, 246) !important;color:#FFF;height:1.12rem;line-height:1.12rem;width:100%;"/>
          <!---->
         </div>
        </div>
        </form>
        <!--=====================form表单结束=========================-->
		<br />
		<!--===============回到首页==============-->
		<center>
	   	<table class="banner_tb">
	   		<tr>
	   			<td style="background-color:#008CBA;border-radius: 8px;">
	   				<a href="${pageContext.request.contextPath}/o/customer?mid=${mid}" target="_blank" style="color: white;">回到首页</a>
	   			</td>
	   		</tr>
	   	</table>
	   </center>
		<!--===============回到首页结束==============-->


   
   <!--================奖励金说明===========================-->
   <br />
   <div class="comments">
	    <h3 style="text-align: center;">奖励金赚取规则：</h3>
		<p>1、您注册成为会员后，可以自己办理入户，也可以推荐别人成为会员。推荐成功入户累计达到相应的数量，可以升级到相应的级别。例如，推荐成功1人可升级到高级会员，并获得此级别奖励金200元。</p>
		<p>2、您推荐的会员如果也推荐他的朋友入户，您也有机会获得奖励金。您推荐的越多，您的会员级别越高，所能赚取的单笔奖励金越高。奖励金表如下：</p>
		<table border="1px" class="table table-bordered agileinfo">
			<thead>
				<tr>
					<td colspan=5>会员推荐用户奖励表</td>
				</tr>
				<tr >
					<td>级别</td>
					<td>升级条件</td>
					<td>直接奖励金</td>
					<td>间接奖励金</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="wthree">会员</td>
					<td class="wthree">提交个人资料注册即可</td>
					<td class="wthree">200</td>
					<td class="wthree">0</td>
		
				</tr>
				<tr>
					<td class="wthree">高级会员</td>
					<td class="wthree">累计成功推荐1人（含）</td>
					<td class="wthree">400</td>
					<td class="wthree">200</td>
		
				</tr>
				<tr>
					<td class="wthree">黄金会员</td>
					<td class="wthree">累计成功推荐2人以上（含）</td>
					<td class="wthree">600</td>
					<td class="wthree">200</td>
		
				</tr>
				
		
			</tbody>
		</table>
		<br/>
		
		<p>3、您可以赚取您下一级别的所有代理商的奖励金差额。举例：比如A推荐B办理得200元奖励金，B如果再推荐C办理入户，A跟B都再各有200元奖励金，以此类推，逐渐在你的下面形成一个营销团队。</p>
		<p>4、您和您推荐的会员之间的推荐关系永续不变，他推荐的每一笔业绩在三级分销系统奖励金分配规则下您都有机会分成，如果您的推荐团队足够强大，您辛苦一段时间后，将有可能持续不断的产生被动收入，甚至实现财富自由。</p>
		<p>5、同级没有分润。</p>
		<p>6、您的奖励金将在您推荐的客户成交后的2个工作日到账。</p>
		<p>7、若您想了解更详细的规则或有任何疑问，建议您向您的推荐人咨询。
	</div>							
   <!--================奖励金说明结束===========================-->
   
   
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

		if ($("#name").val() == '' || !isUsername($("#name").val())) {
			alert('请填写真实姓名！');
			$("#name").focus();
			return false;
		}
		if ($("#phone").val() == '' || !isPhone($("#phone").val())) {
			alert('请填写真实手机号码！');
			$("#phone").focus();
			return false;
		} else {
			checkPhoneUniqueness($("#phone").val())

			if (!isPhoneValid) {
				return false;
			}
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
			url : "${contextPath}/o/member/isPhoneExist",
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
