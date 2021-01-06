package com.passionStudy.passion.member.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.passionStudy.passion.member.model.dao.MemberDao;
import com.passionStudy.passion.member.model.service.MemberService;
import com.passionStudy.passion.member.model.vo.MemberVo;

@SuppressWarnings("serial")
@WebServlet("/login.do")
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
		
		MemberDao dao = new MemberDao();
		int result = 0;
		try {
			result = dao.loginMember(memId, memPwd);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("DB 조회 결과값 :" + result + "(성공 : 1 / 비밀번호 오류 : 0 / 아이디없음 : -1 / db오류 :-2)");
		
		if(result == 0) {
			//로그인성공시
			HttpSession session = request.getSession();
			
			session.setAttribute("loginMember", true);
			session.setAttribute("memId", memId);	
			session.setAttribute("memPwd", memPwd);
			
			response.sendRedirect(request.getContextPath());
		}else {
			// 실패
			request.setAttribute("loginFail", "ID 혹은 비밀번호를 잘못 입력하셨거나 가입하지 않은 ID 입니다.");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}


	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}


}
