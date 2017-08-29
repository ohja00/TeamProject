package com.sist.model;

import javax.servlet.http.HttpServletRequest;

import java.text.SimpleDateFormat;
import java.util.*;
import com.sist.dao.*;

public class ProductModel {
	public void getProductData(HttpServletRequest request) {
		
		String[] pnoStrs = request.getParameterValues("selpdno");
		String[] pdcntStrs = request.getParameterValues("selpdcnt");
		List<ProductVO> list = new ArrayList<ProductVO>();
		
		int[] pdcnts=new int[pdcntStrs.length];
		ProductDAO dao= new ProductDAO();
		
		for (int i =0; i< pnoStrs.length;i++){
			int num=Integer.parseInt(pnoStrs[i]);
			ProductVO vo=dao.getProductListByPdno(num);
			//System.out.println("vo : "+vo.getPd_nm());
			list.add(vo);
			pdcnts[i] =Integer.parseInt(pdcntStrs[i]);
					
		}
		SimpleDateFormat sdf = 	new SimpleDateFormat("YY/MM/dd HH:mm 분");
		Date curTime = new Date();
		
	 	request.setAttribute("pdlist", list);
		request.setAttribute("pdcnts", pdcnts);	
		request.setAttribute("curTime", sdf.format(curTime));
		
		request.setAttribute("main_jsp", "order.jsp");
	}
}
