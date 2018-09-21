<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

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
<%
   String path = request.getContextPath();
%>
<%@ page import="com.example.demo.member.service.MemberService"%>
<%@ page import="com.example.demo.member.domain.MemberVO"%>
<script>
   $(document).ready(function() {
      $('#confirmEmail_Send').click(
         function() {
            $("#confirmEmail").removeAttr("disabled");
               //var email = $('#InputEmail').val();
               var email = document.getElementById('InputEmail').value;
               //location.href="${pageContext.request.contextPath}/emailAuth?email="+email;
               if (!email) alert("이메일을 입력하세요");
               else if ($('#checkDuplication').text() == "") {
                  alert("이메일 중복확인이 필요합니다.");
               }
               else {
                  var pop_title = "popupOpener";
                  window.open("", pop_title,"width = 310, height = 180");
                  var frmData = document.joinForm;
                  frmData.target = pop_title;
                  frmData.action = "emailAuth";
                  frmData.submit();
               }
            });
      
      $('#Duplication').click(
         function() {
            $("#Duplication").removeAttr("disabled");
            var email = document.getElementById('InputEmail').value;
            if (!email) alert("이메일을 입력하세요");
            else {
               var popName = "HidePop";//iframe의 name이다.
               window.open("",popName,"width=450, height=350, left=0, top=0,  scrollbars=no,status=no,toolbar=no,menubar=no,resizeable=no,location=no");
               var frmData = document.joinForm;
               frmData.target = popName;
               frmData.action = "checkDuplication";
               frmData.submit();
            }
         });
   });

   function formCheck(form) {
      if ($('#checkDuplication').text() == "") {
         alert("이메일 중복확인이 필요합니다.");
         return false;
      } else if ($('#completeAuth').text() == "") {
         alert("이메일 인증이 필요합니다.");
         return false;
      } else
         return true;
   }

   $(function() {
      $('#InputPassword').keyup(function() {
         $('#completePass').text("");
      }); //#user_pass.keyup

      $('#InputPasswordCheck').keyup(function() {
         if ($('#InputPassword').val() != $('#InputPasswordCheck').val()) {
            $('#completePass').text("");
            $('#completePass').text("비밀번호가 일치하지 않습니다");
         } else {
            $('#completePass').text("");
            $('#completePass').text("비밀번호가 일치합니다");
         }
      }); //#chpass.keyup

      $('#confirmEmail_Check').click(function() {
         var check = "${authNum}";
         var confirm = document.getElementById('confirmEmail').value;
         if (!confirm) {
            alert("인증번호를 입력하세요");
            return false;
         }

         if (confirm == check) {
            $('#completeAuth').text("인증완료");
         }

         if (confirm != check) {
            alert("잘못된 인증번호입니다. 다시 입력하세요");
            return false;
         }
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
            <span class="nino-subHeading">Sign Up</span> 회원가입
         </h2>
         <div class="sectionContent col-md-6 col-md-offset-3">
            <form name="joinForm" id="joinForm" method="post" onsubmit="return formCheck();" action="${pageContext.request.contextPath}/SuccessJoin">
               <div class="form-group">
                  <label for="InputEmail">이메일 주소</label> <input type="email"
                     class="form-control" id="InputEmail" name="InputEmail"
                     placeholder="이메일을 입력하세요" required>
               </div>
               <div class="form-group" style="float: right">
                  <button type="button" class="btn btn-default btn-sm"
                     id="confirmEmail_Send">인증번호 받기</button>
                  <!--  <button type="button" class="btn btn-default btn-sm" id="confirmEmail_Check">확인</button> -->
                  <h5 id="completeAuth" style="color: red; text-align: right"></h5>
               </div>
               <div class="form-group" style="float: right; margin-right: 10px">
                  <button type="button" class="btn btn-default btn-sm"
                     id="Duplication">중복 확인</button>
                  <h5 id="checkDuplication" style="color: red; text-align: right"></h5>
               </div>
               <iframe name="HidePop" width=0 height=0 style="display: none;"></iframe>
               <div class="form-group" style="clear: right">
                  <label for="InputPassword">비밀번호</label> <input type="password"
                     class="form-control" id="InputPassword" name="InputPassword"
                     placeholder="비밀번호를 입력하세요" required>
               </div>
               <div class="form-group" style="clear: right">
                  <label for="InputPasswordCheck">비밀번호 확인</label> <input
                     type="password" class="form-control" id="InputPasswordCheck"
                     name="InputPasswordCheck" required>
                  <h5 id="completePass" style="color: gray; text-align: right"></h5>

               </div>
               <div class="form-group">
                  <label for="InputName">이름</label> <input type="text"
                     class="form-control" name="InputName" placeholder="이름을 입력하세요"
                     required>
               </div>
               <div class="form-group">
                  <label for="InputAge">나이</label> <select class="form-control"
                     name="InputAge" id="InputAge" required>
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
                  <input type="radio" name="InputGender" value="M" required>
                  <span>남</span> <input type="radio" name="InputGender" value="F"
                     style="margin-left: 20px"> <span>여</span>
               </div>

               <input type="submit" class="btn btn-default"
                  style="margin-left: 40%" value="회원가입">
            </form>
         </div>
      </div>
   </section>
   <!--Sign Up-->


</body>
</html>