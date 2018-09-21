<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
$(function(){
				var duplication = "${result}";
				if(duplication=="false"){
					console.log("중복 없음");
					$(opener.document).find("#checkDuplication").text("중복확인");
					$(opener.document).find("#Duplication").hide();
					self.close();
				}
				else{
					alert("이미 가입된 이메일 입니다.");
				}
		 });
</script>
</head>
<body>

</body>
</html>