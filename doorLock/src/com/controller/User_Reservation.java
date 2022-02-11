package com.controller;

import java.io.IOException;
import java.text.DateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/User_Reservation")
public class User_Reservation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String room_num = request.getParameter("thema");
		String inTime = request.getParameter("time");
		String in_date = request.getParameter("inputDate");
		String out_date = request.getParameter("outputDate");
		
		HttpSession session = request.getSession();
		session.setAttribute("inTime", inTime);
		session.setAttribute("in_date", in_date);
		session.setAttribute("out_date", out_date);
		session.setAttribute("room_num", room_num);
		response.sendRedirect("WebContent/homepage/include/booking2.jsp");
		
	}

}
