<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="ninodezign.com, ninodezign@gmail.com">
	<meta name="copyright" content="ninodezign.com"> 
	<title>Sign Up</title>
	
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<% String path=request.getContextPath(); %>
	<script>
	 $(document).ready(function() {
		 $('#confirmEmail_Send').click(function(){
				$("#confirmEmail").removeAttr("disabled");
					location.href="${pageContext.request.contextPath}/emailAuth?email="+$("#InputEmail").val();
			});
		  });
		
	</script>

</head>

<body>
	
<div id="header">
            <jsp:include page="header.jsp" />
        </div>
	
	<!-- Sign Up
	================================================== -->
	<section id="join">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">Sign Up</span>
				회원가입
			</h2>
			<div class="sectionContent col-md-6 col-md-offset-3">
			<form name="joinForm" id="joinForm" method="post" action="${pageContext.request.contextPath}/SuccessJoin">
			<div class="form-group">
			 <label for="InputEmail">이메일 주소</label>
			  <input type="email" class="form-control" name="InputEmail" id="InputEmail" placeholder="이메일을 입력하세요" required>
			</div>
			<div class="form-group" style="clear:right">
			 <label for="confirmEmail">이메일 인증번호</label>
			  <input type="text" class="form-control" name="confirmEmail" id="confirmEmail" placeholder="인증번호을 입력하세요" disabled>
			</div>
			<div class="form-group" style="float:right">
			 <button type="button" class="btn btn-default btn-sm" id="confirmEmail_Send">인증번호 받기</button>
			  <button type="button" class="btn btn-default btn-sm" id="confirmEmail_Check">확인</button>
			</div>
  			<div class="form-group" style="clear:right">
   			 <label for="InputPassword">암호</label>
  			  <input type="password" class="form-control" name="InputPassword" placeholder="암호를 입력하세요" required>
  			</div>
			<div class="form-group">
			 <label for="InputName">이름</label>
			  <input type="text" class="form-control" name="InputName" placeholder="이름을 입력하세요" required>
			</div>
			<div class="form-group">
			 <label for="InputAge">나이</label>
			  <select class="form-control" name="InputAge" required>
  				<option value=10>10대</option>
 				<option value=20>20대</option>
  				<option value=30>30대</option>
  				<option value=40>40대</option>
  				<option value=50>50대</option>
  				<option value=60>60대 이상</option>
			</select>
			</div>
			<button type="submit" class="btn btn-default" style="margin-left:40%">회원가입</button>
			</form>
			</div>
		</div>		
	</section>
	<!--Sign Up-->
	<%-- 
    <!-- Footer
    ================================================== -->
    <footer id="footer">
        <div class="container">
        	<div class="row">
        		<div class="col-md-4">
        			<div class="colInfo">
	        			<div class="footerLogo">
	        				<a href="#" >MoGo</a>	
	        			</div>
	        			<p>
	        				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
	        			</p>
	        			<div class="nino-followUs">
	        				<div class="totalFollow"><span>15k</span> followers</div>
	        				<div class="socialNetwork">
	        					<span class="text">Follow Us: </span>
	        					<a href="" class="nino-icon"><i class="mdi mdi-facebook"></i></a>
	        					<a href="" class="nino-icon"><i class="mdi mdi-twitter"></i></a>
	        					<a href="" class="nino-icon"><i class="mdi mdi-instagram"></i></a>
	        					<a href="" class="nino-icon"><i class="mdi mdi-pinterest"></i></a>
	        					<a href="" class="nino-icon"><i class="mdi mdi-google-plus"></i></a>
	        					<a href="" class="nino-icon"><i class="mdi mdi-youtube-play"></i></a>
	        					<a href="" class="nino-icon"><i class="mdi mdi-dribbble"></i></a>
	        					<a href="" class="nino-icon"><i class="mdi mdi-tumblr"></i></a>
	        				</div>
	        			</div>
	        			<form action="" class="nino-subscribeForm">
	        				<div class="input-group input-group-lg">
								<input type="email" class="form-control" placeholder="Your Email" required>
								<span class="input-group-btn">
									<button class="btn btn-success" type="submit">Subscribe</button>
								</span>
							</div>
	        			</form>
        			</div>
        		</div>
        		<div class="col-md-4 col-sm-6">
        			<div class="colInfo">
	        			<h3 class="nino-colHeading">Blogs</h3>
	        			<ul class="listArticles">
	        				<li layout="row" class="verticalCenter">
	        					<a class="articleThumb fsr" href="#"><img src="${pageContext.request.contextPath}/resources/images/our-blog/img-4.jpg" alt=""></a>
	        					<div class="info">
	        						<h3 class="articleTitle"><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing</a></h3>
	        						<div class="date">Jan 9, 2016</div>
	        					</div>
	        				</li>
	        				<li layout="row" class="verticalCenter">
	        					<a class="articleThumb fsr" href="#"><img src="${pageContext.request.contextPath}/resources/images/our-blog/img-5.jpg" alt=""></a>
	        					<div class="info">
	        						<h3 class="articleTitle"><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing</a></h3>
	        						<div class="date">Jan 9, 2016</div>
	        					</div>
	        				</li>
	        				<li layout="row" class="verticalCenter">
	        					<a class="articleThumb fsr" href="#"><img src="${pageContext.request.contextPath}/resources/images/our-blog/img-6.jpg" alt=""></a>
	        					<div class="info">
	        						<h3 class="articleTitle"><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing</a></h3>
	        						<div class="date">Jan 9, 2016</div>
	        					</div>
	        				</li>
	        			</ul>
        			</div>
        		</div>
        		<div class="col-md-4 col-sm-6">
        			<div class="colInfo">
	        			<h3 class="nino-colHeading">instagram</h3>
	        			<div class="instagramImages clearfix">
	        				<a href="#"><img src="${pageContext.request.contextPath}/resources/images/instagram/img-1.jpg" alt=""></a>
	        				<a href="#"><img src="${pageContext.request.contextPath}/resources/images/instagram/img-2.jpg" alt=""></a>
	        				<a href="#"><img src="${pageContext.request.contextPath}/resources/images/instagram/img-3.jpg" alt=""></a>
	        				<a href="#"><img src="${pageContext.request.contextPath}/resources/images/instagram/img-4.jpg" alt=""></a>
	        				<a href="#"><img src="${pageContext.request.contextPath}/resources/images/instagram/img-5.jpg" alt=""></a>
	        				<a href="#"><img src="${pageContext.request.contextPath}/resources/images/instagram/img-6.jpg" alt=""></a>
	        				<a href="#"><img src="${pageContext.request.contextPath}/resources/images/instagram/img-7.jpg" alt=""></a>
	        				<a href="#"><img src="${pageContext.request.contextPath}/resources/images/instagram/img-8.jpg" alt=""></a>
	        				<a href="#"><img src="${pageContext.request.contextPath}/resources/images/instagram/img-9.jpg" alt=""></a>
	        				<a href="#"><img src="${pageContext.request.contextPath}/resources/images/instagram/img-3.jpg" alt=""></a>
	        				<a href="#"><img src="${pageContext.request.contextPath}/resources/images/instagram/img-4.jpg" alt=""></a>
	        				<a href="#"><img src="${pageContext.request.contextPath}/resources/images/instagram/img-5.jpg" alt=""></a>
	        			</div>
	        			<a href="#" class="morePhoto">View more photos</a>
        			</div>
        		</div>
        	</div>
			<div class="nino-copyright">Copyright &copy; 2016 <a target="_blank" href="http://www.ninodezign.com/" title="Ninodezign.com - Top quality open source resources for web developer and web designer">Ninodezign.com</a>. All Rights Reserved. <br/> MoGo free PSD template by <a href="https://www.behance.net/laaqiq">Laaqiq</a></div>
        </div>
    </footer><!--/#footer-->

    <!-- Search Form - Display when click magnify icon in menu
    ================================================== -->
    <form action="" id="nino-searchForm">
    	<input type="text" placeholder="Search..." class="form-control nino-searchInput">
    	<i class="mdi mdi-close nino-close"></i>
    </form><!--/#nino-searchForm-->
	
    <!-- Scroll to top
    ================================================== -->
	<a href="#" id="nino-scrollToTop">Go to Top</a>
	
	<!-- javascript -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>	
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/isotope.pkgd.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.hoverdir.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/modernizr.custom.97074.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/unslider-min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/template.js"></script>
 --%>
	<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<!-- css3-mediaqueries.js for IE less than 9 -->
	<!--[if lt IE 9]>
	    <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
	<![endif]-->
		
</body>
</html>