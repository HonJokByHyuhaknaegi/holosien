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
	$('#${category}').focus();
	$("#writeReview").click(function(){
		location.href="${pageContext.request.contextPath}/writeReview"
	});
	$('#all').click(function(){
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
  <button class="together together-bnt" id="all">
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
   <div class="row nino-hoverEffect">
   <div class="img-thumbnail">
      <div onclick="location.href='${pageContext.request.contextPath}/detailReview?reviewNo=${l.bno}'">
						<div class="item">
							<a class="overlay" href="#">
								<span class="content">
									<i class="mdi mdi-account-multiple nino-icon"></i>
									${l.subject}
								</span>
								<img src="${pageContext.request.contextPath}/resources/editor/upload/${l.photo}">
							</a>
						</div>
						</div>

</div>
</div>
</c:forEach>
</div>

<br>
<div align="center">
<button id="writeReview" class="custom-border-btn" style="background:none; margin-bottom:20px" ><span>write</span></button>
</div>

</body>
</html>