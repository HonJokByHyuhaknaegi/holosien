<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Holosien - Tip</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
$(document).ready(function() {
	$("#menubar li:nth-child(4)").addClass('active');
	$("#tip").hide();
	
	$("#external").click(function(){
		$(this).focus();
		$("#tip").hide();
		$("#search_result").show();
	});
	
	$("#internal").click(function(){
		$(this).focus();
		$("#search_result").hide();
		$("#tip").show();
	});
	
	$("#writeTip").click(function(){
		location.href="${pageContext.request.contextPath}/writeTip"
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
            <span class="nino-subHeading">Tip.</span>
            나만의 자취 팁.
         </h2>
         </div>
 <div id="together-menu" align="center">
  <button autofocus class="together together-bnt" id="external">
    <span>블로그</span>
  </button>
  <button class="together together-bnt" id="internal">
    <span>회원이 쓴 글</span>
  </button>
  </div>
  

      
<div id="search_result" style="width:80%; margin:auto">
      <c:forEach var="l" items="${result.items}">
<div style="width:100%; margin:auto; padding:7px 0px 7px" >
<h4 onclick="location.href='${l.link}'" style="cursor:pointer"><a>${l.title}</a></h4>
<h6>${l.description}</h6>
<h6>${l.bloggername}</h6>
<h6>${l.postdate}</h6>
</div>
<hr width=100% align="center">
</c:forEach>
</div>
      


<%--   <div id="search_result" style="width:80%; margin:auto">
      <c:forEach var="l" items="${result.items}">
<div style="width:100%; margin:auto; padding:7px 0px 7px" >
<h4 onclick="location.href='${l.link}'" style="cursor:pointer">${l.title}</h4>
<h6>${l.description}</h6>
<h6>${l.bloggername}</h6>
<h6>${l.postdate}</h6>
</div>
<hr width=100% align="center">
</c:forEach>
</div> --%>

<div id="tip" style="width:80%; margin:auto" style="display:none;">

<c:forEach var="l" items="${tiplist}">
<div style="width:100%; margin:auto;" style="cursor:pointer" >
<div id="left" style="float:left; padding-left:30px">
<div id="title"><h4>${l.subject}</h4></div>
</div>
<div id="right"  style="float:right; text-align:right; padding-right:30px">
<h6>${l.writer}</h6>
<h6>${l.reg_date}</h6>
<button class="custom-border-btn" style="margin:7px 0px 7px; padding:5px 20px;"
onclick="location.href='${pageContext.request.contextPath}/detailTip?boardNo=${l.bno}'">more</button>
</div>
<hr width=100% align="center">
</div>
</c:forEach>

<div align="center">
<button id="writeTip" class="custom-border-btn" style="background:none; margin-bottom:20px" ><span>write</span></button>
</div>

</div>

</body>
</html>