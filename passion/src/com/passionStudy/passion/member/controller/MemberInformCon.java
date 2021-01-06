package com.passionStudy.passion.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.passionStudy.passion.member.model.dao.MemberDao;
import com.passionStudy.passion.member.model.dao.MyPageDao;
import com.passionStudy.passion.member.model.vo.MemberVo;

// 회원 정보 수정 페이지에 데이터 쏴주는 서블릿 / 마이페이지 클릭시 마이페이지에 쏴줘도 됨.
@WebServlet("/MemberInformCon.do")
public class MemberInformCon extends HttpServlet {

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		reqPro(request, response);
	}
	
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* int mNum = Integer.parseInt(request.getParameter("num")); */
		
		// 한글처리
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		String memId = (String) session.getAttribute("memId");
		
		MyPageDao mdao = new MyPageDao();
		MemberVo mvo = mdao.oneSelectMember(memId);
		
		// jsp쪽으로 넘겨줌
		if(mvo != null) {
			request.setAttribute("mvo", mvo); //한사람의 모든 정보가 담겨 있음
			RequestDispatcher dis = request.getRequestDispatcher("views/mypage/mypage_edit.jsp");
			dis.forward(request, response);
		}else {
			response.sendRedirect("/");
		}
		
	}

}
