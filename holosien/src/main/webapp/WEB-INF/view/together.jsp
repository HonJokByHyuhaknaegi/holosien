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
	$('#togetherAll').click(function(){
		/*   $('#together-board').text("this is all"); */
		});
	
$('#friend').click(function(){
  /* $('#together-board').text("this is friend"); */
});
$('#roomMate').click(function(){
	  /* $('#together-board').text("this is roomMate"); */
	});
$('#animal').click(function(){
	  /* $('#together-board').text("this is animal"); */
	});
$('#food').click(function(){
	  /* $('#together-board').text("this is food"); */
	});
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
<div id="together-menu" align="center">
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
<div id="together-board">
<jsp:include page="list.jsp" />
</div>  <!-- /BOARD ALL -->

</body>
</html>