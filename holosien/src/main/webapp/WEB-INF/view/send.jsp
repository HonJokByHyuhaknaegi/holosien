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
    //����� utf-8ȯ���� �ƴ϶� �ѱ� ���� �׷��� ���Ƿ� �߰�                                                   
    request.setCharacterEncoding("utf-8");
    
    String title = request.getParameter("subject");
    String content = request.getParameter("textAreaContent");
    
    //�ܼ� ���
    System.out.println("����:"+title);
    System.out.println("����:"+content);    
%>
 <%=title %>
  <%=content %>
</body>
</html>