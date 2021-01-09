package com.passionStudy.passion.manager.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.manager.model.service.ManagerMemberService;

/**
 * Servlet implementation class ManagerEnrollBlacklistController
 */
@WebServlet("/manager.Black")
public class ManagerEnrollBlacklistController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerEnrollBlacklistController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String memNo = (String)request.getParameter("memno");
		String memStatus =(String)request.getParameter("memStatus");
		String newStatus = null;
		System.out.println(memNo);
		System.out.println(memStatus);
		
		if(memStatus.equals("true")) {
			newStatus = "B";
		}else
			newStatus = "N";
		
		int result = new ManagerMemberService().blackListEnroll(memNo,newStatus);
		
		if(result >0) {
			System.out.println("성공");
		}else
			System.out.println("망");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
