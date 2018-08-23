package com.example.demo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
	   
	   @RequestMapping("/emailAuth")
	   public ModelAndView emailAuth(@RequestParam String email,HttpServletResponse response, HttpServletRequest request) throws Exception {
		   /*String email = request.getParameter("InputEmail");*/
		   String authNum ="";
		   
		   authNum = RandomNum();
		   
		   System.out.println(email);
		   System.out.println(authNum);
		   
		   sendSimpleMessage(email.toString(),"holosien id Auth...", authNum);
		   
		   ModelAndView mv = new ModelAndView();
		   mv.setViewName("/emailJoin");
		   mv.addObject("email",email);
		   mv.addObject("authNum",authNum);
		   
		   return mv;
	   }
	   
	   @Autowired
	    public JavaMailSender emailSender;
	 
	    public void sendSimpleMessage(
	      String to, String subject, String text) {
	        
	        SimpleMailMessage message = new SimpleMailMessage();
	        message.setFrom("kryeeong@gmail.com");
	        message.setTo(to); 
	        message.setSubject(subject); 
	        message.setText(text);
	        System.out.println(message);
	        emailSender.send(message);
	    }
	    
	    public String RandomNum(){
	    	StringBuffer buffer = new StringBuffer();
	    	for(int i=0; i<=6; i++){
	    		int n = (int) (Math.random()*10);
	    		buffer.append(n);
	    	}
	    	return buffer.toString();
	    }
}
