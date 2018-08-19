package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

   @RequestMapping(value="/")
   public String home() {
      System.out.println("**********");
         return "home";
      }
   
   @RequestMapping(value="/join")
   public String join() {
      System.out.println("*******");
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
   
}