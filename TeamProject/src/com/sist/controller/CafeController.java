package com.sist.controller;

import javax.servlet.http.HttpServletRequest;
import com.sist.model.*;

public class CafeController {
	public void controller(HttpServletRequest request) {
		ItemModel model= new ItemModel();
		
		String mode= request.getParameter("mode");
		System.out.println("mode : " +mode);
		if (mode==null) mode="0";
		int index=Integer.parseInt(mode);
		
		switch(index) {
		case 0:
			model.getCafeReview(request);
			return;
		case 1:
			model.getCafeMenu(request);
			return;

		}
		
	}
}
