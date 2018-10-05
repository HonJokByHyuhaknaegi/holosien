<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/map.css" />
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/editor/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js" charset="utf-8"></script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0465833cd0a7a33e459cd71b363bc38e&libraries=services"></script>
<title>Holosien - Write Board</title>

</head>
<body>
<%-- <!-- Navigation -->
 
<div class="container">
	<!-- Login Form -->
	<div class="row">
  <!-- Blog Entries Column -->
	  <div class="col-md-12 my-order">
		<div class="content-section">
			<form name="w_form" action="<%=request.getContextPath()%>/board?cmd=board_write" method="post">
				<!-- filepath : 이미지업로드 경로 -->
				<input type="hidden" name="filepath" value="/editor/upload/" />
        <input type="hidden" name="id" value="${sessionScope.id}" />
				
				<fieldset class="form-group">
					<legend class="border-bottom mb-4">New Post</legend>
					<div class="form-group">
							<label class="form-control-label">Title</label>
							<input class="form-control form-control-lg" type="text" name="title" autofocus>
					</div>
					<div class="form-group">
							<label class="form-control-label">Content</label>
							<!-- <textarea class="form-control" rows="10" cols="50" style="background-image:url('/Blog/img/background.png');"></textarea> -->
					 		<textarea name="content" id="textAreaContent" style="width: 100%" rows="15"  cols="80"></textarea>
					</div>
					<div class="form-group">	
							<button class="btn btn-outline-info" type="button" onclick="submitContents(this)" >Update</button>
					</div>		
				</fieldset>
			</form>
		</div>
		</div>
  </div>
  <!-- ./row -->
</div> --%>
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
      <input type="hidden" name="filepath" value="/editor/upload/" />
      
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
              
               </div>
          <div class="form-group">
            <label for="number">인원</label> 
            <input type="text" class="form-control" id="number" name="number" placeholder="인원을 입력하세요."> <br>
               </div>
         <div class="form-group">
            <label for="content">내용</label>
            <textarea class="textAreaContent" id="textAreaContent" name="textAreaContent" rows="10" cols="100" style="width:100%; height:412px;"></textarea>
         </div>
         <button type="submit" id="savebutton" class="btn btn-primary">작성</button>
      </form>
   </div>


<!-- ./container -->
<script type="text/javascript">

</script>
<!-- Naver Smart Editor 2 -->
<script>
  var form = document.w_form;
  var oEditors = [];
  nhn.husky.EZCreator.createInIFrame({
      oAppRef: oEditors,
      elPlaceHolder: "textAreaContent",
      sSkinURI: "${pageContext.request.contextPath}/resources/editor/SmartEditor2Skin.html",
      fCreator: "createSEditor2"
  });

  //전송버튼 클릭이벤트
  $("#savebutton").click(function(){ 
     //id가 smarteditor인 textarea에 에디터에서 대입 
     oEditors.getById["textAreaContent"].exec("UPDATE_CONTENTS_FIELD", []); 
     // 이부분에 에디터 validation 검증
     
     //폼 submit
     $("#frm").submit(); 
     });

  // textArea에 이미지 첨부
  function pasteHTML(filepath){
      var sHTML = '<img src="${pageContext.request.contextPath}/resources/editor/upload/'+filepath+'">';
      oEditors.getById["textAreaContent"].exec("PASTE_HTML", [sHTML]);
  }
  //지도검색
  $("#searchLocation").click(function(){
      window.open(
            "${pageContext.request.contextPath}/searchLocation",
            "키워드검색",
            "width = 1000, height = 540"
            );
   });

</script>

</body>
</html>