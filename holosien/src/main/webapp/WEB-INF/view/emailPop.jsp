<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>이메일 인증번호 입력 </title>
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

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<% String path=request.getContextPath(); %>
	<script>
	 $(function(){

		  $('#confirmEmail_Check').click(function()
			{
				var check = "${authNum}";
				var confirm = document.getElementById('confirmEmail').value;
				if(!confirm){
					alert("인증번호를 입력하세요");
					return false;
				}
				
				if(confirm == check){
					$(opener.document).find("#completeAuth").text("인증완료");
					$(opener.document).find("#confirmEmail_Send").hide();
					self.close();
				}
				
				if(confirm != check){
					alert("잘못된 인증번호입니다. 다시 입력하세요");
					return false;
				}
			});
		  
		 });

	</script>

	
</head>
<body>
인증화면! 
		<div class="container">
			<div class="sectionContent col-md-6 col-md-offset-3">

	<div class="form-group" style="clear:right">
			 <label for="confirmEmail">이메일 인증번호</label>
			  <input type="text" class="form-control" name="confirmEmail" id="confirmEmail" placeholder="인증번호을 입력하세요" required>			
			</div>
			<div class="form-group" style="float:right">
			  <button type="button" class="btn btn-default btn-sm" id="confirmEmail_Check">확인</button>
			</div>
			
			</div>
			</div>
</body>
</html>