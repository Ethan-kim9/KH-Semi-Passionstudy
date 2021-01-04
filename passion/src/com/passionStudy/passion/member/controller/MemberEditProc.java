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
		
		// 회원정보가 수정됐다고 자바스크립트 alert창 띄워주고 다시 회원정보수정창으로 돌아와야 하는데...
		
		RequestDispatcher dis = request.getRequestDispatcher("mypage_edit.jsp");
		dis.forward(request, response);
	}

}
