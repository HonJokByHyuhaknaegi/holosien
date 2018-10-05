<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="ninodezign.com, ninodezign@gmail.com">
	<meta name="copyright" content="ninodezign.com"> 
	<title>Mogo | OnePage Responsive Theme</title>
	
	<!-- favicon -->
    <link rel="shortcut icon" href="images/ico/favicon.jpg">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/resources/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath}/resources/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath}/resources/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/resources/images/ico/apple-touch-icon-57-precomposed.png">
	
	<!-- css -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/materialdesignicons.min.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jquery.mCustomScrollbar.min.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/prettyPhoto.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/unslider.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/template.css" />
	
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("div[name=together_img]").each(function(){
	var $div = $(this);
	subImage($div);
});
});

function subImage(div){
	var content = $(div).html();
	var index_s = content.indexOf("<img");
	if(index_s!=-1){
	content = content.substr(content.indexOf("<img"));
	var index_e = content.indexOf('>');
	content = content.substr(0,index_e+1);
	$(div).html(content);
	}
	else{
		$(div).html("<img src='/holosien/resources/images/no_images.png'>");
	}
	$(div).find('img').addClass("img-circle img-thumbnail");
}

function goLogin() {
	location.href="${pageContext.request.contextPath}/myPage";
}
</script>
</head>

