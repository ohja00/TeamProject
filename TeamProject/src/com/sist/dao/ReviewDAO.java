package com.sist.dao;
import java.util.*;
import java.sql.*;
import javax.sql.*; // DataSource 
import javax.naming.*; // Context 

public class ReviewDAO {
	private Connection conn;
	private PreparedStatement ps;
	private final String URL = "jdbc:oracle:thin:@localhost:1521:orcl";
	private final String USERNAME = "scott";
	private final String PASSWORD = "tiger";

	// 드라이버연결
	public ReviewDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception ex) {
			System.out.println("MovieDAO() : " + ex.getMessage());
		}
	}


	// 연결
	public void getConnection() {
		try {
			conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			// sqlplus : conn scott/tiger
		} catch (Exception ex) {
			System.out.println("getConnection() : " + ex.getMessage());
		}

	}	

/*	private Connection conn;
	private PreparedStatement ps;
	 
	public void getConnection() {
		try {
			Context init=new InitialContext();
			Context root=(Context)init.lookup("java://comp/env");
			DataSource ds=(DataSource)root.lookup("jdbc/oracle");
			
			conn = ds.getConnection();			
		}catch(Exception ex) {
			//System.out.println("getConnection : " +ex.getMessage());
			ex.printStackTrace();
			
		}
	}*/
	public void disConnection() {
		try {
			if (ps!=null) ps.close();
			if(conn != null) conn.close();
		}catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
	}
	public void insertReviewData(ReviewVO vo) {
		try {
			getConnection();
			
			String sql="INSERT INTO review "
					+ "VALUES (rv_no_seq.NEXTVAL,?,SYSDATE,0,?,?)";
			System.out.println("vo.getCafe_no() :" +vo.getCafe_no());
			ps = conn.prepareStatement(sql);
			ps.setString(1, vo.getBoard_nt());
			ps.setDouble(2, vo.getCafe_star());
			ps.setInt(3, vo.getCafe_no());
			
			ps.executeUpdate();
			
		}catch(Exception ex) {
			System.out.println(ex.getMessage());
		}finally {
			disConnection();
		}
	}
	public List<ReviewVO> getCafeReview(int cafeno, int page){
		List<ReviewVO> list = new ArrayList<ReviewVO>();
		try {
			getConnection();
			int rowSize=5;
			int start=(rowSize*page)-(rowSize-1);
			int end= rowSize*page;
			
			String sql="SELECT review_no,board_nt,board_date,cafe_star,cafe_no,num "
					+ "FROM (SELECT review_no,board_nt,board_date,cafe_star,cafe_no,rownum as num "
					+ "FROM (SELECT review_no,board_nt,board_date,cafe_star,cafe_no "
					+ "FROM review "
					+ "WHERE cafe_no=?)) "
					+ "WHERE num BETWEEN "+start+" AND "+end;						
							
			ps=conn.prepareStatement(sql);
			ps.setInt(1, cafeno);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				ReviewVO vo = new ReviewVO();
				
				vo.setReview_no(rs.getInt(1));
			
				vo.setBoard_nt(rs.getString(2));
				vo.setBoard_date(rs.getDate(3).toString());
				vo.setCafe_star(rs.getDouble(4));
				list.add(vo);
			}
		}catch(Exception ex) {
			System.out.println(ex.getMessage());
		}finally {
			disConnection();
		}
		return list;
	}
	public int getTotalPage(int cafeno) {
		int total=0;
		try {
			getConnection();
			String sql="SELECT CEIL(COUNT(*)/10) "
					+ "FROM review "
					+ "WHERE cafe_no=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, cafeno);
			
			ResultSet rs=ps.executeQuery();
			rs.next();
			total=rs.getInt(1);
			
		}catch(Exception ex) {
			System.out.println(ex.getMessage());
		}finally {
			disConnection();
		}
		return total;
	}
}










