<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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

<script type="text/javascript">
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
							<span class="nino-subHeading">Creative Template</span>
							Welcome <br>to MoGo
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
					<li>
						<div layout="row" class="verticalCenter">
							<div class="nino-avatar fsr">
								<img class="img-circle img-thumbnail" src="${pageContext.request.contextPath}/resources/images/testimonial/img-1.jpg" alt="">
							</div>
							<div>
								<p class="quote">"서울 디뮤지엄 전시 같이 보러 가실 분!"</p>
								<span class="name">원가연</span>
							</div>
						</div>
					</li>
					<li>
						<div layout="row" class="verticalCenter">
							<div class="nino-avatar fsr">
								<img class="img-circle img-thumbnail" src="${pageContext.request.contextPath}/resources/images/testimonial/img-2.jpg" alt="">
							</div>
							<div>
								<p class="quote">"지금 혼자 여수 여행중인데 동해하실 분 구합니다"</p>
								<span class="name">박수철</span>
							</div>
						</div>
					</li>
					<li>
						<div layout="row" class="verticalCenter">
							<div class="nino-avatar fsr">
								<img class="img-circle img-thumbnail" src="${pageContext.request.contextPath}/resources/images/testimonial/img-3.jpg" alt="">
							</div>
							<div>
								<p class="quote">"충무로 근처 자취방 룸메 구해요"</p>
								<span class="name">김경석</span>
							</div>
						</div>
					</li>
				</ul>
			</div>
			</div>
  	<div align="center" >
		<a href="${pageContext.request.contextPath}/together" class="custom-border-btn">More</a>
			
    	</div>  
    </section><!--/#nino-testimonial-->
    
	<!-- Brand
    ================================================== -->
    <section id="nino-brand">
    	<div class="container">
    		<div class="verticalCenter fw" layout="row">
    			<div class="col-md-2 col-sm-4 col-xs-6"><a href="#"><img src="images/brand/img-1.png" alt=""></a></div>
    			<div class="col-md-2 col-sm-4 col-xs-6"><a href="#"><img src="images/brand/img-2.png" alt=""></a></div>
    			<div class="col-md-2 col-sm-4 col-xs-6"><a href="#"><img src="images/brand/img-3.png" alt=""></a></div>
    			<div class="col-md-2 col-sm-4 col-xs-6"><a href="#"><img src="images/brand/img-4.png" alt=""></a></div>
    			<div class="col-md-2 col-sm-4 col-xs-6"><a href="#"><img src="images/brand/img-5.png" alt=""></a></div>
    			<div class="col-md-2 col-sm-4 col-xs-6"><a href="#"><img src="images/brand/img-6.png" alt=""></a></div>
    		</div>
    	</div>
    </section><!--/#nino-brand-->
	<!-- Story About Us
    ================================================== -->
	<section id="nino-story">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">Review</span>
				혼자 가기 좋은 코스 후기
			</h2>
			<div class="sectionContent">
				<div class="row nino-hoverEffect">
					<div class="col-md-4 col-sm-4">
						<div class="item">
							<a class="overlay" href="#">
								<span class="content">
									<i class="mdi mdi-account-multiple nino-icon"></i>
									super team
								</span>
								<img src="${pageContext.request.contextPath}/resources/images/story/img-1.jpg" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="item">
							<a class="overlay" href="#">
								<span class="content">
									<i class="mdi mdi-image-filter-center-focus-weak nino-icon"></i>
									Creativity
								</span>
								<img src="${pageContext.request.contextPath}/resources/images/story/img-2.jpg" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="item">
							<a class="overlay" href="#">
								<span class="content">
									<i class="mdi mdi-airplay nino-icon"></i>
									Digital
								</span>
								<img src="${pageContext.request.contextPath}/resources/images/story/img-3.jpg" alt="">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>	
		<div align="center" >
		<br><br>
		<a href="${pageContext.request.contextPath}/review" class="custom-border-btn">More</a>
			
    	</div>	
	</section><!--/#nino-story-->

	<!-- Counting
    ================================================== -->
    <section id="nino-counting">
    	<div class="container">
    		<div layout="row" class="verticalStretch">
    			<div class="item">
    				<div class="number">42</div>
    				<div class="text">Web Design Projects</div>
    			</div>
    			<div class="item">
    				<div class="number">123</div>
    				<div class="text">happy client</div>
    			</div>
    			<div class="item">
    				<div class="number">15</div>
    				<div class="text">award winner</div>
    			</div>
    			<div class="item">
    				<div class="number">99</div>
    				<div class="text">cup of coffee</div>
    			</div>
    			<div class="item">
    				<div class="number">24</div>
    				<div class="text">members</div>
    			</div>
    		</div>
    	</div>
    </section><!--/#nino-counting-->

    <!-- Services
    ================================================== -->
    <section id="nino-services">
    	<div class="container">
    		<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">We work with</span>
				Amazing Services
			</h2>
			<div class="sectionContent">			
				<div class="fw" layout="row">
					<div class="col-md-4 col-sm-6 item ">
						<div layout="row">
							<i class="mdi mdi-apple-keyboard-command nino-icon fsr"></i>
							<div>
								<h4 class="nino-serviceTitle">Photography</h4>
								<p>Photography is the science, art and practice of creating durable images by recording light or other electromagnetic radiation</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 item ">
						<div layout="row">
							<i class="mdi mdi-blender nino-icon fsr"></i>
							<div>
								<h4 class="nino-serviceTitle">Web Design</h4>
								<p>Web design encompasses many different skills and disciplines in the production and maintenance of websites.</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 item ">
						<div layout="row">
							<i class="mdi mdi-bookmark-plus-outline nino-icon fsr"></i>
							<div>
								<h4 class="nino-serviceTitle">Creativity</h4>
								<p>Creativity is a phenomenon whereby something new and somehow valuable is formed. The created item may be intangible or a physical object.</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 item ">
						<div layout="row">
							<i class="mdi mdi-buffer nino-icon fsr"></i>
							<div>
								<h4 class="nino-serviceTitle">seo</h4>
								<p>Search engine optimization (SEO) is the process of affecting the visibility of a website or a web page in a web search engine's unpaid results.</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 item ">
						<div layout="row">
							<i class="mdi mdi-desktop-mac nino-icon fsr"></i>
							<div>
								<h4 class="nino-serviceTitle">Css/Html</h4>
								<p>HyperText Markup Language, commonly abbreviated as HTML, is the standard markup language used to create web pages. </p>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 item ">
						<div layout="row">
							<i class="mdi mdi-diamond nino-icon fsr"></i>
							<div>
								<h4 class="nino-serviceTitle">digital</h4>
								<p>With digital signals, system noise, provided it is not too great, will not change the quantification whereas with signals handled using analog processing.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
    	</div>
    </section><!--/#nino-services-->

    <!-- Unique Design
    ================================================== -->
    <section id="nino-uniqueDesign">
    	<div class="container">
    		<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">For all devices</span>
				Unique design
			</h2>
			<div class="sectionContent">
				<div class="nino-devices">
					<img class="tablet" src="${pageContext.request.contextPath}/resources/images/unique-design/img-1.png" alt="">
					<img class="mobile" src="${pageContext.request.contextPath}/resources/images/unique-design/img-2.png" alt="">
				</div>
			</div>
    	</div>
    </section><!--/#nino-uniqueDesign-->

    <!-- What We Do
    ================================================== -->
    <section id="nino-whatWeDo">
    	<div class="container">
    		<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">Service</span>
				what we do
			</h2>
			<p class="nino-sectionDesc">
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
			</p>
			<div class="sectionContent">
				<div class="row">
					<div class="col-md-6">
						<div class="text-center">
							<img src="${pageContext.request.contextPath}/resources/images/what-we-do/img-1.jpg" alt="">
						</div>
					</div>
					<div class="col-md-6">
						<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingOne">
									<h4 class="panel-title">
										<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
											<i class="mdi mdi-chevron-up nino-icon arrow"></i>
											<i class="mdi mdi-camera nino-icon"></i> 
											Photography
										</a>
									</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
									<div class="panel-body">
										Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingTwo">
									<h4 class="panel-title">
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
											<i class="mdi mdi-chevron-up nino-icon arrow"></i>
											<i class="mdi mdi-owl nino-icon"></i> 
											creativity
										</a>
									</h4>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
									<div class="panel-body">
										Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingThree">
									<h4 class="panel-title">
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
											<i class="mdi mdi-chevron-up nino-icon arrow"></i>
											<i class="mdi mdi-laptop-mac nino-icon"></i> 
											web design
										</a>
									</h4>
								</div>
								<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
									<div class="panel-body">
										Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
    	</div>
    </section><!--/#nino-whatWeDo-->

    <!-- Testimonial
    ================================================== -->
    <section class="nino-testimonial">
    	<div class="container">
    		<div class="nino-testimonialSlider">
				<ul>
					<li>
						<div layout="row">
							<div class="nino-symbol fsr">
								<i class="mdi mdi-comment-multiple-outline nino-icon"></i>
							</div>
							<div>
								<p class="quote">"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation."</p>
								<span class="name">Jon Doe</span>
							</div>
						</div>
					</li>
					<li>
						<div layout="row">
							<div class="nino-symbol fsr">
								<i class="mdi mdi-wechat nino-icon"></i>	
							</div>
							<div>
								<p class="quote">"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation."</p>
								<span class="name">Jon Doe</span>
							</div>
						</div>
					</li>
					<li>
						<div layout="row">
							<div class="nino-symbol fsr">
								<i class="mdi mdi-message-text-outline nino-icon"></i>
							</div>
							<div>
								<p class="quote">"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation."</p>
								<span class="name">Jon Doe</span>
							</div>
						</div>
					</li>
				</ul>
			</div>
    	</div>
    </section><!--/#nino-testimonial-->

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
								<img src="${pageContext.request.contextPath}/resources/images/our-team/img-1.jpg" alt="">
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
								<img src="${pageContext.request.contextPath}/resources/images/our-team/img-2.jpg" alt="">
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
								<img src="${pageContext.request.contextPath}/resources/images/our-team/img-3.jpg" alt="">
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
		
    <!-- Happy Client
    ================================================== -->
    <section id="nino-happyClient">
    	<div class="container">
    		<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">Tip</span>
				나만의 자취 팁
			</h2>
			<div class="sectionContent">
				<div class="row">
					<div class="col-md-6">
						<div layout="row" class="item">
							<div class="nino-avatar fsr">
								<img class="img-circle" src="${pageContext.request.contextPath}/resources/images/happy-client/img-1.jpg" alt="">
							</div>
							<div class="info">
								<h4 class="name">Matthew Dix</h4>
								<span class="regency">Graphic Design</span>
								<p class="desc">
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo illo cupiditate temporibus sapiente, sint, voluptatibus tempora esse. Consectetur voluptate nihil quo nulla voluptatem dolorem harum nostrum
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div layout="row" class="item">
							<div class="nino-avatar fsr">
								<img class="img-circle" src="${pageContext.request.contextPath}/resources/images/happy-client/img-2.jpg" alt="">
							</div>
							<div class="info">
								<h4 class="name">Nick Karvounis</h4>
								<span class="regency">Graphic Design</span>
								<p class="desc">
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo illo cupiditate temporibus sapiente, sint, voluptatibus tempora esse. Consectetur voluptate nihil quo nulla voluptatem dolorem harum nostrum
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div layout="row" class="item">
							<div class="nino-avatar fsr">
								<img class="img-circle" src="${pageContext.request.contextPath}/resources/images/happy-client/img-3.jpg" alt="">
							</div>
							<div class="info">
								<h4 class="name">Jaelynn Castillo</h4>
								<span class="regency">Graphic Design</span>
								<p class="desc">
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo illo cupiditate temporibus sapiente, sint, voluptatibus tempora esse. Consectetur voluptate nihil quo nulla voluptatem dolorem harum nostrum
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div layout="row" class="item">
							<div class="nino-avatar fsr">
								<img class="img-circle" src="${pageContext.request.contextPath}/resources/images/happy-client/img-4.jpg" alt="">
							</div>
							<div class="info">
								<h4 class="name">Mike Petrucci</h4>
								<span class="regency">Graphic Design</span>
								<p class="desc">
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo illo cupiditate temporibus sapiente, sint, voluptatibus tempora esse. Consectetur voluptate nihil quo nulla voluptatem dolorem harum nostrum
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div align="center" >
		<a href="${pageContext.request.contextPath}/tip" class="custom-border-btn">More</a>
			
    	</div>
    	</div>
    </section><!--/#nino-happyClient-->

    <!-- Latest Blog
    ================================================== -->
    <section id="nino-latestBlog">
    	<div class="container">
    		<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">Our stories</span>
				Latest Blog
			</h2>
			<div class="sectionContent">
				<div class="row">
					<div class="col-md-4 col-sm-4">
						<article>
							<div class="articleThumb">
								<a href="#"><img src="${pageContext.request.contextPath}/resources/images/our-blog/img-1.jpg" alt=""></a>
								<div class="date">
									<span class="number">15</span>
									<span class="text">Jan</span>
								</div>
							</div>
							<h3 class="articleTitle"><a href="">Lorem ipsum dolor sit amet</a></h3>
							<p class="articleDesc">
								Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
							</p>
							<div class="articleMeta">
								<a href="#"><i class="mdi mdi-eye nino-icon"></i> 543</a>
								<a href="#"><i class="mdi mdi-comment-multiple-outline nino-icon"></i> 15</a>
							</div>
						</article>
					</div>
					<div class="col-md-4 col-sm-4">
						<article>
							<div class="articleThumb">
								<a href="#"><img src="${pageContext.request.contextPath}/resources/images/our-blog/img-2.jpg" alt=""></a>
								<div class="date">
									<span class="number">14</span>
									<span class="text">Jan</span>
								</div>
							</div>
							<h3 class="articleTitle"><a href="">sed do eiusmod tempor</a></h3>
							<p class="articleDesc">
								Adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
							</p>
							<div class="articleMeta">
								<a href="#"><i class="mdi mdi-eye nino-icon"></i> 995</a>
								<a href="#"><i class="mdi mdi-comment-multiple-outline nino-icon"></i> 42</a>
							</div>
						</article>
					</div>
					<div class="col-md-4 col-sm-4">
						<article>
							<div class="articleThumb">
								<a href="#"><img src="${pageContext.request.contextPath}/resources/images/our-blog/img-3.jpg" alt=""></a>
								<div class="date">
									<span class="number">12</span>
									<span class="text">Jan</span>
								</div>
							</div>
							<h3 class="articleTitle"><a href="">incididunt ut labore et dolore</a></h3>
							<p class="articleDesc">
								Elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
							</p>
							<div class="articleMeta">
								<a href="#"><i class="mdi mdi-eye nino-icon"></i> 1264</a>
								<a href="#"><i class="mdi mdi-comment-multiple-outline nino-icon"></i> 69</a>
							</div>
						</article>
					</div>
				</div>
			</div>
    	</div>
    </section><!--/#nino-latestBlog-->

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
 <div id="map" style="width:100%;height:300px;"></div>
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
	    		<div align="center" >
	    		<br>
		<a href="${pageContext.request.contextPath}/map" class="custom-border-btn">More</a>
			
    	</div>  
	    	</div>
	    	
    	</div>
   
    </section><!--/#nino-map-->
	
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