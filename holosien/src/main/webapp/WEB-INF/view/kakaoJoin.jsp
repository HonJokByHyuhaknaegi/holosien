<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script>


$(document).ready(function() {

	loginWithKakao();
    function loginWithKakao() {

        // 사용할 앱의 JavaScript 키를 설정해 주세요.
        Kakao.init('902d6a7c353fa5d9d5588cb5f944ce94');
      // 로그인 창을 띄웁니다.
      Kakao.Auth.login({
        success: function(authObj) {
          //alert(JSON.stringify(authObj));
          Kakao.API.request({
        	  url: '/v1/user/me',
        	  success:function(res){
        		  console.log(res.properties.nickname);
        		  
        				
        			 	var name = res.properties.nickname;
        			    var email = res.kakao_account.email;
        			    var age =res.kakao_account.age_range;
        			    var gender = res.kakao_account.gender;
        			    
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
        				
        			
        	  },
              fail: function(err) {
                  alert(JSON.stringify(err));
              }
          });
          
        },
        fail: function(err) {
          alert(JSON.stringify(err));
        }
      });
    };
    });
</script>
</head>

<body>
<div id="kakaoJoin">
            <jsp:include page="emailJoin.jsp" />
        </div>
</body>
</html>