package com.sist.controller;

import javax.servlet.http.HttpServletRequest;
import com.sist.model.*;
import com.sist.dao.*;

public class CafeController {
	public void controller(HttpServletRequest request) {
		ItemModel model= new ItemModel();
		ProductModel pmodel=new ProductModel();
		
		String mode= request.getParameter("mode");
		System.out.println("mode : " +mode);
		if (mode==null) mode="0";
		int index=Integer.parseInt(mode);
		
		switch(index) {
		case 0:
			model.getCafeDetail(request);
			model.getCafeStar(request); 
			model.getCafeReview(request);
			return;
		case 1:
			model.getCafeMenu(request);
			return;
		case 6:
			model.getCafeReview(request);
			return;
		case 7:
			pmodel.getProductData(request);
			return;
		}		
		
	}
	public void controller(HttpServletRequest request, Object vo) {
		ItemModel model= new ItemModel();
		
		String mode= request.getParameter("mode");
		if (mode==null) mode="0";
		int index=Integer.parseInt(mode);

		switch(index) {
		case 5:
			ReviewVO rvo =  (ReviewVO) vo;
			model.insertCafeReview(request,rvo);
			return;
		}
	}
}
