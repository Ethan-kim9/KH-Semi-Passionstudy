package com.passionStudy.passion.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.passionStudy.passion.member.model.service.MemberService;
import com.passionStudy.passion.member.model.vo.MemberVo;

@SuppressWarnings("serial")
@WebServlet("/login.do")
public class MemberLoginController extends HttpServlet {
	 /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberLoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		String memId = request.getParameter("userid");
		String memPwd = request.getParameter("userpwd");
		
		System.out.println("유저 입력 아이디 : " + memId);
		System.out.println("유저 입력 비밀번호 : " + memPwd);
		
		MemberVo loginMember = new MemberService().loginMember(memId, memPwd); //데이터가 담긴 MemberVo 객체

		if(loginMember == null) { 
			// 로그인 실패
			out.println("<script>alert('아이디 또는 비밀번호를 확인해 주세요.');</script>");
			request.getRequestDispatcher("views/member/member_login.jsp").forward(request, response);
			
		}else { 
			// 로그인 성공
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);
			session.setMaxInactiveInterval(-1);
			request.getRequestDispatcher("index.jsp").forward(request, response);		
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
