<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Holosien - Detail</title>

<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0465833cd0a7a33e459cd71b363bc38e&libraries=services"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#menubar li:nth-child(4)").addClass('active');
});
</script>

</head>
<body>
<div id="header">
<jsp:include page="header.jsp"/>
</div>


<div class="container">
         <h2 class="nino-sectionHeading">
            <span class="nino-subHeading">More.</span>
            자세히보기.
         </h2>
         </div>
 <div style="width:80%; margin:auto; margin-bottom:50px">
 
<div id="detailBoard" style="margin-bottom:50px">
<h2>${board.subject}</h2>
<h6>no. ${board.bno}</h6>
<h6>작성자 : ${board.writer} </h6>
<h6>작성일 : ${board.reg_date}</h6>
<h6>${board.content} </h6>
</div>

<div>
<span style="margin-bottom:50px; font-family: 'Kaushan Script', cursive; font-size: 20px; color:black;">Comment</span><br><br>
<c:import url="/comment">
<c:param name="board" value="Together"/>
<c:param name="boardNo" value="${board.bno}"/>
</c:import>
</div>

</div>
</body>
</html>