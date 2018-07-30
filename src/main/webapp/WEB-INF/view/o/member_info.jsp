<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="Expires" CONTENT="-1">
<meta http-equiv="Cache-Control" CONTENT="no-cache">
<meta http-equiv="Pragma" CONTENT="no-cache">
<link href="${contextPath}/css/h5_member/ectouch.css" rel="stylesheet" type="text/css" />
<link href="${contextPath}/css/h5_member/style.css" rel="stylesheet" type="text/css" />
<link href="${contextPath}/font/h5_member/iconfont.css" rel="stylesheet" type="text/css" />
<!-- 网页添加logo -->
<link rel="shortcut icon" href="${contextPath}/img/o/favicon.ico" type="image/x-icon"> 
<script src="${contextPath}/js/h5_member/TouchSlide.1.1.source.js" type="text/javascript"></script>
<script src="${contextPath}/js/h5_member/jquery-1.8.2.min.js" type="text/javascript"></script>
<script src="${contextPath}/js/h5_member/common_js.js" type="text/javascript"></script>
<script src="${contextPath}/js/h5_member/jquery.reveal.js" type="text/javascript"></script>
<title>会员中心</title>
</head>

<body>
<div class="Layout_style">
 <header id="header">
  <div class="header_l header_return"><a href="#" class="iconfont icon-back"></a></div>
  <h1> 会员中心 </h1>
  <%-- <div class="header_r"><a class="iconfont icon-unie668" href="${contextPath}/o/member/logout"> 退出登录</a> </div> --%>
  <div class="header_r"><a href="${contextPath}/o/member/logout">退出登录</a> </div>
</header>
  <dl class="user_top">
  <dt><a target="blank" href="${member.qrcodeUrl}"><img  width="80" height="80" src="${member.qrcodeUrl}"/></a></dt>
  <dd class="Balance">${member.name}  </dd>
</dl>
 <div class="user_center">
  
