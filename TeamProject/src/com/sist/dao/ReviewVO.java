package com.sist.dao;
import java.util.*;
public class ReviewVO {
	private int review_no;
	private String board_nt;
	private String board_date;
	private int custom_no;
	private double cafe_star;
	private int cafe_no;
	
	public int getReview_no() {
		return review_no;
	}
	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}
	public String getBoard_nt() {
		return board_nt;
	}
	public void setBoard_nt(String board_nt) {
		this.board_nt = board_nt;
	}
	public String getBoard_date() {
		return board_date;
	}
	public void setBoard_date(String board_date) {
		this.board_date = board_date;
	}
	public int getCustom_no() {
		return custom_no;
	}
	public void setCustom_no(int custom_no) {
		this.custom_no = custom_no;
	}
	public double getCafe_star() {
		return cafe_star;
	}
	public void setCafe_star(double cafe_star) {
		this.cafe_star = cafe_star;
	}
	public int getCafe_no() {
		return cafe_no;
	}
	public void setCafe_no(int cafe_no) {
		this.cafe_no = cafe_no;
	}
	
	
}
