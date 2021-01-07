package com.passionStudy.passion.member.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.member.model.service.MemberService;

@WebServlet("/signin.do")
public class MemberSignInController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public MemberSignInController() {
		super();
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String memId = request.getParameter("userid");
		String memPwd = request.getParameter("userpwd");
		String memName = request.getParameter("username");
		String memPhone = request.getParameter("userphnumber");
		System.out.println(memId);
		System.out.println(memPhone);
		
		
		int result = 0;
		try {
			result = new MemberService().insertMember(memId, memPwd, memName, memPhone);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		if(result>0) {
			// 회원가입 성공
			request.setAttribute("result", "회원가입 성공");
			request.setAttribute("memId", memId);
			request.setAttribute("memName", memName);
			
			request.getRequestDispatcher("/views/member/member_signin_complete.jsp").forward(request, response);
		}else {
			// 회원가입 실패
			request.setAttribute("result", "회원가입 실패");
			request.getRequestDispatcher("/views/member/member_signin.jsp").forward(request, response);
			
		}
	
	}

	
}
