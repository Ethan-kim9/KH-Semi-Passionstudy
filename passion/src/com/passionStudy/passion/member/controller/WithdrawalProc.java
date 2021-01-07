package com.passionStudy.passion.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 없어도 될 듯.
// 회원탈퇴(a태그) 클릭시 memNo을 주소창에 붙여서 같이 넘겨줌. 이걸 받아서 회원탈퇴 jsp에 뿌려줄 거임.(단순히 memNo만 뿌려주기 위한 서블릿)
@WebServlet("/WithdrawalProc.do")
public class WithdrawalProc extends HttpServlet {
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		reqPro(request, response);
			
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		reqPro(request, response);
	}
	
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//한글처리
		request.setCharacterEncoding("utf-8");
		
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		
		request.setAttribute("memNo", memNo);
		
		RequestDispatcher dis = request.getRequestDispatcher("mypage_withdrawal.jsp");
		dis.forward(request, response);
		
	}
	
	

}
