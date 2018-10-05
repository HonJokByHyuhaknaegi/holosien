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
	$("#menubar li:nth-child(3)").addClass('active');
	
});

function sendComment(){
	if(${sessionScope.userID==null}){
		alert("로그인 후 이용가능합니다.");
		return false;
	}
	else{
		return true;
	}
}
</script>

</head>
<body>
<div id="header">
<jsp:include page="header.jsp"/>
</div>


<div class="container">
         <h2 class="nino-sectionHeading">
            <span class="nino-subHeading">More.</span>
           ${review.subject}
         </h2>
         </div>
 <div style="width:80%; margin:auto; margin-bottom:50px">
 
<div id="detailReview" style="margin-bottom:50px">
<h6>${review.category}</h6>
<h6>작성자 : ${review.writer} </h6>
<h6>작성일 : ${review.reg_date}</h6>
<h6>${review.content} </h6>
<h6 id="centerAddr"></h6>
</div>

<hr width=100% align="center">
<div>
<span style="margin-bottom:50px; font-family: 'Kaushan Script', cursive; font-size: 20px; color:black;">Comment</span><br><br>
<c:import url="/comment">
<c:param name="board" value="Review"/>
<c:param name="boardNo" value="${review.bno}"/>
</c:import>
</div>

</div>
</body>
</html>