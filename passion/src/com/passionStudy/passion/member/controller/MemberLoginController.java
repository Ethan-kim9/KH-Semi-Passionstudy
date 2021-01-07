package com.passionStudy.passion.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.passionStudy.passion.member.model.service.MemberService;
import com.passionStudy.passion.member.model.vo.MemberVo;

@WebServlet("/login.do")
public class MemberLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	public MemberLoginController() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String memId = request.getParameter("userid");
		String memPwd = request.getParameter("userpwd");
		
		System.out.println("유저 입력 아이디 : " + memId);
		System.out.println("유저 입력 비밀번호 : " + memPwd);
		
		MemberVo loginMember = new MemberService().loginMember(memId, memPwd); //데이터가 담긴 MemberVo 객체

		if(loginMember == null) { 
			// 로그인 실패
			request.setAttribute("loginFail", "아이디 또는 비밀번호를 확인해 주세요.");
			request.getRequestDispatcher("index.jsp?inc=./views/member/member_login.jsp").forward(request, response);
			
		}else { 
			// 로그인 성공
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);
			session.setMaxInactiveInterval(-1);
			request.getRequestDispatcher("index.jsp").forward(request, response);		
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
