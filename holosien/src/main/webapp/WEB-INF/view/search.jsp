<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Holosien - Search</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>
	<div id="header">
		<jsp:include page="header.jsp" />
	</div>

	<div class="container">
		<h2 class="nino-sectionHeading">
			<span class="nino-subHeading">Search.</span> 검색 결과.
		</h2>
	</div>
	<div id="search_result" style="width:80%; margin:auto">
	<span style="margin-bottom:50px; font-family: 'Kaushan Script', cursive; font-size: 20px; color:black;">Together</span><br><br>
	<c:forEach var="l" items="${boardlist}">
<div style="width:100%; margin:auto;" >
<div id="left" style="float:left; padding-left:30px">
<div id="board_category"><h6>${l.category}</h6></div>
<div id="title"><h4>${l.subject}</h4></div>
<div id="location"><h6>${l.location}</h6></div>
</div>
<div id="right"  style="float:right; text-align:right; padding-right:30px">
<h6>${l.number}명</h6>
<h6>${l.writer}</h6>
<h6>${l.reg_date}</h6>
<button class="custom-border-btn" style="margin:10px 0px 10px; padding:5px 20px;"
onclick="location.href='${pageContext.request.contextPath}/detailBoard?boardNo=${l.bno}'">more</button>
</div>
<hr width=100% align="center">
</div>
</c:forEach>

	<span style="margin-bottom:50px; font-family: 'Kaushan Script', cursive; font-size: 20px; color:black;">Review</span><br><br>
	
		<c:forEach var="m" items="${reviewlist}">
<div style="width:100%; margin:auto;" >
<div id="left" style="float:left; padding-left:30px">
<div id="board_category"><h6>${m.category}</h6></div>
<div id="title"><h4>${m.subject}</h4></div>
</div>
<div id="right"  style="float:right; text-align:right; padding-right:30px">
<h6>${m.writer}</h6>
<h6>${m.reg_date}</h6>
<button class="custom-border-btn" style="margin:10px 0px 10px; padding:5px 20px;"
onclick="location.href='${pageContext.request.contextPath}/detailReview?reviewNo=${m.bno}'">more</button>
</div>
<hr width=100% align="center">
</div>
</c:forEach>
	</div>
</body>
</html>