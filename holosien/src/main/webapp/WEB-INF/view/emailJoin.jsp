<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="ninodezign.com, ninodezign@gmail.com">
	<meta name="copyright" content="ninodezign.com"> 
	<title>Sign Up</title>
	
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<% String path=request.getContextPath(); %>
	<script>
	 $(document).ready(function() {
		 $('#confirmEmail_Send').click(function(){
				$("#confirmEmail").removeAttr("disabled");
					location.href="${pageContext.request.contextPath}/emailAuth?email="+$("#InputEmail").val();
			});
		  });
		
	</script>

</head>

<body>
	
<div id="header">
            <jsp:include page="header.jsp" />
        </div>
	
	<!-- Sign Up
	================================================== -->
	<section id="join">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">Sign Up</span>
				회원가입
			</h2>
			<div class="sectionContent col-md-6 col-md-offset-3">
			<form name="joinForm" id="joinForm" method="post" action="${pageContext.request.contextPath}/SuccessJoin">
			<div class="form-group">
			 <label for="InputEmail">이메일 주소</label>
			  <input type="email" class="form-control" name="InputEmail" id="InputEmail" placeholder="이메일을 입력하세요" required>
			</div>
			<div class="form-group" style="clear:right">
			 <label for="confirmEmail">이메일 인증번호</label>
			  <input type="text" class="form-control" name="confirmEmail" id="confirmEmail" placeholder="인증번호을 입력하세요" disabled>
			</div>
			<div class="form-group" style="float:right">
			 <button type="button" class="btn btn-default btn-sm" id="confirmEmail_Send">인증번호 받기</button>
			  <button type="button" class="btn btn-default btn-sm" id="confirmEmail_Check">확인</button>
			</div>
  			<div class="form-group" style="clear:right">
   			 <label for="InputPassword">암호</label>
  			  <input type="password" class="form-control" name="InputPassword" placeholder="암호를 입력하세요" required>
  			</div>
			<div class="form-group">
			 <label for="InputName">이름</label>
			  <input type="text" class="form-control" name="InputName" placeholder="이름을 입력하세요" required>
			</div>
			<div class="form-group">
			 <label for="InputAge">나이</label>
			  <select class="form-control" name="InputAge" required>
  				<option value=10>10대</option>
 				<option value=20>20대</option>
  				<option value=30>30대</option>
  				<option value=40>40대</option>
  				<option value=50>50대</option>
  				<option value=60>60대 이상</option>
			</select>
			</div>
			<label>성별</label>
			<div class="form-group">
              <input type="radio" id="ex_rd2" name="ex_rds" required> 남
              <input type="radio" id="ex_rd2" name="ex_rds" style="margin-left:20px"> 여
            </div>
            
			<button type="submit" class="btn btn-default" style="margin-left:40%">회원가입</button>
			</form>
			</div>
		</div>		
	</section>
	<!--Sign Up-->

		
</body>
</html>