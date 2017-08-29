package com.sist.dao;
import java.sql.*;
import java.util.*;
import javax.sql.*;
import javax.naming.*;

public class ProductDAO {
	private Connection conn;
	private PreparedStatement ps;
	private final String URL="jdbc:oracle:thin:@localhost:1521:ORCL";
	private final String USER="scott";
	private final String PWD="tiger";
	private final String DRIVER="oracle.jdbc.driver.OracleDriver";
	
	public ProductDAO() {
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
	
/*	private Connection conn;
	private PreparedStatement ps;
	
	public void getConnection() {
		try {
			Context init=new InitialContext();
			Context root=(Context)init.lookup("java://comp/env");
			DataSource ds=(DataSource)root.lookup("jdbc/oracle");
			
			conn=ds.getConnection();
		}catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
	}*/
	public void disConnection() {
		try {
			if (ps!=null) ps.close();
			if(conn != null) conn.close();
		}catch(Exception ex) {
			System.out.println("disConnection : "+ ex.getMessage());
		}
	}
	public ProductVO getProductListByPdno(int pno){
		ProductVO vo=new ProductVO();
		try {
			getConnection();
			String sql="SELECT pd_no,pd_nm,pd_price "
					+ "FROM product "
					+ "WHERE pd_no=?";
			ps =conn.prepareStatement(sql);
			ps.setInt(1, pno);
			ResultSet rs = ps.executeQuery();
			rs.next();
			
			vo.setPd_no(rs.getInt(1));
			vo.setPd_nm(rs.getString(2));
			vo.setPd_price(rs.getInt(3));
			System.out.println(vo.getPd_nm());
				
			rs.close();
		}catch(Exception ex) {
			System.out.println(ex.getMessage());
		}finally {
			disConnection();
		}
		return vo;
	}
}
