package com.DAO;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.VO.userVO;

public class userDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;	
	ResultSet rs= null; 
	int cnt = 0;
	userVO vo = null;
	boolean check = false;
	ArrayList<userVO> al = null;
	
	public void connection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id = "campus_b_4_1025";
			String db_pw = "smhrd4";
			conn = DriverManager.getConnection(url, db_id, db_pw);
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("연결실패");
		}
		
	}

	public void close() {
		try {
			if(rs!=null) {
				rs.close();
			}
			if(psmt!=null) {
				psmt.close();
			}
			if(conn!=null) {
				conn.close();
			}
		} catch (Exception e2) {
			e2.printStackTrace();
			
		}
	}
		
	public int join(String customer_id, String customer_pw, String customer_name, String customer_r_num,
					String customer_sex, String customer_phone, String customer_email) {
	
		try {
			connection();
			String sql="insert into customers values(?,?,?,?,?,?,?,null)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, customer_id);
			psmt.setString(2, customer_pw);
			psmt.setString(3, customer_name);
			psmt.setString(4, customer_r_num);
			psmt.setString(5, customer_sex);
			psmt.setString(6, customer_phone);
			psmt.setString(7, customer_email);
			
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("가입 실패1");
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;	
	}
	
	public userVO login(String customer_id, String customer_pw) {
	
		try {
			connection();
			String sql = "select customer_id, customer_pw, customer_name, customer_r_num, customer_sex, customer_phone, customer_email from customers where customer_id = ? and customer_pw = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, customer_id);
			psmt.setString(2, customer_pw);
			rs = psmt.executeQuery();
			
			if(rs.next()==true) {
				System.out.println("로그인성공!");
				String get_id = rs.getString(1);
				String get_pw = rs.getString(2);
				String get_name = rs.getString(3);
				String get_r_num = rs.getString(4);
				String get_sex = rs.getString(5);
				String get_phone = rs.getString(6);
				String get_email = rs.getString(7);
				
				
				vo = new userVO(get_id, get_pw, get_name, get_r_num,get_sex,get_phone,get_email);
			}
			else{
				System.out.println("로그인실패!!!");
				//response.sendRedirect("main.jsp");
			}
			
		} catch (Exception e) {
			System.out.println("로그인실패!");
			//response.sendRedirect("main.jsp");
			e.printStackTrace();
		}finally {
			close();
		}
		return vo;
			
	}

	public int update(String customer_id, String customer_pw, String customer_phone,String customer_email) {
			  
		try {
			connection();
			String sql="update customers set customer_pw=?,customer_phone=?,customer_email=? where customer_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, customer_pw);
			psmt.setString(2, customer_phone);
			psmt.setString(3, customer_email);
			psmt.setString(4, customer_id);
			
			cnt = psmt.executeUpdate();
	
		} catch (Exception e) {
			System.out.println("수정 실패");
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}

	public boolean idCheck(String customer_id) {
		try {
			connection();
			String sql = "select customer_id from customers where customer_id = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, customer_id);
			
			rs = psmt.executeQuery();
		
			if(rs.next()) {
				
				check = true;
			}
			else{
				
				check = false;
			}
			
		} catch (Exception e) {
			System.out.println("로그인실패!");
			
			e.printStackTrace();
		}finally {
			close();
		}
		return check;
	}
		

}
