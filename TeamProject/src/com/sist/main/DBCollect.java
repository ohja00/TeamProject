package com.sist.main;

import org.jsoup.Jsoup;
import org.jsoup.nodes.*;
import org.jsoup.select.*;
import java.util.*;
import com.sist.dao.*;

public class DBCollect {
	private static List<String> codeList=new ArrayList<String>();
	private static List<ProductVO> productList= new ArrayList<ProductVO>();
	private static CafeManagerDAO dao=new CafeManagerDAO();
	
	public static void main(String[] args) {
		DBCollect dc=new DBCollect();
		dc.getDBData(1);
		dc.getDBData(2);
//		for (ProductVO vo : productList) {
//			System.out.println(vo.getCvo().getcafe_nm() + ": " + vo.getCvo().getCafe_addr() + " : " +vo.getCvo().getCafe_tel());
//			System.out.println("           : "+vo.getPd_name() + " : " + vo.getPd_price());
//		}
		
		
		
	}

	public void getDBData(int kind) {
		try {
			int count=0;
			int maxIdx=0;
			if (kind==1)
				maxIdx=75;
			else if(kind==2)
				maxIdx=228;
			
			for (int idx=0; idx<maxIdx; idx++) { 
				Document doc=null;
				if (kind ==1)// 디저트
					 doc = Jsoup.connect("https://www.siksinhot.com/hot/search/places?keywords=%EB%94%94%EC%A0%80%ED%8A%B8&rankHide=Y&nO="+idx).get();
				else if (kind==2)  //커피
					doc = Jsoup.connect("https://www.siksinhot.com/hot/search/places?keywords=%EC%BB%A4%ED%94%BC&rankHide=Y&nO="+idx).get();

				Elements litag=doc.select("li.place-item div.gridBox a");
				String prevCode="";
				for (int i=0;i< litag.size();i++) {
					String code= litag.get(i).attr("href");
					if (prevCode.equals(code) == false) {
						
						codeList.add(code);
						prevCode=code;
						//System.out.println("page :"+ idx+ code+" i : " + i);
						count++;
					}
				}

			}
			
			System.out.println("cout :"+count);
			 
			for(int idx=0; idx<codeList.size();idx++) {
				Document doc = Jsoup.connect("https://www.siksinhot.com"+codeList.get(idx)).get(); // ��ü ������ ������
				
				Elements items =doc.select("div#container input");
				//System.out.println();
				//System.out.println(codeList.get(idx));
				Element tel=doc.select("div.placeBox div.basisBox span.tel").first();	
				Elements address=doc.select("div.placeBox div.basisBox dl dd");			
				Elements imgsrc=doc.select("div.PL02 div.PLlist img.cropImg");			
				//Element starNum=doc.select("div.starCon span.starNum").first();
				
				String str="";
				for (int i = 0; i< imgsrc.size(); i++) {
					str+= imgsrc.get(i).attr("src") +","; 
				}
				str = str.substring(0, str.lastIndexOf(","));
				//System.out.println(str);
				CafeVO cvo=new CafeVO(); 
				
				String cname=items.get(1).attr("value");
				if (cname!=null) cvo.setCafe_nm(cname);
				//System.out.println("cafe name : "+cname);
				//System.out.println("tel : " + tel.text()+" - Addr : " +address.get(2).text());
				if (tel != null)
					cvo.setCafe_tel(tel.text());
				if (address.size()>2)
					cvo.setCafe_addr(address.get(2).text());
				cvo.setCafe_img(str);
				Elements menu=doc.select("div.placeBox div.basisBox2 dl dt");
				int num=-1;
				for (int i = 0; i<menu.size();i++) {
					Element menuitem=menu.get(i);
					if (menuitem.text().equals("인기메뉴")) {
						num=i;
						break;
					}
				}
				if (kind==1) cvo.setCafe_cg("d");
				else if (kind==2) cvo.setCafe_cg("c");
				else if (kind==3) cvo.setCafe_cg("b");
				dao.insertCafeData(cvo);
				if (num>0) {
					menu=doc.select("div.placeBox div.basisBox2 dl dd");					
					Element menuitem=menu.get(num);
					//System.out.println("menu : " +menuitem.text());
					String[] array =menuitem.text().split(" | ");
					String[] arr1=new String[100];
					int cnt=0;	
					int length=-1;
					if (menuitem.text().indexOf("|") > 0) {
						length=array.length;
					}
					for (int i = 0; i < length;i++) {
						//System.out.println(i +" menu : " + array[i] + cnt);
						if (i ==0 || i%4==0) { // ��ǰ��
							arr1[cnt++]=array[i];
						}
						if (i%4==1) {// ����
							String clean1 = array[i].replaceAll("[^0-9]", "");
							arr1[cnt++]=clean1;
						}
					}

					for (int i = 0; i< cnt-1;i++) {
						ProductVO vo =new ProductVO();
						vo.setPd_nm(arr1[i]);
						try {
							vo.setPd_price(Integer.parseInt(arr1[++i]));
						}catch(Exception ex) { 
							vo.setPd_price(0);
						}
					/*	if(kind==1) vo.setPd_cg_id("d");
						else if(kind==2)vo.setPd_cg_id("c");
						else if(kind==3)vo.setPd_cg_id("b");*/
						
					//	System.out.println("cafe명"+cvo.getcafe_nm());						
						vo.setCvo(cvo);
						//System.out.println("제품명 : " + vo.getPd_name() + " 가격 : " + vo.getPd_price());
						productList.add(vo);
						
						dao.insertProductData(vo);
						
						dao.insertCafeProduct(vo);
					}
				}// END OF if (num>0) {
				
				
		
					
			}
				
			
		}catch(Exception ex) {
			//System.out.println(ex.getMessage());
			ex.printStackTrace();
		}
	}

}
