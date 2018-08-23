<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
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
        
        function changeView(value){
            
            if(value == "0") // HOME 버튼 클릭시 첫화면으로 이동
            {
                location.href="home";
            }
            else if(value == "1") // 로그인 버튼 클릭시 로그인 화면으로 이동
            {
                location.href="emailJoin";
            }

        }
    </script>
</head>
<body>
<header id="nav-header">
		<div id="nino-headerInner">					
			<nav id="nino-navbar" class="navbar nino-fixed-nav" role="navigation">
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
								<li class="active"><a style="cursor:pointer" onclick="changeView(0)"> Home <span class="sr-only">(current)</span></a></li>
								<li><a href="https://naver.com">together</a></li>
								<li><a href="#nino-services">review</a></li>
								<li><a href="#nino-portfolio">tip</a></li>
								<li><a href="#nino-ourTeam">Our Team</a></li>
								<li><a href="#nino-map">map</a></li>
								
							</ul>
						</div><!-- /.navbar-collapse -->
						<ul class="nino-iconsGroup nav navbar-nav">
							<li><a style="cursor:pointer" onclick="changeView(1)"><i class="glyphicon glyphicon-user"></i></a></li>
							<li><a href="#" class="nino-search"><i class="mdi mdi-magnify nino-icon"></i></a></li>
						</ul>
					</div>
				</div><!-- /.container-fluid -->
			</nav>
			</div>
			</header>
			

</body>
</html>