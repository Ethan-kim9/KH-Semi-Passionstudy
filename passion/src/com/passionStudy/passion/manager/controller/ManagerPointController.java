package com.passionStudy.passion.manager.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.manager.model.service.ManagerMemberService;

/**
 * Servlet implementation class ManagerPointController
 */
@WebServlet("/manager.Point")
public class ManagerPointController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerPointController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String memNo = (String)request.getParameter("memno");
		String newPoint =(String)request.getParameter("memPoint");
		System.out.println("변경 멤버번호 : "+memNo);
		System.out.println("수정 포인트    : " +newPoint);
		
		int result = (int)new ManagerMemberService().changePoint(memNo,newPoint);
		if(result >0) {
			System.out.println("성공");
		}else System.out.println("망");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
