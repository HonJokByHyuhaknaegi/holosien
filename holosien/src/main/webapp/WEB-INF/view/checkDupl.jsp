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
					console.log("�ߺ� ����");
					$(opener.document).find("#checkDuplication").text("�ߺ�Ȯ��");
					$(opener.document).find("#Duplication").hide();
					self.close();
				}
				else{
					alert("�̹� ���Ե� �̸��� �Դϴ�.");
				}
		 });
</script>
</head>
<body>

</body>
</html>