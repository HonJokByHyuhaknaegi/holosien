<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<span style="margin-bottom:50px; font-family: 'Kaushan Script', cursive; font-size: 20px; color:black;">Review</span><br><br>
	</div>
	${searchInput};
</body>
</html>