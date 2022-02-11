package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.hostDAO;


@WebServlet("/hostJoin")
public class hostJoin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		response.setContentType("text/html; charset=EUC-KR");
		PrintWriter writer = response.getWriter();
		
		String host_id = request.getParameter("host_id");
		String host_pw = request.getParameter("host_pw");
		String host_name = request.getParameter("host_name");
		String host_phone = request.getParameter("host_phone");
		String host_email = request.getParameter("host_email");
		
		hostDAO dao = new hostDAO();
		int cnt =  dao.join(host_id, host_pw, host_name, host_phone, host_email);
		
		if(cnt>0) {
			System.out.println("host join success");
			writer.print("<script>alert('호스트 가입 완료! 메인페이지에서 로그인해주세요.'); location.href='main.jsp'</script>");
			
		}else {
			System.out.println("host join fail");
			writer.print("<script>alert('회원가입 실패'); location.href='main.jsp'</script>");
		}
	}

}
