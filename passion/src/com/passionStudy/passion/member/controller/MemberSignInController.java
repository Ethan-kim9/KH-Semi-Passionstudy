package com.passionStudy.passion.member.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.member.model.service.MemberService;
import com.passionStudy.passion.member.model.vo.MemberVo;

@WebServlet("")
public class MemberSignInController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public MemberSignInController() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String memId = req.getParameter("userid");
		String memPwd = req.getParameter("userpassword");
		String memName = req.getParameter("username");
		String memPhone = req.getParameter("userphnumber");
		String memAdAgree = req.getParameter("");	// .....광고 동의.....
		String memToken1 = req.getParameter("");
		String memToken2 = req.getParameter("");
		
		MemberVo mv = new MemberVo(memId, memPwd, memName, memPhone, memAdAgree, memToken1, memToken2);
		
		int result = 0;
		try {
			result = new MemberService().insertMember(mv);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		if(result>0) {
			// 회원가입 성공
			req.setAttribute("result", "회원가입 성공");
			req.setAttribute("userid", memId);
			req.setAttribute("username", memName);
			
			req.getRequestDispatcher("views/member/member_signin.jsp").forward(req, resp);
		}else {
			// 회원가입 실패
			req.setAttribute("result", "회원가입 실패");
			req.getRequestDispatcher("views/member/member_signin.jsp").forward(req, resp);
			
		}
	
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

	
}
