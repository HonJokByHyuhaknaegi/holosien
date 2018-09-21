<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/map.css" />
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0465833cd0a7a33e459cd71b363bc38e&libraries=services"></script>
<script>

$(function(){ 
	//전역변수선언
	var editor_object = [];
	
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: editor_object,
		elPlaceHolder: "smarteditor",
		sSkinURI: "${pageContext.request.contextPath}/resources/editor/SmartEditor2Skin.html",	
		htParams : {
			// 툴바 사용 여부 (true:사용/ false:사용하지 않음) 
			bUseToolbar : true,	
			// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
			bUseVerticalResizer : true,	
			// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음) 
			bUseModeChanger : true,	
			} 
	});
	
	//전송버튼 클릭이벤트
	$("#savebutton").click(function(){ 
		//id가 smarteditor인 textarea에 에디터에서 대입 
		editor_object.getById["smarteditor"].exec("UPDATE_CONTENTS_FIELD", []); 
		// 이부분에 에디터 validation 검증
		
		//폼 submit
		$("#frm").submit(); 
		});
	$("#searchLocation").click(function(){
		window.open(
				"${pageContext.request.contextPath}/searchLocation",
				"키워드검색",
				"width = 1000, height = 540"
				);
	});

	
		});

</script>
<title>Holosien - Write Board</title>
</head>
<body>

	<div id="header">
		<jsp:include page="header.jsp" />
	</div>

	<div class="container">
		<h2 class="nino-sectionHeading">
			<span class="nino-subHeading">Write.</span> 게시글 작성.
		</h2>
	</div>

	<div id="writeBoard" align="center" style="width:60%; margin: auto;">
		<form id="frm" class="form-horizontal" action="${pageContext.request.contextPath}/send" method="post">
		<div class="form-group">
			 <label for="InputAge">카테고리</label>
			  <select class="form-control" name="category" id="category" style="width:15%; margin:left;"required>
  				<option value=friend>친구찾기</option>
 				<option value=roommate>룸메이트</option>
  				<option value=pet>반려동물</option>
  				<option value=delivery>배달음식</option>
			</select>
			</div>
			<div class="form-group">
				<label for="subject">제목</label> <input type="text"
					class="form-control" id="subject" name="subject" placeholder="제목을 입력하세요.">
			</div>
			<div class="form-group">
				<label for="location">주소</label> 
				<button type="button" class ="btn btn-default btn-sm" id="searchLocation" name="searchLocation">검색하기</button>
				<input type="text"
					class="form-control" id="location_result" name="location_result" placeholder="주소를 입력하세요."> <br>
					
			<div class="form-group">
				<label for="content">내용</label>
				<textarea class="smarteditor" id="smarteditor" name="smarteditor" rows="10" cols="100" style="width:100%; height:412px;"></textarea>
			</div>
			<button type="submit" id="savebutton" class="btn btn-primary">작성</button>
		</form>
	</div>

</body>
</html>