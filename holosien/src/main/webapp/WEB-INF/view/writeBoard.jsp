<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Holosien - Write Board</title>
</head>
<body>

	<div id="header">
		<jsp:include page="header.jsp" />
	</div>

	<div class="container">
		<h2 class="nino-sectionHeading">
			<span class="nino-subHeading">Write.</span> 게시글 작성.
		</h2>
	</div>

	<div id="writeBoard" align="center" style="width:60%; margin: auto;">
		<form class="form-horizontal" method="post">
			<div class="form-group">
				<label for="subject">제목</label> <input type="text"
					class="form-control" id="subject" name="subject" placeholder="제목을 입력하세요.">
			</div>
			
			<div class="form-group">
				<label for="content">내용</label>
				<textarea class="form-control" id="content" name="content" rows="3"></textarea>
			</div>
			<button type="submit" class="btn btn-primary">작성</button>
		</form>
	</div>

</body>
</html>