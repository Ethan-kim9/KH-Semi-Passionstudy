package com.passionStudy.passion.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.member.model.dao.MyPageDao;

// 비밀번호 변경jsp에서 num을 파라미터로 넘겨서 서블릿으로 보냄
@WebServlet("/MyPageChangePwdProc.do")
public class MyPageChangePwdProc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		reqPro(request, response);
	}

	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 한글 처리
		request.setCharacterEncoding("utf-8");
		
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		String inputpassword = request.getParameter("inputpassword");
		request.getParameter("password1");
		
		MyPageDao mdao = new MyPageDao();
		String password = mdao.getPass(memNo);
		
	}
}
