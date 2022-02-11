package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.userDAO;
import com.VO.userVO;


@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String customer_id = request.getParameter("customer_id");
		String customer_pw = request.getParameter("customer_pw");
		userDAO dao = new userDAO();
		userVO vo = dao.login(customer_id, customer_pw);
		if(vo!=null) {
			HttpSession session= request.getSession();
			session.setAttribute("user", vo);
			response.sendRedirect("main.jsp");	
		
		}else {
			System.out.println("로그인 실패");
			
			//response.sendRedirect("main.jsp");	
		}
		System.out.println(vo.getCustomer_id());
	
	}

}
