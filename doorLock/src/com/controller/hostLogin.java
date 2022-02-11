package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.hostDAO;
import com.VO.hostVO;
import com.VO.userVO;


@WebServlet("/hostLogin")
public class hostLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String host_id = request.getParameter("host_id");
		String host_pw = request.getParameter("host_pw");
		hostDAO dao = new hostDAO();
		hostVO vo1 = dao.login(host_id, host_pw);
		if(vo1!=null) {
			HttpSession session= request.getSession();
			session.setAttribute("host", vo1);
			response.sendRedirect("hostMain.jsp");	
		
		}else {
			System.out.println("host login fail");
			response.sendRedirect("main.jsp");	
		}
		
	
	
	}

}
