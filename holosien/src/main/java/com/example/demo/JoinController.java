package com.example.demo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JoinController {
	   
	   @RequestMapping(value="/SuccessJoin")
	   public String SuccessJoin(HttpServletRequest request,
	            HttpServletResponse response) throws Exception {
	        System.out.println("---------------------> login!!!!!!!!!!!");
	        System.out.println("---------------------> " + request.getParameter("InputEmail"));
	        System.out.println("---------------------> " + request.getParameter("InputPassword"));
	        System.out.println("---------------------> " + request.getParameter("InputName"));
	        System.out.println("---------------------> " + request.getParameter("InputAge"));
	        System.out.println("---------------------> login!!!!!!!!!!!");
	        
	        return "SuccessJoin";
	    }
}
