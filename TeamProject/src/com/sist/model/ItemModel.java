package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import com.sist.dao.*;
import java.util.*;

public class ItemModel { 

	public void getCafeReview(HttpServletRequest request) {
		String cno = request.getParameter("cafeno");
		String page = request.getParameter("page");
		System.out.println("cno : " +cno);
		if (page == null) page="1";
		ReviewDAO rdao= new ReviewDAO();
		
		List<ReviewVO> rlist = rdao.getCafeReview(Integer.parseInt(cno), Integer.parseInt(page));

		request.setAttribute("rlist", rlist);
		
	}
	// item_menupan.jsp 에서 사용
	public void getCafeMenu(HttpServletRequest request) {
		String cno= request.getParameter("cafeno");
		System.out.println("getCafeMenu");
		CafeManagerDAO dao = new CafeManagerDAO();
		List<ProductVO> plist = dao.getProductInfoByCafeNo(Integer.parseInt(cno));
		
		request.setAttribute("plist", plist);
		
	}
}
