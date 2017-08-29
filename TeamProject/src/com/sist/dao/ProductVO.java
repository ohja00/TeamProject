package com.sist.dao;
 /*
  * Jsoup ���� �ܾ�;� �Ǵ� ����
  * ��ǰ��,��ǰ����,��ǰ������,��ǰ�̹�����ũ
  * 
  * 
  */
public class ProductVO {
	private int pd_no;	
	private String pd_nm;	
	private int pd_price; 	
	private CafeVO cvo=new CafeVO();
	
	public int getPd_no() {
		return pd_no;
	}
	public void setPd_no(int pd_no) {
		this.pd_no = pd_no;
	}
	public String getPd_nm() {
		return pd_nm;
	}
	public void setPd_nm(String pd_nm) {
		this.pd_nm = pd_nm;
	}
	public int getPd_price() {
		return pd_price;
	}
	public void setPd_price(int pd_price) {
		this.pd_price = pd_price;
	}
	public CafeVO getCvo() {
		return cvo;
	}
	public void setCvo(CafeVO cvo) {
		this.cvo = cvo;
	}
	
	
	

}
