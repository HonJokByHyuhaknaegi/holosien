package com.example.demo;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.board.mapper.BoardMapper;
import com.example.demo.member.domain.MemberVO;
import com.example.demo.member.service.MemberService;

@Controller
public class HomeController {

   @RequestMapping(value="/")
   public String home() {
      System.out.println("********");
         return "home";
      }
   
   @RequestMapping(value="/join")
   public String join() {
      System.out.println("*join 가자*****");
         return "join";
      }
   
   @RequestMapping(value="/myPage")
   public String myPage() {
      System.out.println("*myPage 가자*****");
         return "myPage";
      }
   
   @RequestMapping(value="/emailJoin")
   public String emailJoin() {
      System.out.println("*******");
         return "emailJoin";
      }
   
   @RequestMapping(value="/kakaoJoin")
   public String kakaoJoin() {
      System.out.println("*******");
         return "kakaoJoin";
      }
   
   @RequestMapping(value="/login")
   public String login() {
      System.out.println("*******");
         return "login";
      }
   
   @RequestMapping(value="/logout")
   public String logout(HttpSession session) {
      session.invalidate();
	   System.out.println("logout");
         return "home";
      }
   
   @RequestMapping(value="/together")
   public String together() {
      System.out.println("*******");
         return "together";
      }
   @RequestMapping(value="/review")
   public String review() {
      System.out.println("*******");
         return "review";
      }
   @RequestMapping(value="/tip")
   public String tip() {
      System.out.println("*******");
         return "tip";
      }
   @RequestMapping(value="/map")
   public String map() {
      System.out.println("*******");
         return "map";
      }
   @RequestMapping(value="/list")
   public String list() {
      System.out.println("*******");
         return "list";
      }
 /*  @Resource(name="com.example.demo.board.mapper.BoardMapper")
   BoardMapper mBoardMapper;
   @RequestMapping(value="/test")
  public String jspTest() throws Exception {
	   System.out.println("db연동테스트"+mBoardMapper.boardCount());
	   
	   
	   return "test";
   }*/
   
   @RequestMapping(value="/send")
   public String send() {
      System.out.println("*******");
         return "send";
      }
   
   @RequestMapping(value="/writeBoard")
   public String writeBoard() {
      System.out.println("*******");
         return "writeBoard";
      }
 
   @RequestMapping(value="/searchLocation")
   public String searchLocation() {
      System.out.println("*******");
         return "searchLocation";
      }
   
	 @Resource(name="com.example.demo.member.service.MemberService")
	 MemberService mMemberService;
	 
   @RequestMapping(value="/checkLogin")
   public ModelAndView checkLogin(@ModelAttribute MemberVO vo, HttpSession session, HttpServletRequest request) throws Exception {
	   
	   vo.setEmail(request.getParameter("InputEmail"));
	   vo.setPassword(request.getParameter("InputPassword"));
			   
	   boolean result = mMemberService.loginCheck(vo, session);
	   ModelAndView mav = new ModelAndView();
	   if(result==true){
		   mav.setViewName("myPage");
		   mav.addObject("msg","success");
	   }else{
		   mav.setViewName("login");
		   mav.addObject("msg", "fail");
	   }
	  /* String email = request.getParameter("InputEmail");
	   String password = request.getParameter("InputPassword");
	   
	   mMemberService.memberCheck(email,password);*/

       return mav;
      }
   
   
}