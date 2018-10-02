<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Holosien - MyPage</title>
</head>
<body>
	<div id="header">
		<jsp:include page="header.jsp" />
	</div>

	<c:choose>
		<c:when test="${sessionScope.userID==null}">
			<c:redirect url="join" />
		</c:when>
		<c:otherwise>
			<section id="login">
				<div class="container">
					<h2 class="nino-sectionHeading">
						<span class="nino-subHeading">MyPage.</span> 마이페이지
					</h2>
				</div>

				<div id="myPage" style="width:80%; margin:auto">
					<div align=center>
						${sessionScope.userID} 님이 로그인 중입니다. <br>
						<a href="${pageContext.request.contextPath}/logout">로그아웃</a> <br>
					</div>


				</div>
			</section>
		</c:otherwise>
	</c:choose>

</body>
</html>