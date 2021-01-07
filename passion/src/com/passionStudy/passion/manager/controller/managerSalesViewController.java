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
 * Servlet implementation class managerSalesViewController
 */
@WebServlet("/manager.SalesView")
public class managerSalesViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public managerSalesViewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String searchTime =(String)request.getParameter("searchTime");
		System.out.println(searchTime);
		String[] input = searchTime.split(" ");
		String 	month = input[0];
		String 	year  = input[1];
		
		System.out.println("검색할 년: " + year);
		System.out.println("검색할 월: " + month);
		

        switch(month){
            case "January":
                month = "01";
                break;
            case "February":
                month = "02";
                break;
            case "March":
                month = "03";
                break;
            case "April":
                month = "04";
                break;
            case "May":
                month = "05";
                break;
            case "June":
                month = "06";
                break;
            case "July":
                month = "07";
                break;
            case "August":
                month = "08";
                break;
            case "September":
                month = "09";
                break;
            case "October":
                month = "10";
                break;
            case "November":
                month = "11";
                break;
            case "December":
                month = "12";
                break;
        }
		
        String time  = year + "-" + month;
		
        ArrayList<ManagerSalesVo> list = new ManagerSalesService().salesSearch(time);
        
        request.setAttribute("list", list);
        request.setAttribute("year", year);
        request.setAttribute("month",month);
		request.getRequestDispatcher("index.jsp?inc=./views/manager/manager_salesview.jsp").forward(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
