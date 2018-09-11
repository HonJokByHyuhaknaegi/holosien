package com.example.demo;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.board.mapper.BoardMapper;

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
   
   @RequestMapping(value="/emailJoin")
   public String emailJoin() {
      System.out.println("*******");
         return "emailJoin";
      }
   
   @RequestMapping(value="/login")
   public String login() {
      System.out.println("*******");
         return "login";
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
   @Resource(name="com.example.demo.board.mapper.BoardMapper")
   BoardMapper mBoardMapper;
   @RequestMapping(value="/test")
  public String jspTest() throws Exception {
	   System.out.println("db연동테스트"+mBoardMapper.boardCount());
	   
	   
	   return "test";
   }
   
   @RequestMapping(value="/writeBoard")
   public String writeBoard() {
      System.out.println("*******");
         return "writeBoard";
      }
   
   
}