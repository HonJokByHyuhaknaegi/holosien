<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Holosien-MYPAGE</title>
</head>
<body>
<div id="header">
<jsp:include page="header.jsp" />
</div>
	
<c:choose>
<c:when test="${sessionScope.userID==null}">
 <c:redirect url="join"/>
</c:when>
<c:otherwise>
${sessionScope.userID} 님이 로그인 중입니다.
<a href="${pageContext.request.contextPath}/logout">로그아웃</a>
</c:otherwise>
</c:choose>

</body>
</html>