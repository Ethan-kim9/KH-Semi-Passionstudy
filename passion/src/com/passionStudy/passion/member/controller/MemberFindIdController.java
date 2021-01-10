package com.passionStudy.passion.member.controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.member.model.service.MemberService;
import com.passionStudy.passion.member.model.vo.MemberVo;

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
		
		System.out.println(memName);
		System.out.println(memPhone);
		MemberVo findIdMember = new MemberService().findIdMember(memName, memPhone);
		
		// 뷰처리
		if(findIdMember != null) {
			// 계정있음
			request.setAttribute("findIdMember", findIdMember);
			request.setAttribute("memName", memName);
			request.setAttribute("memPhone", memPhone);
			request.getRequestDispatcher("index.jsp?inc=./views/member/find_id_complete.jsp").forward(request, response);
			
			
		}else {
			request.setAttribute("findIdFail", "정확한 정보를 입력해 주세요!");
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