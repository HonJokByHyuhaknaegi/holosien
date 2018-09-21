<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%    
    //제대로 utf-8환경이 아니라 한글 깨짐 그래서 임의로 추가                                                   
    request.setCharacterEncoding("utf-8");
    
    String title = request.getParameter("subject");
    String content = request.getParameter("textAreaContent");
    
    //콘솔 출력
    System.out.println("제목:"+title);
    System.out.println("내용:"+content);    
%>
 <%=title %>
  <%=content %>
</body>
</html>