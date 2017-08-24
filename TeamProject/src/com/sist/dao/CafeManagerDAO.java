package com.sist.dao;

import java.sql.*;
import java.util.*;

public class CafeManagerDAO {
	private Connection conn;
	private PreparedStatement ps;
	private final String URL="jdbc:oracle:thin:@localhost:1521:ORCL";
	private final String USER="scott";
	private final String PWD="tiger";
	private final String DRIVER="oracle.jdbc.driver.OracleDriver";
	
	public CafeManagerDAO() {
		try {
			Class.forName(DRIVER);
		}catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
	}
	private void getConnection() {
		try {
			conn=DriverManager.getConnection(URL,USER,PWD);
			
		}catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
	}
	private void disConnection() {
		try {
			if(ps != null)ps.close();
			if(conn != null)conn.close();
		}catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
	}
	public void insertCafeData(CafeVO cvo) {
		try {
			getConnection();
			String sql="INSERT INTO cafe "
					+ "VALUES(cafe_no_seq.NEXTVAL,?,?,?,?,SYSDATE,?,0,0)";
		//	System.out.println("cafe_name : "+cvo.getcafe_nm());
			ps = conn.prepareStatement(sql);
			ps.setString(1,cvo.getcafe_nm());
			ps.setString(2,cvo.getCafe_img());
			ps.setString(3,cvo.getCafe_addr());
			ps.setString(4,cvo.getCafe_tel());
			ps.setString(5,cvo.getCafe_cg());


			ps.executeUpdate();
		//+ "cafe_no_seq.NEXTVAL,cafe_nm,cafe_img,cafe_addr,cafe_tel,cafe_date,cafe_xplot,cafe_yplot)";
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			disConnection();
		}
	}
	public void insertProductData(ProductVO pvo) {
		try {
			getConnection();
			String sql="INSERT INTO product "
					+ "VALUES(pd_no_seq.NEXTVAL,?,?)";
			
			ps = conn.prepareStatement(sql);
			//ps.setString(1, pvo.getPd_cg_id());
			ps.setString(1,pvo.getPd_name());
			ps.setInt(2, pvo.getPd_price());


			ps.executeUpdate();
		//+ "cafe_no_seq.NEXTVAL,cafe_nm,cafe_img,cafe_addr,cafe_tel,cafe_date,cafe_xplot,cafe_yplot)";
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			disConnection();
		}		
	}
	public void insertCafeProduct(ProductVO pvo) {
		try {
			int cafeno = getCafeNoByCafeName(pvo.getCvo().getcafe_nm());
			int pdno =getPdNoByPdName(pvo.getPd_name());
		//	System.out.println("======cafeno : "+cafeno+"  pdno : "+pdno);
			getConnection();
	
			String sql="INSERT INTO product_scg "
					+ "VALUES(?,?)";
//
		//	System.out.println(pvo.getCvo().getCafe_name()+" : cafe_no : " + getCafeNoByCafeName(pvo.getCvo().getCafe_name()));
			ps = conn.prepareStatement(sql);
			ps.setInt(1,pdno);
			ps.setInt(2, cafeno);
			

			ps.executeUpdate();
		//+ "cafe_no_seq.NEXTVAL,cafe_nm,cafe_img,cafe_addr,cafe_tel,cafe_date,cafe_xplot,cafe_yplot)";
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			disConnection();
		}		
	}	
	public CafeVO getCafeInfoByCafeNo(int no) {
		CafeVO vo=new CafeVO();
		try {
			getConnection();
			String sql="SELECT cafe_no,cafe_nm,cafe_img,cafe_addr,cafe_tel FROM cafe "
					+ "WHERE cafe_no=?";
			
			ps = conn.prepareStatement(sql);
			ps.setInt(1, no);
			
			ResultSet rs = ps.executeQuery();
			rs.next();
			vo.setCafe_no(rs.getInt(1));
			vo.setcafe_nm(rs.getString(2));
			vo.setCafe_img(rs.getString(3));
			vo.setCafe_addr(rs.getString(4));
			vo.setCafe_tel(rs.getString(5));
			System.out.println(vo.getcafe_nm());
			
			rs.close();
			
			
			rs.close();
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			disConnection();
		}
		return vo;
	}
	public int getCafeNoByCafeName(String cafename) {
		int no=0;
		try {
			getConnection();
			String sql="SELECT cafe_no FROM cafe "
					+ "WHERE cafe_nm=?";
			
			ps = conn.prepareStatement(sql);
			ps.setString(1, cafename);
			
			ResultSet rs = ps.executeQuery();
			rs.next();
			no=rs.getInt(1);
			System.out.println("cafeno: " + no);
		//+ "cafe_no_seq.NEXTVAL,cafe_nm,cafe_img,cafe_addr,cafe_tel,cafe_date,cafe_xplot,cafe_yplot)";
			rs.close();
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			disConnection();
		}
		return no;
	}
	
