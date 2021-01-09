package com.passionStudy.qnaBoard.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.passionStudy.passion.member.model.vo.MemberVo;

@WebServlet ("/member.manager.check.do")
public class memberOrManagerController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(req, resp);
	}
	
	private void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		HttpSession session = req.getSession(false);
		final String manager = "A";
		final String user = "B";
		String message = "로그인 안하면 페이지 안보여줌 숙5";
		
		MemberVo check = (MemberVo)session.getAttribute("loginMember");
		
//			if(manager.equals(check.getMemStatus())) {
//				System.out.println("관리자임");
//				req.setAttribute("user", user);
//				RequestDispatcher rd = req.getRequestDispatcher("index.jsp?inc=./views/board/qna/board_qna_member_list.jsp");
//				rd.forward(req, resp);
//			} else if (user.equals(check.getMemStatus())) {
//				req.setAttribute("user", user);
//				System.out.println("일반유저");
//				RequestDispatcher rd = req.getRequestDispatcher("index.jsp?inc=./views/board/qna/board_qna_member_list.jsp");
//				rd.forward(req, resp);
//			} else
			
			System.out.println("비회원");
			req.setAttribute("msg", message);
			RequestDispatcher rd = req.getRequestDispatcher("index.jsp?inc=./views/board/qna/board_qna_member_list.jsp");
			rd.forward(req, resp);
			
			
		
		
		
		
	}
}
