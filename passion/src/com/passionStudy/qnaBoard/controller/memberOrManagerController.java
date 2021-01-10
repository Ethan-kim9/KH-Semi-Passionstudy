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
		String managerCheck = "A";
		String userCheck = "N";
		final String manager = "관리자";
		final String user = "회원";
		final String nonMember = "비회원";

		HttpSession session = req.getSession(false);

		
		
		if (session != null) {
			MemberVo check = (MemberVo)session.getAttribute("loginMember");
			if(check != null) {
				if(managerCheck.equals(check.getAdminCheck())) {
					System.out.println(check.getAdminCheck());
					req.setAttribute("manager", manager);
				} else if (userCheck.equals(check.getAdminCheck())) {
					System.out.println(check.getAdminCheck());
					req.setAttribute("user", user);
				}
			} // if(check != null)
			else {
				System.out.println(nonMember);
				req.setAttribute("nonMember", nonMember);			
			}
		} // if (session != null) 
		else {
			System.out.println(nonMember);
			req.setAttribute("nonmember", nonMember);
		}
		RequestDispatcher rd = req.getRequestDispatcher("index.jsp?inc=./views/board/qna/board_qna_member_list.jsp");
		rd.forward(req, resp);
	}
}

