package com.passionStudy.passion.manager.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.manager.model.service.ManagerSalesService;
import com.passionStudy.passion.manager.model.vo.ManagerSalesVo;

/**
 * Servlet implementation class ManagerSalesViewBetweenController
 */
@WebServlet("/manager.SalesView.Between")
public class ManagerSalesViewBetweenController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerSalesViewBetweenController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	String fromDate = 	(String)request.getParameter("fromDate");
	String toDate = 	(String)request.getParameter("toDate");
	
	System.out.println("시작 날짜? : "+ fromDate.toString());
	System.out.println("끝    날짜? : "+toDate.toString());
	
	ArrayList<ManagerSalesVo> list = new ManagerSalesService().salesSearchBewteen(fromDate,toDate);
   
	request.setAttribute("list", list);
    request.setAttribute("fromDate", fromDate);
    request.setAttribute("toDate",toDate);
    for(ManagerSalesVo msv :list) {
    	System.out.println(msv.toString());
    }
	
	request.getRequestDispatcher("index.jsp?inc=./views/manager/manager_salesview_between.jsp").forward(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
