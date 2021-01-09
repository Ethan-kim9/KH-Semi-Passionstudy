package com.passionStudy.passion.member.controller;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.member.model.service.MemberService;

@WebServlet("/findId.do")
public class MemberFindIdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public MemberFindIdController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String memName = request.getParameter("username");
		String memPhone = request.getParameter("userphnumber");
		
		String findId = null;
		try {
			findId = new MemberService().findIdMember(memName, memPhone);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if(findId.equals("")) {
			request.setAttribute("result", "아이디찾기 실패!");
			request.getRequestDispatcher("views/member/member_find.jsp").forward(request, response);
			
		}else {
			request.setAttribute("result", "아이디찾기 성공!");
			request.setAttribute("findId", findId);
			request.setAttribute("memName", memName);
			request.getRequestDispatcher("views/member/member_find.jsp").forward(request, response);
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