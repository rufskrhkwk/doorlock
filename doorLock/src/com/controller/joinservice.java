package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.userDAO;


@WebServlet("/joinservice")
public class joinservice extends HttpServlet {
	


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");
		
		String customer_id = request.getParameter("customer_id");
		String customer_pw = request.getParameter("customer_pw");
		String customer_name = request.getParameter("customer_name");
		String customer_r_num = request.getParameter("customer_r_num");
		String customer_sex = request.getParameter("gender");
		String customer_phone = request.getParameter("customer_phone");
		String customer_email = request.getParameter("customer_email");
		HttpSession session = request.getSession();
		session.setAttribute("customer_name", customer_name);
		session.setAttribute("customer_phone", customer_phone);
		session.setAttribute("customer_email", customer_email);
		
		userDAO dao = new userDAO();
		int cnt =  dao.join(customer_id, customer_pw, customer_name, customer_r_num, customer_sex, customer_phone, customer_email);
		
		if(cnt>0) {
			System.out.println("가입성공!");
			response.sendRedirect("main.jsp");
			
		}else {
			System.out.println("가입 실패!");
		}
		
			
			
			
			
			
	}

}
