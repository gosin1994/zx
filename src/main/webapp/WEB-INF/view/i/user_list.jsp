<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- start: Meta -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 网页添加logo -->
<link rel="shortcut icon" href="${contextPath}/img/o/favicon.ico" type="image/x-icon"> 
<title>后台</title>
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
					   <li class="active"><a href="${contextPath}/i/user"> <i
								class="fa-icon-bar-chart"></i><span class="hidden-tablet">用户列表</span>
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
								<i class="halflings-icon user"></i><span class="break"></span>用户列表
							</h2>

							<div class="box-icon">
								<a href="#" class="btn-minimize"><i
									class="halflings-icon chevron-up"></i></a>
							</div>
						</div>
						<div class="box-content">
							<a class="btn btn-success"
											href="${contextPath}/i/user/0">新增</a>
							<br /><br />
							<table class="table table-striped table-bordered ">
								<thead>
									<tr>
										<th>账户</th>
										<th>姓名</th>
										<th>电话</th>
										<th>是否管理员</th>
										<th>创建时间</th>
										<th class="center">操作</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${users}" var="user">
										<tr>
											<td class="center"><c:out value="${user.username}" /></td>
											
											<td class="center"><c:out value="${user.name}" /></td>
											<td class="center"><c:out value="${user.phone}" /></td>
											<td class="center">
											<c:choose>
												<c:when test="${user.isAdmin==1}">
													是
												</c:when>
												<c:when test="${user.isAdmin==0}">
													否
												</c:when>
											</c:choose>
							 					</td>
							 				<td class="center"><fmt:formatDate
													value="${user.createTime}" type="both" /></td>
											<td><a class="btn btn-info"
												href="${contextPath}/i/user/${user.id}">修改</a>
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


	</div>
	<!--/.fluid-container-->
</body>
</html>
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
			return "${contextPath}/i/user?pageNo=" + page;
		}
	}
	$("#page").bootstrapPaginator(options);
}


  
   
</script>