<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <title>게시판</title>
 <style>
 .custom-border-btn{padding:5px 20px; background:none; margin-bottom:20px}
 </style>
 </head>
 <body>
 hi
${boardlist}
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
<button class="custom-border-btn">more</button>
</div>
<hr width=100% align="center">
</div>
          </c:forEach>

<!-- <div style="width:100%; margin:auto;" >
<div id="left" style="float:left; padding-left:30px">
<div id="category"><p>[친구찾기]</p></div>
<div id="title"><h4>10월 10-15 런던!!</h4></div>
<div id="location"><p>서울 특별시 관악구 신림동</p></div>
</div>
<div id="right"  style="float:right; text-align:right; padding-right:30px">
<p>2명</p>
<p>신유림</p>
<p>2018-08-29</p>
<button class="custom-border-btn">more</button>
</div>
<hr width=100% align="center">
</div>

<div style="width:100%; margin:auto;" >
<div id="left" style="float:left; padding-left:30px">
<div id="category"><p>[친구찾기]</p></div>
<div id="title"><h4>1시에 밥 같이 먹으실 분~</h4></div>
<div id="location"><p>서울 특별시 강남구 신사동</p></div>
</div>
<div id="right"  style="float:right; text-align:right; padding-right:30px">
<p>3명</p>
<p>박소현</p>
<p>2018-08-29</p>
<button class="custom-border-btn">more</button>
</div>
<hr width=100% align="center">
</div>

<div style="width:100%; margin:auto;" >
<div id="left" style="float:left; padding-left:30px">
<div id="category"><p>[룸메이트]</p></div>
<div id="title"><h4>충무로 룸메이트 여자</h4></div>
<div id="location"><p>서울 특별시 중구 필동</p></div>
</div>
<div id="right"  style="float:right; text-align:right; padding-right:30px">
<p>1명</p>
<p>김경민</p>
<p>2018-08-29</p>
<button class="custom-border-btn">more</button>
</div>
<hr width=100% align="center">
</div> -->



</body> 

</html> --%>