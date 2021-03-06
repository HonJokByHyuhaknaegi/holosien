package com.example.demo;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.member.domain.MemberVO;
import com.example.demo.member.service.MemberService;
import com.github.scribejava.core.model.OAuth2AccessToken;

@Controller
public class JoinController {
	 @Resource(name="com.example.demo.member.service.MemberService")
	 MemberService mMemberService;
	 
	  @RequestMapping(value="/SuccessJoin")
	   public String SuccessJoin(HttpServletRequest request,
	            HttpServletResponse response) throws Exception {
		   
	        System.out.println("---------------------> login!!!!!!!!!!!");
	        System.out.println("---------------------> " + request.getParameter("InputEmail"));
	        System.out.println("---------------------> " + request.getParameter("InputPassword"));
	        System.out.println("---------------------> " + request.getParameter("InputName"));
	        System.out.println("---------------------> " + request.getParameter("InputAge"));
	        
	        MemberVO member = new MemberVO();
	        
	        member.setEmail(request.getParameter("InputEmail"));
	        member.setPassword(request.getParameter("InputPassword"));
	        member.setName(request.getParameter("InputName"));
	        member.setGender(request.getParameter("InputGender"));
	        member.setAge(Integer.parseInt(request.getParameter("InputAge")));
	        member.setManner(0);

	        mMemberService.memberInsertService(member);
	        return "login";
	    }
		private Logger logger = LoggerFactory.getLogger(JoinController.class);
		@Autowired
		private EmailService emailService;

		
		 public String RandomNum(){
		    	StringBuffer buffer = new StringBuffer();
		    	for(int i=0; i<=6; i++){
		    		int n = (int) (Math.random()*10);
		    		buffer.append(n);
		    	}
		    	return buffer.toString();
		    }

	   @RequestMapping(value="/emailAuth", method= {RequestMethod.GET, RequestMethod.POST})
	   public ModelAndView emailAuth(@RequestParam(value = "InputEmail")String email) throws Exception {
		   
		   String authNum ="";
		   authNum = RandomNum();
		   
		   System.out.println(email);
		   System.out.println(authNum);
		   
		   EmailForm authEmail = new EmailForm();
		   authEmail.setEmailAddress(email);
		   authEmail.setAuthNum(authNum);
		   
			//send a email
			try {
				emailService.sendNotification(authEmail);
			}catch(MailException e)
			{
				//catch error
				logger.info("Error Sending Email : "+e.getMessage());
			}

		   //인증번호 메일 발송 
		   //sendSimpleMessage(email.toString(),"holosien id Auth...", authNum);
		   
		   //인증번호 비교위해 다시 회원가입 페이지로 돌아감 
		   ModelAndView mv = new ModelAndView();
		   mv.setViewName("/emailPop");
		   mv.addObject("email",email);
		   mv.addObject("authNum",authNum);
		   
		   return mv;
	   }
	   
	   @RequestMapping(value="/emailPop")
	   public String emailPop() {
	      System.out.println("이메일 인증 팝업");
	         return "emailPop";
	      }

	
	    /* NaverLoginBO */
	    private NaverLoginBO naverLoginBO;
	    
	 	private String apiResult = null;
	 	
	 	private JsonStringParse jsonparse = new JsonStringParse();
	    
	    @Autowired
	    private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
	        this.naverLoginBO = naverLoginBO;
	    }
	 
	    //로그인 첫 화면 요청 메소드
	    @RequestMapping(value="/naver")
	    public String naverJoin(HttpSession session) {
	        
	        /* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
	        String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
	        
	        //https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
	        //redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
	        System.out.println("네이버:" + naverAuthUrl);
	        
	        return "redirect:"+naverAuthUrl;
	    }

	    //네이버 로그인 성공시 callback호출 메소드
	    @RequestMapping(value = "/callback", method = { RequestMethod.GET, RequestMethod.POST })
	    public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session,
	    		HttpServletResponse response)
	            throws Exception {
	        System.out.println("여기는 callback");
	        OAuth2AccessToken oauthToken;
	        oauthToken = naverLoginBO.getAccessToken(session, code, state);
	        //로그인 사용자 정보를 읽어온다.
	        apiResult = naverLoginBO.getUserProfile(oauthToken);
	        System.out.println(naverLoginBO.getUserProfile(oauthToken).toString());
	        
	        JSONObject jsonobj = jsonparse.stringToJson(apiResult, "response");
			String email = jsonparse.JsonToString(jsonobj, "email");
			
			System.out.println("email : "+email);
	        MemberVO vo = new MemberVO();
	        vo.setEmail(email);
	        
	       boolean result = mMemberService.memberCheck(vo);
	 	   
	 	   if(result==true){
	 		   	response.setContentType("text/html; charset=UTF-8"); 
	             PrintWriter out = response.getWriter();  
	             out.println("<script>alert('이미 가입된 계정입니다.'); </script>");
	            out.flush();
	            naverLoginBO.naverLogout(oauthToken);
	 		   return "join";
	 	   }else{
	 		  model.addAttribute("result", apiResult);
	 		 return "naverJoin";
	 	   }
	    }
	    
	    @RequestMapping(value = "/checkDuplication", method = { RequestMethod.GET, RequestMethod.POST })
	    public ModelAndView checkDuplication(@RequestParam(value = "InputEmail")String email)
	            throws Exception {
	        
	        MemberVO vo = new MemberVO();
	        vo.setEmail(email);
	        
	       boolean result = mMemberService.memberCheck(vo);
	       
	       ModelAndView mv = new ModelAndView();
	 	   
	       if(result==true){ // 중복
			   mv.setViewName("/checkDupl");
			   mv.addObject("result",true);	        
	 	   }else{ // 중복 없을 때
	 		  mv.setViewName("/checkDupl");
	 		 mv.addObject("result",false);	 
	 	   }
	 	   return mv;
	    }
	    
	    /*kakao 사용자정보 */
	    @SuppressWarnings("unchecked")
		@RequestMapping(value="/kakaoJoin",method=RequestMethod.POST)
	    @ResponseBody
	    public Map<String,Object> kakaotest( Model model, @RequestBody Map<String,Object>params) {
	    	Map<String,Object> properties = new HashMap<>();
	    	Map<String,Object> kakao_account = new HashMap<>();

	    	properties = (Map<String, Object>) params.get("properties");
	    	kakao_account = (Map<String, Object>) params.get("kakao_account");
	    	ModelAndView mv = new ModelAndView();
	    	mv.setViewName("/kakaoJoin");
	    	mv.addObject("name", properties.get("nickname"));
	    	mv.addObject("email",kakao_account.get("email"));
	    	mv.addObject("age",kakao_account.get("age_range"));
	    	mv.addObject("gender",kakao_account.get("gender"));
	    	
	    	model.addAttribute("name", properties.get("nickname"));
	    	model.addAttribute("email",kakao_account.get("email"));
	    	model.addAttribute("age",kakao_account.get("age_range"));
	    	model.addAttribute("gender",kakao_account.get("gender"));
	    	System.out.println(properties);	
	        return properties;
	    }
}
