<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
$(document).ready(function() {
	$("#menubar li:nth-child(4)").addClass('active');
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
</body>
</html>