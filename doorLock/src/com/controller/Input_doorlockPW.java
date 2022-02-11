package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.DoorlockDAO;
import com.VO.DoorLockVO;
import com.google.gson.Gson;


@WebServlet("/Input_doorlockPW")
public class Input_doorlockPW extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		System.out.println("input_pw");
		PrintWriter out = response.getWriter();
		DoorLockVO vo;
		
		String doorlockPW = request.getParameter("doorlockPW");
		String is_checkin = request.getParameter("is_checkin");
		String reservation_num = request.getParameter("reservation_num");

		DoorlockDAO dao = new DoorlockDAO();
		int isSuccess = dao.update(doorlockPW,reservation_num);
		
		vo = dao.getCustomerPW(reservation_num);
		System.out.println("비밀번호 변경 확인 : "+vo.getDoorlockPW());

		if(isSuccess==1) { //비밀번호 변경이 성공
			out.print("success");
		}else {//비밀번호 변경 실페
			out.print("fail");
		}		

	}

}
