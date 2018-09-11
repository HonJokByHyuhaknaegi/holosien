<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Holosien - Naver SignUp</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
			if(${result}.message=="success"){
			
		 	var name = ${result}.response.name;
		    var email = ${result}.response.email;
		    var name = ${result}.response.name;
		    var age = ${result}.response.age;
		    var gender = ${result}.response.gender;
		    
		    console.log(${result});
		    $("#completeAuth").html("인증완료");
		    $("#confirmEmail_Send").hide();
		    
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
		 });
		 
		 </script>
</head>
<body>

<div id="naverJoin">
            <jsp:include page="emailJoin.jsp" />
        </div>
</body>
</html>