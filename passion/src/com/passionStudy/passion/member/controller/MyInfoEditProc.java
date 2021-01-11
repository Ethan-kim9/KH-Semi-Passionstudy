package com.passionStudy.passion.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.passionStudy.passion.member.model.vo.MemberVo;


@WebServlet("/MyInfoEditProc")
public class MyInfoEditProc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public MyInfoEditProc() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		String memName = loginMember.getMemName();
		String email = loginMember.getMemId();
		String phone = loginMember.getMemPhone();
		
		request.setAttribute("memName", memName);
		request.setAttribute("email", email);
		request.setAttribute("phone", phone);
		System.out.println(memName);
		System.out.println(email);
		System.out.println(phone);
		
		RequestDispatcher dis = request.getRequestDispatcher("index.jsp?inc=./views/mypage/mypage_edit.jsp");
		dis.forward(request, response);
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
