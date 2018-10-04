package com.example.demo;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class NaverBlogSearch {
	public static JSONObject naverBlogSearch() {
        String clientId = "hy3NJI_MK4cjSNrAvmdP";//애플리케이션 클라이언트 아이디값";
        String clientSecret = "N67L_IKAMy";//애플리케이션 클라이언트 시크릿값";
        try {
            String text = URLEncoder.encode("자취","utf-8");
            String apiURL = "https://openapi.naver.com/v1/search/blog?query="+ text; // json 결과
            //String apiURL = "https://openapi.naver.com/v1/search/blog.xml?query="+ text; // xml 결과
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream(),"UTF-8"));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream(),"UTF-8"));
            }
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);
            }
            br.close();
     	   JSONParser parser = new JSONParser();
    	   JSONObject jsonObject = new JSONObject();
    	   jsonObject = (JSONObject) parser.parse(response.toString());
            return jsonObject;
        } catch (Exception e) {
        }
		return null;
    }
}
