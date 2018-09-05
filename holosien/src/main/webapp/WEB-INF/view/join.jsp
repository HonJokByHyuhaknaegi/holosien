<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Holosien</title>
 <link rel="shortcut icon" href="images/ico/favicon.jpg">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/resources/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath}/resources/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath}/resources/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/resources/images/ico/apple-touch-icon-57-precomposed.png">
	
	<!-- css -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/materialdesignicons.min.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jquery.mCustomScrollbar.min.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/prettyPhoto.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/unslider.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/template.css" />

<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>

</head>
<body>
<div id="header">
            <jsp:include page="header.jsp" />
        </div>
			   <section id="join">
      <div class="container">
         <h2 class="nino-sectionHeading">
            <span class="nino-subHeading">How to sign up.</span>
            회원가입 방법을 선택하세요!
         </h2>
 <div style="text-align:center;">
							 <a href="${naverUrl}"><img src="${pageContext.request.contextPath}/resources/images/naverSignupbtn.jpg" style="margin:20px 0px;width:340px; height:50px;"></a>
							<br>
							<img src="${pageContext.request.contextPath}/resources/images/kakaoSignupbtn.jpg" style="margin:20px 0px;width:340px; height:50px;">
							<br>
							<a href="${pageContext.request.contextPath}/emailJoin"><img src="${pageContext.request.contextPath}/resources/images/emailSignupbtn.jpg" style="margin:20px 0px;;width:340px; height:50px;">
							</a>
						<br>
						기존 홀로지앵의 회원이신가요? <a href="${pageContext.request.contextPath}/login">로그인</a>
						</div>
      </div>      
   </section>
						
</body>
</html>