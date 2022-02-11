package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/User_Reservation2")
public class User_Reservation2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String guestnumber= request.getParameter("guestnumber");
		HttpSession session = request.getSession();
		session.setAttribute("guestnumber", guestnumber);
		response.sendRedirect("WebContent/homepage/include/booking3.jsp");
	}

}
