<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript">
  $(document).ready(function() {
	  
	  Kakao.init('902d6a7c353fa5d9d5588cb5f944ce94');
			      // 로그인 창을 띄웁니다.
			      Kakao.Auth.login({
			        success: function(authObj) {
			         Kakao.API.request({
			        	  url: '/v2/user/me', //호출할 APIurl 
			        	  success:function(res){
			        		var name = res.properties.nickname;
			      		    var email = res.kakao_account.email;
			      		    var age = res.kakao_account.age_range;
			      		    var gender = res.kakao_account.gender;

			      		    $("#completeAuth").html("인증완료");
			      		    $("#confirmEmail_Send").hide();
			      		    
			      		    $("input[name=InputEmail]").val(email);
			      		    $("input[name=InputName]").val(name);
			      		    
			      		    switch(age){
			      		    case '10~19' : {$("#InputAge").val("10"); break;}
			      		    case '20~29' : {$("#InputAge").val("20"); break;}
			      		    case '30~39' : {$("#InputAge").val("30"); break;}
			      		    case '40~49' : {$("#InputAge").val("40"); break;}
			      		    case '50~59' : {$("#InputAge").val("50"); break;}
			      		    default : {$("#InputAge").val("60"); break;}
			      		    }
			      		    
			      		    $('input:radio[name=InputGender]:input[value=' + gender + ']').attr("checked", true);
			      			},

			      /*   		  $.ajax({
			        			  url:"kakaoJoin",
			        			  method:"post",
			        			  type:"json",
			        			  contentType:"application/json",
			        			  data:JSON.stringify(res),
			        			  success:function(data){
			        				alert(data);
										
			        			  },
			        			  fail: function(err) {
					                  alert(JSON.stringify(err));
					              }
			        		  }); */
			        		
			              fail: function(err) {
			                  alert(JSON.stringify(err));
			              }
			          }); 
			        },
			        fail: function(err) {
			          alert(JSON.stringify(err));
			        }
			      });

			
		 });
		 
		 </script> 
</head>

<body>
<div id="kakaoJoin">
            <jsp:include page="emailJoin.jsp" />
        </div> 
        </body>
        
</html>