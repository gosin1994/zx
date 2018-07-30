<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- start: Meta -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>填写入户资料</title>
<!-- end: Meta -->

<!-- start: Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- end: Mobile Specific -->

<!-- start: CSS -->
<link id="bootstrap-style" href="../common/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../common/css/bootstrap-responsive.min.css" rel="stylesheet">
<link id="base-style" href="../common/css/style.css" rel="stylesheet">
<link id="base-style-responsive"
	href="../common/css/style-responsive.css" rel="stylesheet">

<link rel="shortcut icon" href="../common/img/favicon.ico" type="image/x-icon" >
<!-- end: Favicon -->

<style type="text/css">
body {
	background: url(../common/img/bg-login.jpg) !important;
}
</style>

<!-- start: JavaScript-->

	<script src="../common/js/jquery-1.9.1.min.js"></script>
	<script src="../common/js/jquery-migrate-1.0.0.min.js"></script>

	<script src="../common/js/jquery-ui-1.10.0.custom.min.js"></script>

	<script src="../common/js/jquery.ui.touch-punch.js"></script>

	<script src="../common/js/modernizr.js"></script>

	<script src="../common/js/bootstrap.min.js"></script>

	<script src="../common/js/jquery.cookie.js"></script>

	<script src='../common/js/fullcalendar.min.js'></script>

	<script src='../common/js/jquery.dataTables.min.js'></script>

	<script src="../common/js/excanvas.js"></script>
	<script src="../common/js/jquery.flot.js"></script>
	<script src="../common/js/jquery.flot.pie.js"></script>
	<script src="../common/js/jquery.flot.stack.js"></script>
	<script src="../common/js/jquery.flot.resize.min.js"></script>

	<script src="../common/js/jquery.chosen.min.js"></script>

	<script src="../common/js/jquery.uniform.min.js"></script>

	<script src="../common/js/jquery.cleditor.min.js"></script>

	<script src="../common/js/jquery.noty.js"></script>

	<script src="../common/js/jquery.elfinder.min.js"></script>

	<script src="../common/js/jquery.raty.min.js"></script>

	<script src="../common/js/jquery.iphone.toggle.js"></script>

	<script src="../common/js/jquery.uploadify-3.1.min.js"></script>

	<script src="../common/js/jquery.gritter.min.js"></script>

	<script src="../common/js/jquery.imagesloaded.js"></script>

	<script src="../common/js/jquery.masonry.min.js"></script>

	<script src="../common/js/jquery.knob.modified.js"></script>

	<script src="../common/js/jquery.sparkline.min.js"></script>

	<script src="../common/js/counter.js"></script>

	<script src="../common/js/retina.js"></script>

	<script src="../common/js/custom.js"></script>
	<!-- end: JavaScript-->


</head>

<body onload="init();">
	<div class="container-fluid">
		<div class="row-fluid">

			<div class="row-fluid">
				<br/><br/><br/><br/><br/><br/><br/><br/>
				<div class="login-box">
					<div class="icons">
						<a href="#"><i class="halflings-icon home"></i></a>
					</div>
					<h1>&nbsp;&nbsp;会员资料</h1>
					<h3>填写会员资料</h3>
					
					
					<form class="form-horizontal"
						action="${pageContext.request.contextPath}/o/member/apply"
						method="post" onsubmit="return verify();">
						<input type="hidden" name="pId" value="${mid}"/>
						<input type="hidden" name="customerId" value="${cid}"/>
						<fieldset>

							<div class="input-prepend" title="名称">
								<span class="add-on"><i class="halflings-icon user"></i></span>
								<input class="input-large span10" name="name" id="name" placeholder="名称" value="${customer.name}"/>
							</div>
							<div class="clearfix"></div>

							<div class="input-prepend" title="手机">
								<span class="add-on"><i class="halflings-icon lock"></i></span>
								<input class="input-large span10" name="phone" id="phone" placeholder="手机" value="${customer.phone}"/>
							</div>
							<div class="clearfix"></div>
							
							<div class="input-prepend" title="开户银行">
								<span class="add-on"><i class="halflings-icon lock"></i></span>
								<input class="input-large span10" name="bankName" id="bankName" placeholder="开户银行" />
							</div>
							<div class="clearfix"></div>
							
							<div class="input-prepend" title="开户姓名">
								<span class="add-on"><i class="halflings-icon lock"></i></span>
								<input class="input-large span10" name="bankAccountName" id="bankAccountName" placeholder="开户姓名" />
							</div>
							<div class="clearfix"></div>
							
							<div class="input-prepend" title="开户账号">
								<span class="add-on"><i class="halflings-icon lock"></i></span>
								<input class="input-large span10" name="bankAccountNo" id="bankAccountNo" placeholder="开户账号" />
							</div>
							<div class="clearfix"></div>

							
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="message" style="color:red"></span>
							<div class="button-login">
								<button type="submit" class="btn btn-primary">提交资料</button>
							</div>
							<div class="clearfix"></div>
						</fieldset>
					</form>
					
					
					<hr>
				</div>
				<!--/span-->
			</div>
			<!--/row-->

		</div>
		<!--/fluid-row-->

	</div>
	<!--/.fluid-container-->

<script>
	function init(){
		if("verify"=="${param.msg}"){
			$("#message").html("您输入的验证码不正确，请重新输入");
		}else if("incorrect"=="${param.msg}"){
			$("#message").html("您输入的账号或密码不正确，请重新输入");
		}else if("lock"=="${param.msg}"){
			$("#message").html("您的账号已被锁定，请联系管理员");
		}
	}

	function changeCode(obj) {
    	obj.src = "${pageContext.request.contextPath}/Kaptcha.vf?" + Math.random();
	}
	
	function verify() {
		var account = $("#account").val();
		var password = $("#passwd").val();
		var verifyCode = $("#verifyCode").val();
		if(account.length==0){
			$("#message").html("账号不能为空");
			$("#account").focus();
			return false;
		}
		if(password.length==0){
			$("#message").html("密码不能为空");
			$("#password").focus();
			return false;
		}
		if(verifyCode.length==0){
			$("#message").html("验证码不能为空");
			$("#verifyCode").focus();
			return false;
		}
		return true;
	}
</script>

</body>
</html>
