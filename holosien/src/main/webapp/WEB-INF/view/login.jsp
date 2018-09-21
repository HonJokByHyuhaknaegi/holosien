<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Holosien</title>
<link rel="shortcut icon" href="images/ico/favicon.jpg">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="${pageContext.request.contextPath}/resources/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="${pageContext.request.contextPath}/resources/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="${pageContext.request.contextPath}/resources/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="${pageContext.request.contextPath}/resources/images/ico/apple-touch-icon-57-precomposed.png">

<!-- css -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/materialdesignicons.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/jquery.mCustomScrollbar.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/prettyPhoto.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/unslider.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/template.css" />

<style>
input {width:300px; height:50px;}
</style>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
$(document).ready(function() {
	if("${msg}"=="fail") alert("로그인 실패");
});
</script>
</head>
<body>

	<div id="header">
		<jsp:include page="header.jsp" />
	</div>
	<section id="login">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">Login.</span> 로그인
			</h2>
			<div align="center">
				<form style="margin-bottom:10px" method="post" action="${pageContext.request.contextPath}/checkLogin">
					<div class="form-group">
						<input type="email" name="InputEmail" placeholder="계정(이메일)입력" style="padding-left:20px;" required>
					</div>
					<div class="form-group">
						<input type="password" name="InputPassword" placeholder="비밀번호 입력" style="padding-left:20px;" required>
					</div>
					<input type="submit" name="login" value="로그인" style="border:none; background:#B483D9; color:white">
				</form>
				홀로지앵은 처음이신가요? <a href="${pageContext.request.contextPath}/join">회원가입</a>
			</div>
		</div>
	</section>



</body>
</html>