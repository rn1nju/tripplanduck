package com.tripplan.duck.trip.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.tripplan.duck.member.model.vo.Member;
import com.tripplan.duck.trip.model.service.DestinationService;
import com.tripplan.duck.trip.model.vo.DestinationLike;

@RestController
public class TripRestController {
	
	@Autowired
	private DestinationService destinationService;
	
	@GetMapping("/insertData")
	@Transactional(rollbackFor = Exception.class)
	public void insertData() throws Exception {
		
		System.out.println("STARt");
		
		int[] areaCode = {1, 2, 3, 4, 5, 6, 7, 8, 31, 32, 33, 34, 35, 36, 37, 38 ,39};
		
		Map<Integer, String> contents = new HashMap<Integer, String>();
		
		contents.put(12, "관광지");
		contents.put(14, "문화시설");
		contents.put(15, "축제/공연/행사");
		contents.put(25, "여행코스");
		contents.put(28, "레포츠");
		contents.put(32, "숙박");
		contents.put(38, "쇼핑");
		contents.put(39, "음식");

        for (int i : areaCode) {
            StringBuilder urlBuilder = new StringBuilder("http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList");
            urlBuilder.append("?" + URLEncoder.encode("ServiceKey", "UTF-8") + "=wEh3KeT58fDfUP6Nwnk4nbHqBqTEWa6AKNh44bDB%2BNc%2FSQHN%2BT3a4%2FovMkE1Lza%2BtuV6rNqMAs7ckQnfOjZiJA%3D%3D");
            urlBuilder.append("&" + URLEncoder.encode("ServiceKey", "UTF-8") + "=" + URLEncoder.encode("wEh3KeT58fDfUP6Nwnk4nbHqBqTEWa6AKNh44bDB%2BNc%2FSQHN%2BT3a4%2FovMkE1Lza%2BtuV6rNqMAs7ckQnfOjZiJA%3D%3D", "UTF-8"));
            urlBuilder.append("&" + URLEncoder.encode("numOfRows", "UTF-8") + "=" + URLEncoder.encode("30", "UTF-8"));
            urlBuilder.append("&" + URLEncoder.encode("pageNo", "UTF-8") + "=" + URLEncoder.encode("3", "UTF-8"));
            urlBuilder.append("&" + URLEncoder.encode("MobileOS", "UTF-8") + "=" + URLEncoder.encode("ETC", "UTF-8"));
            urlBuilder.append("&" + URLEncoder.encode("MobileApp", "UTF-8") + "=" + URLEncoder.encode("AppTest", "UTF-8"));
            urlBuilder.append("&" + URLEncoder.encode("_type", "UTF-8") + "=" + URLEncoder.encode("json", "UTF-8"));
            urlBuilder.append("&" + URLEncoder.encode("listYN", "UTF-8") + "=" + URLEncoder.encode("Y", "UTF-8"));
            urlBuilder.append("&" + URLEncoder.encode("areaCode", "UTF-8") + "=" + URLEncoder.encode(String.valueOf(i), "UTF-8"));
            URL url = new URL(urlBuilder.toString());
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Content-type", "application/json");
            conn.setDoOutput(true); // 출력 가능 상태로 변경
            conn.connect();

            System.out.println("Response code: " + conn.getResponseCode());
            BufferedReader rd;
            if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
                rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            } else {
                rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
            }
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = rd.readLine()) != null) {
                sb.append(line);
            }
            rd.close();
            conn.disconnect();
            // System.out.println(sb.toString());
            
            ObjectMapper mapper = new ObjectMapper();
            
            Map<String, Object> map = mapper.readValue(sb.toString(), new TypeReference<Map<String, Object>>() {
            });
            
            Map<String, Object> response = (Map<String, Object>) map.get("response");
            Map<String, Object> body = (Map<String, Object>) response.get("body");
            Map<String, Object> items = (Map<String, Object>) body.get("items");
            List<Map<String, Object>> list = (ArrayList<Map<String, Object>>) items.get("item");
            
//            System.out.println(list.toString());
            
            String category = destinationService.getCateogryName(i);
            
            for(Map<String, Object> param : list) {
            	
            	String contentTypeId = (String) param.get("contenttypeid");
            	String summary = contents.get(Integer.parseInt(contentTypeId));
            	
            	String addr = (String) param.get("addr1");
            	
            	if(StringUtils.isEmpty(addr))
            		param.put("addr1", "주소없음");
            	
            	param.put("category", category);
            	param.put("summary", summary);
            	
            	System.out.println(addr);
            	destinationService.insertData(param);
            	
            }
            
            }
	}
	
	@PostMapping("/like")
	@Transactional(rollbackFor = Exception.class)
	public int updateLike(HttpSession session, @RequestBody DestinationLike destinationLike) throws Exception {
		
		Member member = (Member)session.getAttribute("loginMember");
		
		int like = destinationLike.getLike();
		
		if(like > 0) {
			destinationService.insertLike(destinationLike);
			like = 0;
		} else {
			destinationService.deleteLike(destinationLike);
			like = 1;
		}
		
		return 0;
		
	}

}
