<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOLOSIEN - REVIEW</title>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
$(document).ready(function() {
	$("#menubar li:nth-child(3)").addClass('active');
	$("#writeReview").click(function(){
		location.href="${pageContext.request.contextPath}/writeReview"
	});
	$('#reviewAll').click(function(){
		location.href="${pageContext.request.contextPath}/review"
			});
		
	$('#local').click(function(){
		location.href="${pageContext.request.contextPath}/review?category=local"
	});
	$('#overseas').click(function(){
		location.href="${pageContext.request.contextPath}/review?category=overseas"
		});
	});

</script>

	</head>

<body>
<div id="header">
            <jsp:include page="header.jsp" />
      </div>
     <div class="container">
         <h2 class="nino-sectionHeading">
            <span class="nino-subHeading">Review.</span>
            혼자 가기 좋은 코스 후기.
         </h2>
         </div>
         <br>
         <div id="together-menu" align="center">
  <button autofocus class="together together-bnt" id="reviewAll">
    <span>전체보기</span>
  </button>
  <button class="together together-bnt" id="local">
    <span>국내</span>
  </button>
    <button class="together together-bnt" id="overseas">
    <span>해외</span>
  </button>

  </div>
  
  
  
  <div class="review">
  <c:forEach var="l" items="${reviewlist}">
  <div class="review_box" onclick="location.href='${pageContext.request.contextPath}/detailReview?reviewNo=${l.bno}'"><img src="${l.photo}"></div>
<!--   <div class="review_box">Two</div>
  <div class="review_box">Three</div>
  <div class="review_box">Four</div>
  <div class="review_box">Five</div>
  <div class="review_box">Six</div> -->
</div>
</c:forEach>

<div align="center">
<button id="writeReview" class="custom-border-btn" style="background:none; margin-bottom:20px" ><span>write</span></button>
</div>

</body>
</html>