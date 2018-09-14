<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>HOLOSIEN - TOGETHER</title>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#menubar li:nth-child(2)").addClass('active');
	$("#writeTogether").click(function(){
		location.href="${pageContext.request.contextPath}/board/writeBoard"
	});
/* 	$('#togetherAll').click(function(){
		   $('#together-board').text("this is all"); 
		});
	
$('#friend').click(function(){
  /* $('#together-board').text("this is friend"); 
});
$('#roomMate').click(function(){
	  /* $('#together-board').text("this is roomMate"); 
	});
$('#animal').click(function(){
	  /* $('#together-board').text("this is animal"); 
	});
$('#food').click(function(){
	  /* $('#together-board').text("this is food"); 
	}); */
});
</script>

</head>
<body>
<div id="header">
<jsp:include page="header.jsp"/>
</div>


<div class="container">
         <h2 class="nino-sectionHeading">
            <span class="nino-subHeading">Together.</span>
            동행 구하기.
         </h2>
         </div>

<div id="together-menu" align="center" style="margin-bottom:50px">
  <button autofocus class="together together-bnt" id="togetherAll">
    <span>전체보기</span>
  </button>
  <button class="together together-bnt" id="friend">
    <span>친구찾기</span>
  </button>
    <button class="together together-bnt" id="roomMate">
    <span>룸메이트</span>
  </button>
    <button class="together together-bnt" id="animal">
    <span>반려동물</span>
  </button>
    <button class="together together-bnt" id="food">
    <span>배달음식</span>
  </button>
  </div>
  
  <!-- BOARD ALL -->
<div id="together-board" style="width:80%; margin:auto"> 
<jsp:include page="list.jsp" />
</div>  <!-- /BOARD ALL -->

<div align="center">
<button id="writeTogether" class="custom-border-btn" style="background:none; margin-bottom:20px" ><span>write</span></button>
</div>

         
</body>
</html>