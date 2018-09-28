<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function sendComment(){
	if(${sessionScope.userID==null}){
		alert("로그인 후 이용가능합니다.");
		return false;
	}
	else{
		return true;
	}
}

function deleteComment(cno){
	location.href="${pageContext.request.contextPath}/deleteComment?boardNo=${param.boardNo}&CommentNo="+cno;
}
</script>
</head>
<body>
<div>
<c:forEach var="l" items="${Commentlist}">
<div style="width:100%; margin:auto;">
<h6 style="font-weight: bold; display:inline">${l.writer} &nbsp;</h6>
<h6 style="display:inline">${l.age}대 
<c:choose>
    <c:when test="${l.gender eq 'F'}"> 여 </c:when>
    <c:otherwise> 남 </c:otherwise>
</c:choose>
</h6>
<div style="float:right; text-align:right;">
<c:if test="${l.writerID == sessionScope.userID}">
<img src="${pageContext.request.contextPath}/resources/images/close.png" onclick="deleteComment(${l.cno})" width="10px" style="cursor:pointer">
</c:if>
</div> <br><br>

<h6>${l.comment}</h6>

<h6 style="float:right">${l.date}</h6>

<hr width=100% align="center">
</div>
</c:forEach>

<form name="Comment" id="Comment" method="post" onsubmit="return sendComment();" action="writeComment?boardNo=${param.boardNo}">
<textarea id="Comment_content" name="Comment_content" class="form-control" rows="3" style="resize: none;"></textarea>
<input type="submit" class="custom-border-btn" style="margin-top:10px; padding:5px 20px; float:right; border:none;" value="Write">
</form>
</div>
</body>
</html>