package com.passionStudy.passion.manager.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.manager.model.service.ManagerProductService;

/**
 * Servlet implementation class ManagerProductEditController
 */
@WebServlet("/manager.editroom")
public class ManagerProductEditController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerProductEditController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String roomNo = request.getParameter("roomno");
		String roomStatus = request.getParameter("roomStatus");
		System.out.println(roomNo);
		System.out.println(roomStatus);
		String newType= null;
		
		if(roomStatus.equals("true")) {
			newType = "X";
		}else 
			newType = "O";
		
		int result = new ManagerProductService().editRoomType(roomNo,newType);
		
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
