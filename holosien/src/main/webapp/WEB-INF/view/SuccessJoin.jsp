<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
        request.setCharacterEncoding("UTF-8");
 
        String email = request.getParameter("InputEmail");
        String password = request.getParameter("InputPassword");
        String name = request.getParameter("InputName");
     
        out.println("email: " + email + "<br />");
        out.println("password : " + password + "<br />");
        out.println("name : " + name + "<br />");

        //select
        //value값이 있을 경우 value값, 없을 경우 text
        String age = request.getParameter("InputAge");
        out.println("나이 : " + age + "<br />");
%>