<body data-target="#nino-navbar" data-spy="scroll">

	<!-- Header
    ================================================== -->
	<header id="nino-header">
		<div id="nino-headerInner">					
			<nav id="nino-navbar" class="navbar navbar-default" role="navigation">
				<div class="container">

					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nino-navbar-collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="${pageContext.request.contextPath}">Holosien</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="nino-menuItem pull-right">
						<div class="collapse navbar-collapse pull-left" id="nino-navbar-collapse">
							<ul class="nav navbar-nav">
								<li class="active"><a href="#nino-header">Home <span class="sr-only">(current)</span></a></li>
								<li><a href="#nino-portfolio">together</a></li>
								<li><a href="#nino-story">review</a></li>
								<li><a href="#nino-happyClient">tip</a></li>
								<li><a href="#nino-ourTeam">Our Team</a></li>
								<li><a href="#nino-map">map</a></li>
								
								<%-- <a href="${pageContext.request.contextPath}/join">Blog</a> --%>
							</ul>
						</div><!-- /.navbar-collapse -->
						<ul class="nino-iconsGroup nav navbar-nav">
							<li><a href="#" onclick ="goLogin();"><i class="glyphicon glyphicon-user"></i></a></li>
							<li><a href="#" class="nino-search"><i class="mdi mdi-magnify nino-icon"></i></a></li>
						</ul>
					</div>
				</div><!-- /.container-fluid -->
			</nav>

			<section id="nino-slider" class="carousel slide container" data-ride="carousel">
				
				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<h2 class="nino-sectionHeading">
							<span class="nino-subHeading"><br>Welcome <br>to</span>
							holosien
						</h2>
					</div>
					<div class="item">
						<h2 class="nino-sectionHeading">
							<span class="nino-subHeading">do you need a friend?</span>
							동행 <br>구하기
						</h2>
						<a href="${pageContext.request.contextPath}/together" class="nino-btn">More</a>
					</div>
					<div class="item">
						<h2 class="nino-sectionHeading">
							<span class="nino-subHeading">hot place</span>
							코스<br>후기
						</h2>
						<a href="${pageContext.request.contextPath}/review" class="nino-btn">More</a>
					</div>
					<div class="item">
						<h2 class="nino-sectionHeading">
							<span class="nino-subHeading">information</span>
							자취 팁 <br>공유
						</h2>
						<a href="${pageContext.request.contextPath}/tip" class="nino-btn">More</a>
					</div>
				</div>

				<!-- Indicators -->
				<ol class="carousel-indicators clearfix">
					<li data-target="#nino-slider" data-slide-to="0" class="active">
						<div class="inner">
							<span class="number">01</span> intro	
						</div>
					</li>
					<li data-target="#nino-slider" data-slide-to="1">
						<div class="inner">
							<span class="number">02</span> 동행 구하기
						</div>
					</li>
					<li data-target="#nino-slider" data-slide-to="2">
						<div class="inner">
							<span class="number">03</span> 코스 후기
						</div>
					</li>
					<li data-target="#nino-slider" data-slide-to="3">
						<div class="inner">
							<span class="number">04</span> 생활 팁
							</div>
					</li>
				</ol>
			</section>
		</div>
	</header><!--/#header-->

	<!-- 동행구하기
    ================================================== -->
	<section id="nino-portfolio">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">Do you need a friend?</span>
				동행 구하기 
			</h2>
		</div>
		<%-- <div class="sectionContent">
			<ul class="nino-portfolioItems">
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="Development Mobile" href="${pageContext.request.contextPath}/resources/images/our-work/img-1.jpg">
						<img src="images/our-work/img-1.jpg" />
						<div class="overlay">
							<div class="content">
								<i class="mdi mdi-crown nino-icon"></i>
								<h4 class="title">creatively designed</h4>
								<span class="desc">Lorem ipsum dolor sit</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="Development Mobile" href="${pageContext.request.contextPath}/resources/images/our-work/img-2.jpg">
						<img src="images/our-work/img-2.jpg" />
						<div class="overlay">
							<div class="content">
								<i class="mdi mdi-cube-outline nino-icon"></i>
								<h4 class="title">creatively designed</h4>
								<span class="desc">Lorem ipsum dolor sit</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="Development Mobile" href="${pageContext.request.contextPath}/resources/images/our-work/img-3.jpg">
						<img src="images/our-work/img-3.jpg" />
						<div class="overlay">
							<div class="content">
								<i class="mdi mdi-desktop-mac nino-icon"></i>
								<h4 class="title">creatively designed</h4>
								<span class="desc">Lorem ipsum dolor sit</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="Development Mobile" href="${pageContext.request.contextPath}/resources/images/our-work/img-4.jpg">
						<img src="images/our-work/img-4.jpg" />
						<div class="overlay">
							<div class="content">
								<i class="mdi mdi-flower nino-icon"></i>
								<h4 class="title">creatively designed</h4>
								<span class="desc">Lorem ipsum dolor sit</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="Development Mobile" href="${pageContext.request.contextPath}/resources/images/our-work/img-5.jpg">
						<img src="images/our-work/img-5.jpg" />
						<div class="overlay">
							<div class="content">
								<i class="mdi mdi-gamepad-variant nino-icon"></i>
								<h4 class="title">creatively designed</h4>
								<span class="desc">Lorem ipsum dolor sit</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="Development Mobile" href="${pageContext.request.contextPath}/resources/images/our-work/img-6.jpg">
						<img src="images/our-work/img-6.jpg" />
						<div class="overlay">
							<div class="content">
								<i class="mdi mdi-gnome nino-icon"></i>
								<h4 class="title">creatively designed</h4>
								<span class="desc">Lorem ipsum dolor sit</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="Development Mobile" href="${pageContext.request.contextPath}/resources/images/our-work/img-7.jpg">
						<img src="images/our-work/img-7.jpg" />
						<div class="overlay">
							<div class="content">
								<i class="mdi mdi-guitar-electric nino-icon"></i>
								<h4 class="title">creatively designed</h4>
								<span class="desc">Lorem ipsum dolor sit</span>
							</div>
						</div>
					</a>
				</li>
			</ul>
		</div> --%>
	</section><!--/#nino-portfolio-->
	<!-- Testimonial
    ================================================== -->
    <section class="nino-testimonial bg-white">
    	<div class="container">
    		<div class="nino-testimonialSlider">
				<ul>
				<c:forEach var="l" items="${boardlist}" begin="0" end="2" varStatus="status">
					<li>
						<div layout="row" class="verticalCenter" onclick="location.href='${pageContext.request.contextPath}/detailBoard?boardNo=${l.bno}'" style="cursor:pointer" >
							<div class="nino-avatar fsr" name="together_img"> ${l.content}
								<%-- <img class="img-circle img-thumbnail" src="${pageContext.request.contextPath}/resources/images/testimonial/img-1.jpg" alt=""> --%>
							</div>
							<div>
								<p class="quote">${l.subject}</p>
								<span class="name">${l.writer}</span>
							</div>
						</div>
					</li>
				</c:forEach>
				</ul>
			</div>
			</div>
  	<div align="center" >
		<a href="${pageContext.request.contextPath}/together" class="custom-border-btn">More</a>
			
    	</div>  
    </section><!--/#nino-testimonial-->
    

	<!-- Story About Us
    ================================================== -->
	<section id="nino-story">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">Review</span>
				혼자 가기 좋은 코스 후기
			</h2>
			<div class="sectionContent">
			<c:forEach var="m" items="${reviewlist}" begin="0" end="2" varStatus="status">
				<div class="row nino-hoverEffect">
					<div onclick="location.href='${pageContext.request.contextPath}/detailReview?reviewNo=${m.bno}'" class="col-md-4 col-sm-4">
						<div class="item">
							<a class="overlay" href="#">
								<span class="content">
									<i class="mdi mdi-account-multiple nino-icon"></i>
									${m.subject}
								</span>
								<img src="${pageContext.request.contextPath}/resources/editor/upload/${m.photo}" alt="">
							</a>
						</div>
					</div>
					</div>
					</c:forEach>


			</div>
		</div>	
		<div align="center" >
		<br><br>
		<a href="${pageContext.request.contextPath}/review" class="custom-border-btn">More</a>
			
    	</div>	
	</section><!--/#nino-story-->



    <!-- Services
    ================================================== -->
    <section id="nino-happyClient">
    	<div class="container">
    		<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">Tip</span>
				나만의 자취 팁
			</h2>
			<div class="sectionContent">
			<c:forEach var="n" items="${tiplist}" begin="0" end="5" varStatus="status">	
				<div class="fw" layout="row">
					<div class="col-md-4 col-sm-6 item ">
						<div layout="row">
							<i class="mdi mdi-apple-keyboard-command nino-icon fsr"></i>
							<div>
								<h4 class="nino-serviceTitle">${n.subject}</h4>
								<p onclick="location.href='${pageContext.request.contextPath}/detailTip?boardNo=${n.bno}'">more</p>
							</div>
						</div>
					</div>
					   	</div>
					</c:forEach>

				</div>
			</div>
		<div align="center" >
		<a href="${pageContext.request.contextPath}/tip" class="custom-border-btn">More</a>
			
    	</div>
 
    </section><!--/#nino-services-->



    <!-- Our Team
    ================================================== -->
	<section id="nino-ourTeam">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">Who we are</span>
				Meet our team
			</h2>
			<p class="nino-sectionDesc">
			휴학내기			</p>
			<div class="sectionContent">
				<div class="row nino-hoverEffect">
					<div class="col-md-4 col-sm-4">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content">
									<a href="https://www.instagram.com/k__ryoung/?hl=ko" class="nino-icon" target="_blank"><i class="mdi mdi-instagram"></i></a>
								</div>
								<img src="${pageContext.request.contextPath}/resources/images/our-team/kr.jpg" alt="">
							</div>
						</div>
						<div class="info">
							<h4 class="name">kyung ryoung Kim</h4>
							<span class="regency">Developer</span>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content">
									<a href="https://www.instagram.com/sosoexn/?hl=ko" class="nino-icon" target="_blank"><i class="mdi mdi-instagram"></i></a>
								</div>
								<img src="${pageContext.request.contextPath}/resources/images/our-team/se.jpg" alt="">
							</div>
						</div>
						<div class="info">
							<h4 class="name">Soeun Park</h4>
							<span class="regency">Developer</span>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content">
									<a href="https://www.instagram.com/s_6v6_/?hl=ko" class="nino-icon" target="_blank"><i class="mdi mdi-instagram"></i></a>
								</div>
								<img src="${pageContext.request.contextPath}/resources/images/our-team/yk.jpg" alt="">
							</div>
						</div>
						<div class="info">
							<h4 class="name">Yukyung Shin </h4>
							<span class="regency">Developer</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section><!--/#nino-ourTeam-->
		
  
    <!-- Map
    ================================================== -->
    <section id="nino-map">
    	<div class="container">
    		<h2 class="nino-sectionHeading">
    			<i class="mdi mdi-map-marker nino-icon"></i>
    			<span class="text">Open map</span>
    			<span class="text" style="display: none;">Close map</span>
    		</h2>
    		<div class="mapWrap">
