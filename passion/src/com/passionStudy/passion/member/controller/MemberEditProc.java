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

// 회원정보수정 클릭 했을 때 넘어온 데이터를 처리해주는 서블릿
@WebServlet("/EditProc")
public class MemberEditProc extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		reqPro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		reqPro(request, response);
	}
	
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 한글처리
		request.setCharacterEncoding("utf-8");
		
		MemberVo vo = new MemberVo();
		
		vo.setMemPhone(request.getParameter("phone"));
		vo.setMemAdAgree(request.getParameter("adagree"));
		
		// 데이터베이스 객체 생성
		MemberDao mdao = new MemberDao();
		mdao.updateInfoMember(vo);
		
		// 수정완료 팝업 창
		request.setAttribute("msg", "정보 수정이 완료 되었습니다.");
		RequestDispatcher dis = request.getRequestDispatcher("mypage_edit.jsp");
		dis.forward(request, response);
	}

}
