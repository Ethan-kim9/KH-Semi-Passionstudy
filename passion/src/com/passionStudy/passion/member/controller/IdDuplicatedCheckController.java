package com.passionStudy.passion.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.member.model.dao.MemberDao;

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
		
		
		MemberDao dao = new MemberDao();
		response.getWriter().write(dao.idDuplicatedCheck(memId)+ "");
				
		
	}	
}
