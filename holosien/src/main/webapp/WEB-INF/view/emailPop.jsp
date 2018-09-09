<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�̸��� ������ȣ �Է� </title>
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
					alert("������ȣ�� �Է��ϼ���");
					return false;
				}
				
				if(confirm == check){
					$(opener.document).find("#completeAuth").text("�����Ϸ�");
					$(opener.document).find("#confirmEmail_Send").hide();
					self.close();
				}
				
				if(confirm != check){
					alert("�߸��� ������ȣ�Դϴ�. �ٽ� �Է��ϼ���");
					return false;
				}
			});
		  
		 });

	</script>

	
</head>
<body>
����ȭ��! 
		<div class="container">
			<div class="sectionContent col-md-6 col-md-offset-3">

	<div class="form-group" style="clear:right">
			 <label for="confirmEmail">�̸��� ������ȣ</label>
			  <input type="text" class="form-control" name="confirmEmail" id="confirmEmail" placeholder="������ȣ�� �Է��ϼ���" required>			
			</div>
			<div class="form-group" style="float:right">
			  <button type="button" class="btn btn-default btn-sm" id="confirmEmail_Check">Ȯ��</button>
			</div>
			
			</div>
			</div>
</body>
</html>