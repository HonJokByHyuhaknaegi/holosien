/*package com.example.demo;

import java.io.IOException;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import org.omg.CORBA.NameValuePair;

import com.fasterxml.jackson.*;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import sun.net.www.http.httpclient;

public class kakaoLoginBO {
	
	
	 public static JsonNode getkakaouserinfo(String autorize_code) {

		 final String requesturl = "https://kapi.kakao.com/v1/user/me";
		

		    String client_id = "5f6012b1aa72d5297e1bb160bc592a4a"; // rest api key
		    String redirect_uri = "http://localhost:8090/holosien/kakaocall"; // 리다이렉트 uri
		    String code = autorize_code; // 로그인 과정중 얻은 토큰 값


		    final HttpClient client = HttpClientBuilder.create().build();
		    final HttpPost post = new HttpPost(requesturl);

		    
		    // add header

		    post.addheader("authorization", "bearer " + autorize_code);
		   
		    JsonNode returnnode = null;

		   
		    try {

		      final HttpResponse response = client.execute(post);

		      final int responsecode = response.getstatusline().getstatuscode();


		      System.out.println("\nsending 'post' request to url : " + requesturl);
		      System.out.println("response code : " + responsecode);


		      //json 형태 반환값 처리

		      ObjectMapper mapper = new ObjectMapper();
		      returnnode = mapper.readtree(response.getentity().getcontent());

		     
		    } catch (UnsupportedEncodingException e) {

		      e.printStackTrace();

		    } catch (IOException e) {

		      e.printStackTrace();

		    } finally {

		        // clear resources
		    }
		    return returnnode;
		}

}
*/