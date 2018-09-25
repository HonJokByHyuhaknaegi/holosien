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
	location.href="${pageContext.request.contextPath}/together?category=friend"
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
	
//주소-좌표 변환 객체를 생성합니다
var geocoder = new daum.maps.services.Geocoder();

$("#location").each(function(){	
	var point = $(this).text().split(',');
	console.log("x = " + point[1]);
	console.log("y = " + point[0]);
	geocoder.coord2Address(point[1], point[0], function(result, status) {
		console.log(result);
		console.log(status);
        if (status === daum.maps.services.Status.OK) {
            var detailAddr = !!result[0].road_address ? '<h6>도로명주소 : ' + result[0].road_address.address_name +'</h6><br>': '';
            detailAddr += '<h6>지번 주소 : ' + result[0].address.address_name+'<h6>';
            console.log("address : " + detailAddr);
        }   
    });
});

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
<div id="category"><h6>${l.category}</h6></div>
<div id="title"><h4>${l.subject}</h4></div>
<div id="location">${l.point_y},${l.point_x}</div>
</div>
<div id="right"  style="float:right; text-align:right; padding-right:30px">
<h6>2명</h6>
<h6>${l.writer}</h6>
<h6>${l.reg_date}</h6>
<button class="custom-border-btn" style="margin-top:10px; padding:5px 20px;"
onclick="location.href='${pageContext.request.contextPath}/detailBoard?boardNo=${l.bno}'">more</button>
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