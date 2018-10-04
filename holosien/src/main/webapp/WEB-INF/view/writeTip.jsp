<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/editor/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js" charset="utf-8"></script>

<title>Holosien - Write Tip</title>

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
      <form id="frm" class="form-horizontal" action="${pageContext.request.contextPath}/sendTip" method="post" enctype="multipart/form-data">
      <input type="hidden" name="filepath" value="/editor/upload/" />
  
         <div class="form-group">
            <label for="subject">제목</label> <input type="text"
               class="form-control" id="subject" name="subject" placeholder="제목을 입력하세요.">
         </div>

         <div class="form-group">
            <label for="content">내용</label>
            <textarea class="textAreaContent" id="textAreaContent" name="textAreaContent" rows="10" cols="100" style="width:100%; height:412px;"></textarea>
         </div>
         <button type="submit" id="savebutton" class="btn btn-primary">작성</button>
      </form>
   </div>

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
   
 /*  // submit
  function submitContents(elClickedObj) {
      // 에디터의 내용이 textarea에 적용된다.
      oEditors.getById["textAreaContent"].exec("UPDATE_CONTENTS_FIELD", [ ]);
      var con = document.w_form.content;
      con.value = document.getElementById("textAreaContent").value;
      
      try {
          elClickedObj.form.submit();
      } catch(e) {
       
      }
  } */
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

</script>

</body>
</html>