package com.passionStudy.passion.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.member.model.dao.MemberDao;
import com.passionStudy.passion.member.model.vo.MemberVo;

// 회원 정보 수정 페이지에 데이터 쏴주는 서블릿 / 마이페이지 클릭시 마이페이지에 쏴줘도 됨.
@WebServlet("/MemberInformCon")
public class MemberInformCon extends HttpServlet {

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		reqPro(request, response);
	}
	
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		int mNum = Integer.parseInt(request.getParameter("num"));

		MemberDao mdao = new MemberDao();
		MemberVo mvo = mdao.oneSelectMember(mNum);
		
		// jsp쪽으로 넘겨줌
		if(mvo != null) {
			request.setAttribute("mvo", mvo);
			
			RequestDispatcher dis = request.getRequestDispatcher("mypage_edit.jsp"); // "mypage.jsp"도 중복 가능.
			dis.forward(request, response);
		}else {
			response.sendRedirect("/");
		}
		
	}

}
