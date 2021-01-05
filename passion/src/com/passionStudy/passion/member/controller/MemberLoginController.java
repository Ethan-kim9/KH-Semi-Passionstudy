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
@WebServlet("")
public class MemberLoginController extends HttpServlet {
	public MemberLoginController() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");

		String memId = req.getParameter("userid");
		String memPwd = req.getParameter("userpassword");
		
		MemberVo loginMember = null;
		try {
			loginMember = new MemberService().loginMember(memId, memPwd);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(loginMember == null) { 

			// 로그인 실패
			req.setAttribute("loginFail", "아이디 혹은 비밀번호를 잘못 입력하셨거나 가입하지 않은 아이디 입니다.");
			req.getRequestDispatcher("views/member/member_login.jsp").forward(req, resp);

		}else { 

			// 로그인 성공
			HttpSession session = req.getSession();
			session.setAttribute("loginMember", loginMember);
			session.setMaxInactiveInterval(-1);
			resp.sendRedirect(req.getContextPath());

		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}


}
