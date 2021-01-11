package com.passionStudy.passion.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.member.model.service.MemberService;
import com.passionStudy.passion.member.model.vo.MemberVo;

@WebServlet("/IdDuplicatedCheckController")
public class IdDuplicatedCheckController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	   

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String memId = request.getParameter("userid");
		System.out.println(memId); // 입력받은 값 들어오는지 확인 
		
		MemberVo idDuplicatedCheck = new MemberService().idDuplicatedCheck(memId);
				
		if(idDuplicatedCheck == null) {
			request.setAttribute("result", true);
		}else {
			request.setAttribute("result", false);
		}
		request.setAttribute("memId", memId);
		request.getRequestDispatcher("/views/member/member_signin.jsp").forward(request, response);
		
	}	
}
