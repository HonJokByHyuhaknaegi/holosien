package com.example.demo;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.scribejava.core.model.OAuth2AccessToken;


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
	        
	        return "SuccessJoin";
	    }
		private Logger logger = LoggerFactory.getLogger(JoinController.class);
		@Autowired
		private NotificationService notificationService;

		
		 public String RandomNum(){
		    	StringBuffer buffer = new StringBuffer();
		    	for(int i=0; i<=6; i++){
		    		int n = (int) (Math.random()*10);
		    		buffer.append(n);
		    	}
		    	return buffer.toString();
		    }

	   @RequestMapping(value="/emailAuth", method= {RequestMethod.GET, RequestMethod.POST})
	   public ModelAndView emailAuth(@RequestParam(value = "email")String email) throws Exception {
		   
		   String authNum ="";
		   authNum = RandomNum();
		   
		   System.out.println(email);
		   System.out.println(authNum);
		   
		   EmailForm authEmail = new EmailForm();
		   authEmail.setEmailAddress(email);
		   authEmail.setAuthNum(authNum);
		   
			//send a email
			try {
				notificationService.sendNotification(authEmail);
			}catch(MailException e)
			{
				//catch error
				logger.info("Error Sending Email : "+e.getMessage());
			}

		   //인증번호 메일 발송 
		   //sendSimpleMessage(email.toString(),"holosien id Auth...", authNum);
		   
		   //인증번호 비교위해 다시 회원가입 페이지로 돌아감 
		   ModelAndView mv = new ModelAndView();
		   mv.setViewName("/emailJoin");
		   mv.addObject("email",email);
		   mv.addObject("authNum",authNum);
		   
		   return mv;
	   }
	   
	  /* @Autowired
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
	
	
	    /* NaverLoginBO */
	    private NaverLoginBO naverLoginBO;
	    
	 	private String apiResult = null;
	    
	    @Autowired
	    private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
	        this.naverLoginBO = naverLoginBO;
	    }

	    //로그인 첫 화면 요청 메소드
	    @RequestMapping(value = "/join", method = {RequestMethod.GET, RequestMethod.POST })
	    public String login(Model model, HttpSession session) {
	        
	        /* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
	        String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
	        
	        //https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
	        //redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
	        System.out.println("네이버:" + naverAuthUrl);
	        
	        //네이버 
	        model.addAttribute("naverUrl", naverAuthUrl);

	        /* 생성한 인증 URL을 View로 전달 */
	        return "/join";
	    }

	    //네이버 로그인 성공시 callback호출 메소드
	    @RequestMapping(value = "/callback", method = { RequestMethod.GET, RequestMethod.POST })
	    public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
	            throws IOException {
	        System.out.println("여기는 callback");
	        OAuth2AccessToken oauthToken;
	        oauthToken = naverLoginBO.getAccessToken(session, code, state);
	        //로그인 사용자 정보를 읽어온다.
	        apiResult = naverLoginBO.getUserProfile(oauthToken);
	        System.out.println(naverLoginBO.getUserProfile(oauthToken).toString());
	        model.addAttribute("result", apiResult);
	        System.out.println("result"+apiResult);
	        
	        return "/naverJoin";
	    }
}
