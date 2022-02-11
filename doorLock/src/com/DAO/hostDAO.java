package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.VO.hostVO;

public class hostDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;	
	ResultSet rs= null; 
	int cnt = 0;
	hostVO vo1 = null;
	boolean check = false;
	ArrayList<hostVO> al = null;
	
	
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
		
public int join(String host_id, String host_pw, 
				String host_name, String host_phone, 
				String host_email) {
				
		connection();
	
		try {
			String sql="insert into host values(?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, host_id);
			psmt.setString(2, host_pw);
			psmt.setString(3, host_name);
			psmt.setString(4, host_phone);
			psmt.setString(5, host_email);
			
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("가입 실패1");
			e.printStackTrace();
		}finally {
			close(); 
		}
		return cnt;	
	}	

	public hostVO login(String host_id, String host_pw) {
	
		try {
			connection();
			String sql = "select host_id, host_pw, host_name, host_phone, host_email from host where host_id = ? and host_pw = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, host_id);
			psmt.setString(2, host_pw);
			rs = psmt.executeQuery();
			
			if(rs.next()==true) {
				System.out.println("로그인성공!");
				String get_id = rs.getString(1);
				String get_pw = rs.getString(2);
				String get_name = rs.getString(3);
				String get_phone = rs.getString(4);
				String get_email = rs.getString(5);
				
				
				vo1 = new hostVO(get_email, get_pw, get_name, get_phone, get_email);
			}
			else{
				System.out.println("로그인실패!!!");
				//response.sendRedirect("main.jsp");
			}
			
		} catch (Exception e) {
			System.out.println("로그인실패!!");
			//response.sendRedirect("main.jsp");
			e.printStackTrace();
		}finally {
			close();
		}
		return vo1;
			
	}


	public int update(String host_id, String host_pw, 
					  String host_phone,String host_email) {
				  
		
		try {
			connection();
			String sql="update host set host_pw=?, host_phone=?, host_email=? where host_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, host_pw);
			psmt.setString(2, host_phone);
			psmt.setString(3, host_email);
			psmt.setString(4, host_id);
			
			cnt = psmt.executeUpdate();
			
			
			
		} catch (Exception e) {
			System.out.println("수정 실패");
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}	

	public boolean idCheck(String host_id) {
		try {
			connection();
			String sql = "select host_id from host where host_id = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, host_id);
			
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
