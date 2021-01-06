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

@WebServlet("/signin.do")
public class MemberSignInController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public MemberSignInController() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String memId = request.getParameter("userid");
		String memPwd = request.getParameter("userpassword");
		String memName = request.getParameter("username");
		String memPhone = request.getParameter("userphnumber");
		String[] memAdAgree = request.getParameterValues("chktmp");	// .....광고 동의.....
		
		for (int i=0; i<memAdAgree.length; i++) {
			if(memAdAgree[i] != "") {
				String chktmp = memAdAgree[i] + "+" ;
			}
		}
		MemberVo mv = new MemberVo();
		
		int result = 0;
		try {
			result = new MemberService().insertMember(mv);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(result>0) {
			// 회원가입 성공
			request.setAttribute("result", "회원가입 성공");
			request.setAttribute("memId", memId);
			request.setAttribute("memName", memName);
			
			request.getRequestDispatcher("views/member/member_signin.jsp").forward(request, response);
		}else {
			// 회원가입 실패
			request.setAttribute("result", "회원가입 실패");
			request.getRequestDispatcher("views/member/member_signin.jsp").forward(request, response);
			
		}
	
	}

	
}