<div class="Distribution_M">
   <div class="title_name">分销管理</div>
   <ul class="Menu_list">
     <li><a href="javascript:void(0);" onclick="showInfo()"><img src="${contextPath}/img/h5_member/icon_users_05.png" /><h5>会员信息</h5></a></li>
     <li><a href="${contextPath}/o/member/${member.id}/commissions"><img src="${contextPath}/img/h5_member/icon_users_06.png" /><h5>我的佣金</h5></a></li>
     <li><a href="${contextPath}/o/member/${member.id}/hierarchy"><img src="${contextPath}/img/h5_member/icon_users_07.png" /><h5>我的推荐</h5></a></li>
     <li><a href="javascript:void(0);" onclick="showRule()"><img src="${contextPath}/img/h5_member/icon_users_08.png" /><h5>佣金规则</h5></a></li>
    </ul>
  </div>
  <div class="menu_Manager clearfix" id="user_info">
   <br/>
   <br/>
   当前级别：
   <c:choose>
												<c:when test="${member.level==1}">
													会员
												</c:when>
												<c:when test="${member.level==2}">
													高级会员
												</c:when>
												<c:when test="${member.level==3}">
													黄金会员
												</c:when>
												<c:when test="${member.level==4}">
													白金会员
												</c:when>
												<c:when test="${member.level==5}">
													渠道商
												</c:when>
												<c:when test="${member.level==6}">
													高级代理商
												</c:when>
												<c:when test="${member.level==7}">
													高级合伙人
												</c:when>
											</c:choose>&nbsp;&nbsp;&nbsp;
											<br/><br/>累计单数：${member.orderCount}&nbsp;&nbsp;&nbsp;
											<br/><br/>累积佣金：${member.totalAmount}
   <br/>
   <br/>
   <br/>
  </div>
  <div class="menu_Manager clearfix" id="commission_rule">
   <br/>
   <p>佣金赚取规则：</p>
							<p>1、您注册成为会员后，可以自己办理入户，也可以推荐别人成为会员。推荐成功入户累计达到相应的数量，可以升级到相应的级别。例如，推荐成功1人可升级到高级会员，并获得此级别佣金200元。</p>
							<p>2、您推荐的会员如果也推荐他的朋友入户，您也有机会获得佣金。您推荐的越多，您的会员级别越高，所能赚取的单笔佣金越高。佣金表如下：</p>
							<table  border="1">
								<thead>
									<tr>
										<td align="center" colspan=5>深户协办服务费，非会员价2680元</td>
									</tr>
									<tr>
										<th>级别</th>
										<th>升级条件</th>
										<th>代理价</th>
										<th>佣金</th>
										<th>可赚取下一级别的佣金差额</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td >会员</td>
										<td >提交个人资料注册即可</td>
										<td >2480</td>
										<td >200</td>
										<td >0</td>

									</tr>
									<tr>
										<td >高级会员</td>
										<td >累计成功推荐1人（含）</td>
										<td >2280</td>
										<td >400</td>
										<td >200</td>

									</tr>
									<tr>
										<td >黄金会员</td>
										<td >累计成功推荐2人以上（含）</td>
										<td >2080</td>
										<td >600</td>
										<td >200</td>

									</tr>
									<tr>
										<td >白金会员</td>
										<td >累计成功推荐4人以上（含）</td>
										<td >1880</td>
										<td >800</td>
										<td >200</td>
									</tr>
									
									<tr>
										<td >渠道商</td>
										<td >累计成功推荐8人以上（含）</td>
										<td >1680</td>
										<td >1000</td>
										<td >200</td>
									</tr>

									<tr>
										<td >高级代理商</td>
										<td >累计成功推荐15人以上（含）</td>
										<td >1480</td>
										<td >1200</td>
										<td >200</td>
									</tr>

									<tr>
										<td >高级合伙人</td>
										<td >累计成功推荐20人以上（含）</td>
										<td >1380</td>
										<td >1300</td>
										<td >100</td>
									</tr>
								</tbody>
							</table>
							<br/>
							
							<p>3、您可以赚取您下一级别的所有代理商的佣金差额。举例：比如A推荐B办理得200佣金，B如果再推荐C办理入户，A跟B都再各有200元佣金，以此类推，逐渐在你的下面形成一个营销团队。</p>
							<p>4、您和您推荐的会员之间的推荐关系永续不变，他推荐的每一笔业绩在三级分销系统佣金分配规则下您都有机会分成，如果您的推荐团队足够强大，您辛苦一段时间后，将有可能持续不断的产生被动收入，甚至实现财富自由。</p>
							<p>5、同级没有分润。</p>
							<p>6、您的佣金将在您推荐的客户成交后的2个工作日到账。</p>
							<p>7、若您想了解更详细的规则或有任何疑问，建议您向您的推荐人咨询。
   <br/>
   <br/>
  </div>
 </div>
  <!--底部样式-->
<div class="footer">
  <div class="Copyright">
   深圳唯学教育科技有限公司 版权所有  粤ICP备16016146号-1
  </div>
</div>
</div>
 <!--固定栏目样式-->

      <script src="${contextPath}/js/h5_member/zepto.min.js" type="text/javascript"></script>
   <script type="text/javascript">
   
   
   $(function() {
	   showInfo();
	});

   function showInfo(){
	   $('#user_info').show();
	   $('#commission_rule').hide();
   }   
   
   
   function showRule(){
	   $('#user_info').hide();
	   $('#commission_rule').show();
   }
   
   
   
Zepto(function($){
   var $nav = $('.global-nav'), $btnLogo = $('.global-nav__operate-wrap');
   //点击箭头，显示隐藏导航
   $btnLogo.on('click',function(){
     if($btnLogo.parent().hasClass('global-nav--current')){
       navHide();
     }else{
       navShow();
     }
   });
   var navShow = function(){
     $nav.addClass('global-nav--current');
   }
   var navHide = function(){
     $nav.removeClass('global-nav--current');
   }
   
})
function get_search_box(){
	try{
		document.getElementById('get_search_box').click();
	}catch(err){
		document.getElementById('keywordfoot').focus();
 	}
}
</script>
</div>
</body>
</html>
