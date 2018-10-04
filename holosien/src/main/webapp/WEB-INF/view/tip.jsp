<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
$(document).ready(function() {
	$("#menubar li:nth-child(4)").addClass('active');
	console.log(${hi});
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
  <button autofocus class="together together-bnt" id="togetherAll">
    <span>최신순</span>
  </button>
  <button class="together together-bnt" id="friend">
    <span>인기순</span>
  </button>
  </div>
  
  <div id="search_result" style="width:80%; margin:auto">
      <c:forEach var="l" items="${result.items}">
<div style="width:100%; margin:auto;" >
<h4>${l.title}</h4>
<h6>${l.link}</h6>
<h6>${l.description}</h6>
<h6>${l.bloggername}</h6>
<h6>${l.postdate}</h6>
</div>
</c:forEach>
</div>
      
</body>
</html>