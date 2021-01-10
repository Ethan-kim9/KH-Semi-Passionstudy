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

@WebServlet(name="FindPwd", urlPatterns = {"/findPwd"})
public class MemberFindPwdController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public MemberFindPwdController() {
		super();
	}
	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");

		String memId = request.getParameter("userid");
		String memName = request.getParameter("username");
		String memPhone = request.getParameter("userphnumber");
		
		MemberVo findPwdMember = new MemberService().findPwdMember(memId, memName, memPhone);
		
		if(findPwdMember != null) {
			request.setAttribute("findPwdMember", findPwdMember);
			request.getRequestDispatcher("index.jsp?inc=./views/member/find_pwd_complete.jsp").forward(request, response);
		}else {
			request.setAttribute("msg", "비밀번호 찾기 실패!");
			request.getRequestDispatcher("index.jsp?inc=./views/member/member_find.jsp").forward(request, response);
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