<!-- 	    		<iframe src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0465833cd0a7a33e459cd71b363bc38e" width="800" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>
 -->	    	
 <div id="map" style="width:100%;height:450px;"></div>
        	<script type="text/javascript"	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0465833cd0a7a33e459cd71b363bc38e"></script>
	
			<script type="text/javascript">
			
			var lat,lon;
			
			var overlay;
			
            //지도 생성 및 현재 위치 인식
			var container = document.getElementById('map');
			var options = {
				center : new daum.maps.LatLng(37.5673, 127.0057),
				level : 4
			};

			//지도 생성
			var map = new daum.maps.Map(container, options);
			//현재 위치 인식
			
			if(navigator.geolocation){ 
				navigator.geolocation.getCurrentPosition(function(position){
					lat=position.coords.latitude;
					lon=position.coords.longitude;
					console.log(lat);
					console.log(lon);
					var locPosition=new daum.maps.LatLng(lat,lon);
					nowMarker(locPosition); 

				});
			}
			else{
				var locPosition=new daum.maps.LatLng(33.450701, 126.570667),
				message='일시적으로 내 위치를 확인할 수 없습니다.'
				
				displayMarker(locPosition, message);
			}
			
			
			//마커와 인포윈도우 표시하는 함수
			function displayMarker(locPosition, message){
				var marker=new daum.maps.Marker({
					map:map,
					position:locPosition
					
				});
				
				var iwContent=message, //인포윈도우에 표시할 내용
				iwRemoveable=true;
				
				//인포윈도우 생성
				var infowindow=new daum.maps.InfoWindow({
					content:iwContent,
					removeable:iwRemoveable
				});
				
				//인포윈도우를 마커 위에 표시
				infowindow.open(map,marker);
				
				//지도 중심좌표를 해당위치로 변경
				map.setCenter(locPosition);
			}
			
			function nowMarker(locPosition){

				var imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
				   // 마커 이미지의 이미지 크기 입니다
			    var imageSize = new daum.maps.Size(24, 35); 
			    
			    // 마커 이미지를 생성합니다    
			    var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); 
				var markerPosition=locPosition;
				var marker=new daum.maps.Marker({
					map:map,
					position:markerPosition,
					image:markerImage
				});
				
				// 마커가 지도 위에 표시되도록 설정합니다
				marker.setMap(map);
				map.setCenter(locPosition);
			}
			
			
			</script>
 
	    	</div>
	    		    		<div align="center" >
	    		<br>
		<a href="${pageContext.request.contextPath}/map" class="custom-border-btn">More</a>
			
    	</div> 
    	</div>
   
    </section><!--/#nino-map-->
	
    <!-- Footer
    ================================================== -->
    <footer id="footer">
        <div class="container">

			<div class="nino-copyright">Copyright &copy; 2018 김경령 박소은 신유경 All Rights Reserved. <br/> by Redhat Pink Coding Fest</div>
        </div>
    </footer><!--/#footer-->

    <!-- Search Form - Display when click magnify icon in menu
    ================================================== -->
    <form action="${pageContext.request.contextPath}/search" id="nino-searchForm">
    	<input type="text" placeholder="Search..." class="form-control nino-searchInput" name="searchInput">
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