<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>HOLOSIEN - TOGETHER</title>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0465833cd0a7a33e459cd71b363bc38e&libraries=services"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	$("#menubar li:nth-child(2)").addClass('active');
	$("#writeTogether").click(function(){
		location.href="${pageContext.request.contextPath}/writeBoard"
	});
$('#togetherAll').click(function(){
	location.href="${pageContext.request.contextPath}/together"
		});
	
$('#friend').click(function(){
	location.href="${pageContext.request.contextPath}/together?category=together"
});
$('#roomMate').click(function(){
	location.href="${pageContext.request.contextPath}/together?category=roommate"
	});
$('#pet').click(function(){
	location.href="${pageContext.request.contextPath}/together?category=pet"
	});
$('#delivery').click(function(){
	location.href="${pageContext.request.contextPath}/together?category=delivery"
	});

</script>
<style>
 .custom-border-btn{padding:5px 20px; background:none; margin-bottom:20px}
 </style>
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
    <button class="together together-bnt" id="pet">
    <span>반려동물</span>
  </button>
    <button class="together together-bnt" id="delivery">
    <span>배달음식</span>
  </button>
  </div>
  
<%--   <!-- BOARD ALL -->
<div id="together-board" style="width:80%; margin:auto"> 
<jsp:include page="${pageContext.request.contextPath}/list" />
</div>  <!-- /BOARD ALL --> --%>

<div id="together-board" style="width:80%; margin:auto"> 

<c:forEach var="l" items="${boardlist}">
<div style="width:100%; margin:auto;" >
<div id="left" style="float:left; padding-left:30px">
<div id="category"><p>${l.category}</p></div>
<div id="title"><h4>${l.subject}</h4></div>
<div id="location"><p>서울 특별시 관악구 신림동</p></div>
</div>
<div id="right"  style="float:right; text-align:right; padding-right:30px">
<p>2명</p>
<p>${l.writer}</p>
<p>${l.reg_date}</p>
<button class="custom-border-btn" onclick="location.href='${pageContext.request.contextPath}/detailBoard?boardNo=${l.bno}'">more</button>
</div>
<hr width=100% align="center">
</div>
</c:forEach>
          
</div>

<div align="center">
<button id="writeTogether" class="custom-border-btn" style="background:none; margin-bottom:20px" ><span>write</span></button>
</div>

         
</body>
</html>