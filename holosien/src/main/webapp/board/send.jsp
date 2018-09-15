<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script>
//한글 인코딩을 위한 UTF-8 설정
request.setCharacterEncoding("utf-8");
out.println("에디터 결과"); 
out.println(request.getParameter("smarteditor"));
</script>
</body>
</html>