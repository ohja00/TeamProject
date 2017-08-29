package com.sist.main;

import java.util.*;
import java.util.regex.Pattern;

import org.json.simple.*;
import org.json.simple.parser.JSONParser;

import com.sist.dao.*;

import java.io.*;
import java.net.*;

public class ReplayDBCollect {
	public static void main(String[] args) {
		ReplayDBCollect rdb = new ReplayDBCollect();
		//mm.naverFind();
		rdb.jsonParse();
		
	}
	public String naverFind(String cname) {
		String json="";
		String clientId = "GQAwDhqhc1edmZrja71u";// 애플리케이션 클라이언트 아이디값";
		String clientSecret = "o9Pp2OtEgL";// 애플리케이션 클라이언트 시크릿값";
		try {
			String text = URLEncoder.encode(cname, "UTF-8");
			String apiURL = "https://openapi.naver.com/v1/search/blog?display=100&query=" + text; // json 결과
			// String apiURL = "https://openapi.naver.com/v1/search/blog.xml?query="+ text;
			// // xml 결과
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");
			con.setRequestProperty("X-Naver-Client-Id", clientId);
			con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
			int responseCode = con.getResponseCode();
			BufferedReader br;
			if (responseCode == 200) { // 정상 호출
				br = new BufferedReader(new InputStreamReader(con.getInputStream(),"UTF-8"));
			} else { // 에러 발생
				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
			}
			String inputLine;
			StringBuffer response = new StringBuffer();
			while ((inputLine = br.readLine()) != null) {
				response.append(inputLine);
			}
			br.close();
		//	System.out.println(response.toString());
			json=response.toString();
		} catch (Exception e) {
			System.out.println(e);
		}	
		return json;
	}
	/*
	 * {}= Object []=Array
	 * {item:[{title:, description:""},{},{}]};
	 * 
	 */
	
	public void jsonParse() {
		try {
			List<String> cnlist=new ArrayList<String>();
			ReviewDAO rdao= new ReviewDAO();
			CafeManagerDAO dao= new CafeManagerDAO();
			cnlist=dao.getAllCafeName();
		//	for (String cn: cnlist) {
				String cn="문토스트";
				String json=naverFind(cn);
				//System.out.println(json);
				JSONParser jp=new JSONParser();
				JSONObject obj=(JSONObject) jp.parse(json);
				JSONArray arr=(JSONArray)obj.get("items");
			//	System.out.println(arr.toJSONString());
				String data="";
				System.out.println(cn);
				for (int i =0; i< arr.size();i++) {
					ReviewVO vo=new ReviewVO();
					JSONObject j=(JSONObject)arr.get(i);
					String desc=(String)j.get("description");
					desc = desc.replaceAll("<b>","");
					desc = desc.replaceAll("</b>","");
					desc = desc.replaceAll(cn,"");
					
				//	System.out.println(desc);
					
					double star=makeRandomstar();
					vo.setBoard_nt(desc);
					vo.setCafe_no(dao.getCafeNoByCafeName(cn));
					vo.setCafe_star(star);
					
					rdao.insertReviewData(vo);
					//System.out.println("=======================");
					
				}
				System.out.println("저장완료");
		//	}
		}catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
	}
	public double makeRandomstar() {
		double star = (Math.random() * 4)+2;
					// 0.0~0.99 * 4 = 0.0~3.96+ 2 =2.0~5 까지의 난수
		if (star > 5) star =5;
		Math.round(star);
		star = ((int)(star*10))/10d;
	//	System.out.println("Star : " + ((double)((int)(star*10)))/10);
		
		return star;
	}
	public void recommandMovie() {
		try {
	/*		ReplayDAO dao=new ReplayDAO();
			List<String> title=dao.getMovieTitleData();
			Pattern[] p=new Pattern[title.size()]; 
			
			 *  맛있()
			 *  맛있[가-힣]+   
			 *     ==== ==
 			 *   한글 1자   1자이상 어떤 단어도
 			 *   
 			 *  [0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3} : IP 주소 ###.###.###
 			 *  ==== =====
 			 *  숫자 1~9까지   1개~3개가 존재
			 
			for (int i = 0; i<p.length;i++) {
				p[i]=Pattern.compile(title.get(i)); // 영화 제목으로 패턴을 적용
			}*/
			
		}catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
	}
	
}
