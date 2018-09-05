<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
        request.setCharacterEncoding("UTF-8");
 
        String email = request.getParameter("InputEmail");
        String password = request.getParameter("InputPassword");
        String name = request.getParameter("InputName");
        String age = request.getParameter("InputAge");
        String gender = request.getParameter("InputGender");
     
        out.println("email: " + email + "<br />");
        out.println("password : " + password + "<br />");
        out.println("name : " + name + "<br />");
        out.println("나이 : " + age + "<br />");
        out.println("성별 : " + gender + "<br />");
%>