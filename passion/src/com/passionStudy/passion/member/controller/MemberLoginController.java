package com.passionStudy.passion.member.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.passionStudy.passion.member.model.service.MemberService;
import com.passionStudy.passion.member.model.vo.MemberVo;

@SuppressWarnings("serial")
@WebServlet("/menu.MemberLogin")
public class MemberLoginController extends HttpServlet {
	public MemberLoginController() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String memId = request.getParameter("userid");
		String memPwd = request.getParameter("userpassword");
		
		System.out.println("고객 입력 아이디 : " + memId);
		System.out.println("고객 입력 비밀번호 : " + memPwd);
		

		MemberVo loginMember = null;
		try {
			loginMember = new MemberService().loginMember(memId, memPwd);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		if(loginMember == null) { 

			// 로그인 실패
			request.setAttribute("loginFail", "아이디 또는 비밀번호를 확인해 주세요.");
			request.getRequestDispatcher("/views/member/member_login.jsp").forward(request, response);

		}else { 

			// 로그인 성공
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);
			session.setMaxInactiveInterval(-1);
			response.sendRedirect(request.getContextPath());
			

		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}


}
