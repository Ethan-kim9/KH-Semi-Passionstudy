package com.passionStudy.passion.member.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

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
		
		try {
			ArrayList<MemberVo> list = new MemberService().loginMember(memId, memPwd);
			request.setAttribute("list", list);
			for(MemberVo mv : list) {
				System.out.println(mv.getMemId());
			}
			System.out.println();
			request.getRequestDispatcher("index.jsp");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
					
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}


}
