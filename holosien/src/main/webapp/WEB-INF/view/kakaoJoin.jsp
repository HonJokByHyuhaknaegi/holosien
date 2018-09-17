<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>\
<script type="text/javascript">
  $(document).ready(function() {
		 	var name = ${name};
		    var email = "${email}";
		    var age = "${age}";
		    var gender = "${gender}";
		    
		    console.log(name);
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
		    
		    if(gender!=null){
		    $('input:radio[name=InputGender]:input[value=' + gender + ']').attr("checked", true)
		    }
			
		 });
		 
		 </script> 
</head>

<body>

<div id="kakaoJoin">
            <jsp:include page="emailJoin.jsp" />
        </div> 
        </body>
        
</html>