<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- start: Meta -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台</title>
<!-- 网页添加logo -->
<link rel="shortcut icon" href="${contextPath}/img/o/favicon.ico" type="image/x-icon"> 
<!-- end: Meta -->
<jsp:include page="../resource_link.jsp" flush="true" />
</head>
<body>
	<jsp:include page="../top.jsp" flush="true" />
	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
	<div class="container-fluid">
		<div class="row-fluid">
			<!-- start: Main Menu -->
			<div id="sidebar-left" class="span1">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
					   <li class="active"><a href="${contextPath}/i/apply"> <i
								class="fa-icon-bar-chart"></i><span class="hidden-tablet">入户申请</span>
						</a></li>
					</ul>
				</div>
			</div>
			<!-- end: Main Menu -->

			<!-- start: Content -->
			<div id="content" class="span11">
				<div class="row-fluid sorprinter">
					<div class="box span12">
						<div class="box-header" data-original-title>
							<h2>
								<i class="halflings-icon user"></i><span class="break"></span>入户申请
							</h2>

							<div class="box-icon">
								<a href="#" class="btn-minimize"><i
									class="halflings-icon chevron-up"></i></a>
							</div>
						</div>
						<div class="box-content">
							<form class="form-horizontal" method="post"
								action="${pageContext.request.contextPath}/i/apply" >
								<table width="100%">
									<tr>
										<td >客户姓名： <input name="name"
											class="input focused" id="name" type="text" maxlength="20"
											value="${query.name}"></td>
										<td >手机号： <input name="phone"
											class="input focused" id="phone" type="text" maxlength="20"
											value="${query.phone}"></td>
										<td align="right">
											<button type="submit" class="btn btn-primary">查询</button>
										</td>
									</tr>
								</table> 
							</form>
							<table class="table table-striped table-bordered ">
								<thead>
									<tr>
										<th>客户姓名</th>
										<th>客户电话</th>
										<th>学历</th>
										<th>年龄</th>
										<th>社保年限</th>
										<th>是否已加盟会员</th>
										<th>推荐人</th>
										<th>顶层会员</th>
										<th>申请时间</th>
										<th>是否签单</th>
										<th class="center">操作</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${applies}" var="apply">
										<tr>
											
											<td class="center"><c:out value="${apply.name}" /></td>
											<td class="center"><c:out value="${apply.phone}" /></td>
											<td class="center">
											<c:choose>
												<c:when test="${apply.educationLevel==1}">
													全日制本科及以上
												</c:when>
												<c:when test="${apply.educationLevel==2}">
													全日制大专
												</c:when>
												<c:when test="${apply.educationLevel==3}">
													成人大专
												</c:when>
												<c:when test="${apply.educationLevel==4}">
													成人本科
												</c:when>
												<c:when test="${apply.educationLevel==5}">
													无学历
												</c:when>
											</c:choose>
											</td>
											<td class="center"><c:out value="${apply.age}" /></td>
											<td class="center"><c:out value="${apply.insureYear}" /></td>
											<td class="center">
											<c:choose>
												<c:when test="${apply.isMember==1}">
													是
												</c:when>
												<c:otherwise>
													否
												</c:otherwise>
											</c:choose>
											</td>
											<td class="center"><c:out value="${apply.memberName}" /></td>
											<td class="center"><c:out value="${apply.rootMemberName}" /></td>
											<td class="center"><fmt:formatDate
													value="${apply.createTime}" type="both" /></td>
											<td class="center">
											<c:choose>
												<c:when test="${apply.state==1}">
													已签单
												</c:when>
												<c:otherwise>
													否
												</c:otherwise>
											</c:choose>
											</td>
											
											<td>
											<c:choose>
												<c:when test="${apply.state==1}">
												</c:when>
												<c:otherwise>
													<a class="btn btn-info"
											href="javascript:void(0);" onclick="sign(${apply.id})" >签单</a>
												</c:otherwise>
											</c:choose>
											
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="row-fluid">
							<div class="span12">
								<div class="dataTables_info" id="DataTables_Table_0_info">总数${page.totalRecord}  共${page.totalPage}页</div>
							</div>
							<div id="page"></div>
							</div>
						</div>
					</div>
					<!--/span-->

				</div>
				<!--/row-->
				<!-- end: Content -->
			</div>
			<!--/#content.span10-->
		</div>
		<!--/fluid-row-->

		<jsp:include page="../bottom.jsp" flush="true" />

	</div>
	<!--/.fluid-container-->
</body>
<script type="text/javascript">
$(function(){
	initPage();
});
function initPage() {
	var options = {
		currentPage : "${page.pageNo}",
		totalPages : "${page.totalPage}",
		numberOfPages : 5,
		pageUrl : function(type, page, current) {
			return "${contextPath}/i/apply?pageNo=" + page
					+"&state=${query.state}&rootMemberId=${query.rootMemberId}";
		}
	}
	$("#page").bootstrapPaginator(options);
}

    function sign(id) {
    	if(confirm("确定已经签订合同并已收款吗？")){
    		location.href="${contextPath}/i/apply/sign?id="+id;
    		
    	}
    }
    
  
   
</script>



</html>

