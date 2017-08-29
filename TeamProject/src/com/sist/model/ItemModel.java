package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import com.sist.dao.*;
import java.util.*;

public class ItemModel { 

	public void getCafeReview(HttpServletRequest request) {
		String cno = request.getParameter("cafeno");
		String page = request.getParameter("page");
		//System.out.println("cno : " +cno);
		if (page == null) page="1";
		// 삭제예정
		if (cno==null) cno="190";
		ReviewDAO rdao= new ReviewDAO();
		
		List<ReviewVO> rlist = rdao.getCafeReview(Integer.parseInt(cno), Integer.parseInt(page));

		request.setAttribute("rlist", rlist);
		
	}
	// item_menupan.jsp 에서 사용
	public void getCafeMenu(HttpServletRequest request) {
		String cno= request.getParameter("cafeno");
		//System.out.println("getCafeMenu : cafeno " + cno);
		CafeManagerDAO dao = new CafeManagerDAO();
		List<ProductVO> plist = dao.getProductInfoByCafeNo(Integer.parseInt(cno));
		
		request.setAttribute("plist", plist);
		
	}
	public void getCafeStar(HttpServletRequest request) {
		String cno= request.getParameter("cafeno");
		// 삭제예정
		if (cno==null) cno="251";		
		ReviewDAO dao = new ReviewDAO();
		double star= dao.getAvgStar(Integer.parseInt(cno));
		request.setAttribute("star", star);
	}
	public void getCafeDetail(HttpServletRequest request) {
		CafeManagerDAO dao=new CafeManagerDAO();
		int no =0;
		String cno= request.getParameter("cafeno");
		// 삭제예정
		if (cno==null) {
			no = dao.getCafeNoByCafeName("문토스트");
		}
		else{
			no = Integer.parseInt(cno);
		}
		CafeVO cafevo = dao.getCafeInfoByCafeNo(no);
		request.setAttribute("cvo", cafevo);
		
		//String[] arr = cafevo.getCafe_img().split(",");

		ReviewDAO rdao=new ReviewDAO();
		int totalpage = rdao.getTotalPage(no);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("cafeno", no);

		double star = rdao.getAvgStar(no);
		request.setAttribute("star",star);
		
		List<CafeVO> recommand_list=dao.getRecommandCafe(cafevo.getCafe_addr());
		
		request.setAttribute("recommand", recommand_list);
		request.setAttribute("main_jsp", "cafe.jsp");
	}
	public void insertCafeReview(HttpServletRequest request, ReviewVO vo) {
		
		String cno= request.getParameter("cafeno");
		ReviewDAO dao = new ReviewDAO();
		dao.insertNewReview(vo);
	}
}
