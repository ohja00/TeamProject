package com.sist.dao;
import java.util.*;

/*
 * Jsoup 으로 긁어와야하는 정보 : 업체명,업체이미지링크,업체주소,	업체전화,업체평점
 * 
 */

public class CafeVO {
	private int cafe_no;		// 업체번호
	private String cafe_nm;	// 업체명
	private String cafe_img;	// 업체 이미지 링크
	private String cafe_addr;	// 업체주소
	private String cafe_tel;	// 업체전화
	private Date cafe_date;	// 등록날짜
	private float cafe_lat;		// 위도
	private float cafe_lon;		// 경도
	private String cafe_cg;		// 업체 카탈로그 ('c': 커피, 'd': 디저트, 'b': 빙수)
	private double cafe_star;	// 리뷰테이블에서 읽어서 평균낸 평점
	public int getCafe_no() {
		return cafe_no;
	}
	public void setCafe_no(int cafe_no) {
		this.cafe_no = cafe_no;
	}
	public String getCafe_nm() {
		return cafe_nm;
	}
	public void setCafe_nm(String cafe_nm) {
		this.cafe_nm = cafe_nm;
	}
	public String getCafe_img() {
		return cafe_img;
	}
	public void setCafe_img(String cafe_img) {
		this.cafe_img = cafe_img;
	}
	public String getCafe_addr() {
		return cafe_addr;
	}
	public void setCafe_addr(String cafe_addr) {
		this.cafe_addr = cafe_addr;
	}
	public String getCafe_tel() {
		return cafe_tel;
	}
	public void setCafe_tel(String cafe_tel) {
		this.cafe_tel = cafe_tel;
	}
	public Date getCafe_date() {
		return cafe_date;
	}
	public void setCafe_date(Date cafe_date) {
		this.cafe_date = cafe_date;
	}
	public float getCafe_lat() {
		return cafe_lat;
	}
	public void setCafe_lat(float cafe_lat) {
		this.cafe_lat = cafe_lat;
	}
	public float getCafe_lon() {
		return cafe_lon;
	}
	public void setCafe_lon(float cafe_lon) {
		this.cafe_lon = cafe_lon;
	}
	public String getCafe_cg() {
		return cafe_cg;
	}
	public void setCafe_cg(String cafe_cg) {
		this.cafe_cg = cafe_cg;
	}
	public double getCafe_star() {
		return cafe_star;
	}
	public void setCafe_star(double cafe_star) {
		this.cafe_star = cafe_star;
	}
	

	
}
