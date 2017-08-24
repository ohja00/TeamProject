package com.sist.dao;
 /*
  * Jsoup ���� �ܾ�;� �Ǵ� ����
  * ��ǰ��,��ǰ����,��ǰ������,��ǰ�̹�����ũ
  * 
  * 
  */
public class ProductVO {
	private int pd_no;	//��ǰ��ȣ
	private String pd_cg_id; //��ǰī�װ�
	private String pd_name;	// ��ǰ��
	private int pd_price;	// ��ǰ����
	private String pd_info; // ��ǰ ������
	private CafeVO cvo=new CafeVO();	//��ü���� 
	
	public int getPd_no() {
		return pd_no;
	}
	public void setPd_no(int pd_no) {
		this.pd_no = pd_no;
	}
	public String getPd_cg_id() {
		return pd_cg_id;
	}
	public void setPd_cg_id(String pd_cg_id) {
		this.pd_cg_id = pd_cg_id;
	}
	public String getPd_name() {
		return pd_name;
	}
	public void setPd_name(String pd_name) {
		this.pd_name = pd_name;
	}
	public int getPd_price() {
		return pd_price;
	}
	public void setPd_price(int pd_price) {
		this.pd_price = pd_price;
	}
	public String getPd_info() {
		return pd_info;
	}
	public void setPd_info(String pd_info) {
		this.pd_info = pd_info;
	}

	public CafeVO getCvo() {
		return cvo;
	}
	public void setCvo(CafeVO cvo) {
		this.cvo = cvo;
	}
	
	
}