	public int getPdNoByPdName(String pdname) {
		int no=0;
		try {
			getConnection();
			String sql="SELECT pd_no FROM product "
					+ "WHERE pd_nm=?";
			
			ps = conn.prepareStatement(sql);
			ps.setString(1, pdname);
			
			ResultSet rs = ps.executeQuery();
			rs.next();
			no=rs.getInt(1);
			//System.out.println("pno :"+no);
		//+ "cafe_no_seq.NEXTVAL,cafe_nm,cafe_img,cafe_addr,cafe_tel,cafe_date,cafe_xplot,cafe_yplot)";
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			disConnection();
		}
		return no;
	}
	public List<ProductVO> getProductInfoByCafeNo(int cafeno){
		List<ProductVO> list=new ArrayList<ProductVO>();
		try {
			getConnection();
			String sql="SELECT product.pd_no,product.pd_nm,product.pd_price "
					+ "FROM product,product_scg "
					+ "WHERE product_scg.cafe_no=? "
					+ "AND product_scg.pd_no=product.pd_no "
					+ "GROUP BY product.pd_no,product.pd_nm,product.pd_price";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, cafeno);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				ProductVO vo = new ProductVO();
				vo.setPd_no(rs.getInt(1));
				vo.setPd_name(rs.getString(2));
				System.out.println("PDName : " +vo.getPd_name());
				vo.setPd_price(rs.getInt(3));
				//System.out.println("제품명 : " +vo.getPd_name());
				list.add(vo);
			}
			rs.close();
					
		}catch(Exception ex) {
			System.out.println(ex.getMessage());
		}finally {
			disConnection();
		}
		return list;
	}
	public List<String> getAllCafeName(){
		List<String> namelist=new ArrayList<String>();
		
		try {
			getConnection();
			String sql="SELECT cafe_nm FROM cafe";
					
			ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				namelist.add(rs.getString(1));
			}
			rs.close();
		//+ "cafe_no_seq.NEXTVAL,cafe_nm,cafe_img,cafe_addr,cafe_tel,cafe_date,cafe_xplot,cafe_yplot)";
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			disConnection();
		}		
		
		return namelist;
		
	}
	public List<CafeVO> CallAllCafeInfo() {
		List<CafeVO> list = new ArrayList<CafeVO>();
		
		try {
			getConnection();
			String sql="SELECT * FROM cafe";
			
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				CafeVO vo = new CafeVO();
				vo.setCafe_no(rs.getInt(1));
				vo.setcafe_nm(rs.getString(2));
				vo.setCafe_img(rs.getString(3));
				vo.setCafe_addr(rs.getString(4));
				vo.setCafe_tel(rs.getString(5));
				vo.setcafe_date(rs.getDate(6));
				vo.setCafe_lat(rs.getFloat(7));
				vo.setCafe_lon(rs.getFloat(8));
				vo.setCafe_cg(rs.getString(9));
				list.add(vo);
			}
			rs.close();
			
		}catch(Exception ex) {
			System.out.println("CallAllCafeInfo(): "+ex.getMessage());
			ex.printStackTrace();
		}finally {
			disConnection();
		}
		return list;
	}

	public List<CafeVO> CafeListData(int page) {
		List<CafeVO> list = new ArrayList<CafeVO>();
		
		try {
			getConnection();
			int rowSize = 8;
			int start = rowSize*page -(rowSize-1);
			int end = rowSize*page;
			
			String sql = "SELECT cafe_no,cafe_nm,cafe_img,cafe_addr,cafe_tel,cafe_date,cafe_lat, cafe_lon, num "
					+"FROM (SELECT cafe_no,cafe_nm,cafe_img,cafe_addr,cafe_tel,cafe_date,cafe_lat, cafe_lon,rownum as num "
					+"FROM (SELECT cafe_no,cafe_nm,cafe_img,cafe_addr,cafe_tel,cafe_date,cafe_lat, cafe_lon FROM cafe ORDER BY cafe_no ASC)) "
					+"WHERE num BETWEEN "+start+"AND "+end;
			
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				CafeVO vo = new CafeVO();
				vo.setCafe_no(rs.getInt(1));
				vo.setcafe_nm(rs.getString(2));
				vo.setCafe_img(rs.getString(3));
				vo.setCafe_addr(rs.getString(4));
				vo.setCafe_tel(rs.getString(5));
				vo.setcafe_date(rs.getDate(6));
				vo.setCafe_lat(rs.getFloat(7));
				vo.setCafe_lon(rs.getFloat(8));
				vo.setCafe_cg(rs.getString(9));
				list.add(vo);
			}
			rs.close();
			
		}catch(Exception ex) {
			System.out.println("CafeListData(): "+ex.getMessage());
			ex.printStackTrace();
		}finally {
			disConnection();
		}
		return list;
	}
	
	public int cafeTotalPage() {
		int total = 0;
		
		try {
			getConnection();
			String sql = "SELECT CEIL(COUNT(*)/8) FROM cafe";
			
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			rs.next();
			total = rs.getInt(1);
			rs.close();
			
		}catch(Exception ex) {
			System.out.println("cafeTotalPage(): "+ex.getMessage());
		}finally {
			disConnection();
		}
		
		return total;
	}
	
	public void SetGeo(CafeVO vo,float lat,float lon) {//coords[0]:위도(lat) coords[1]:경도(lon)
		try {
		
			getConnection();
			String sql="Update Cafe SET cafe_lat=?,cafe_lon=? WHERE cafe_no=?";
			
			ps = conn.prepareStatement(sql);
			ps.setFloat(1, lat);
			ps.setFloat(2, lon);
			ps.setInt(3, vo.getCafe_no());
			ps.executeUpdate();	
		}catch(Exception ex) {
			System.out.println("SetGeo(): "+ex.getMessage());
			ex.printStackTrace();
		}finally {
			disConnection();
		}		
	}
}







