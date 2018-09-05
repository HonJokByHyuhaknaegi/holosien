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
		 if(${result}.message=="success"){
			console.log(${result}.message);
			
		 	var name = ${result}.response.name;
		    var email = ${result}.response.email;
		    var name = ${result}.response.name;
		    var age = ${result}.response.age;
		    var gender = ${result}.response.gender;
		    
		    console.log(${result});
		    $("#completeAuth").html("인증완료");
		    $("input[name=InputEmail]").val(email);
		    $("input[name=InputName]").val(name);
		    
		    switch(age){
		    case '10-19' : {$("#InputAge").val("10"); break;}
		    case '20-29' : {$("#InputAge").val("20"); break;}
		    case '30-39' : {$("#InputAge").val("30"); break;}
		    case '40-49' : {$("#InputAge").val("40"); break;}
		    case '50-59' : {$("#InputAge").val("50"); break;}
		    default : {$("#InputAge").val("60"); break;}
		    }
		    
		    $('input:radio[name=InputGender]:input[value=' + gender + ']').attr("checked", true);
		    
		 }
		    
		 $('#confirmEmail_Send').click(function(){
				$("#confirmEmail").removeAttr("disabled");
					location.href="${pageContext.request.contextPath}/emailAuth?email="+$("#InputEmail").val();
			});
		 
		 function check() {
			 console.log($('#completeAuth').text());
			  if($('#completeAuth').text() == null) {
			    alert("이메일 인증을 해주세요");
			    return false;
			  }
			  else return true;
			}
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
			<form name="joinForm" id="joinForm" method="post" onsubmit="return check()" action="${pageContext.request.contextPath}/SuccessJoin">
			<div class="form-group">
			 <label for="InputEmail">이메일 주소</label>
			  <input type="email" class="form-control" name="InputEmail" placeholder="이메일을 입력하세요" required>
			</div>
			<div class="form-group" style="clear:right">
			 <label for="confirmEmail">이메일 인증번호</label>
			  <input type="text" class="form-control" name="confirmEmail" id="confirmEmail" placeholder="인증번호을 입력하세요" disabled>
			</div>
			<div class="form-group" style="float:right">
			 <button type="button" class="btn btn-default btn-sm" id="confirmEmail_Send">인증번호 받기</button>
			  <button type="button" class="btn btn-default btn-sm" id="confirmEmail_Check">확인</button>
			  <h5 id="completeAuth" style="color:red; text-align:right"></h5>
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
			  <select class="form-control" name="InputAge" id="InputAge" required>
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
              <input type="radio" name="InputGender" value="M"> <span>남</span>
              <input type="radio" name="InputGender" value="F" style="margin-left:20px"> <span>여</span>
            </div>
            
			<button type="submit" class="btn btn-default" style="margin-left:40%">회원가입</button>
			</form>
			</div>
		</div>		
	</section>
	<!--Sign Up-->

		
</body>
</html>