package com.passionStudy.passion.manager.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.manager.model.service.ManagerCouponService;

/**
 * Servlet implementation class ManagerUpdateCouponController
 */
@WebServlet("/manager.UpdateCoupon")
public class ManagerUpdateCouponController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerUpdateCouponController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String memNo = (String)request.getParameter("memno");
		String toDo  = (String)request.getParameter("pushedbtn");
		System.out.println("멤버 번호" + memNo);
		System.out.println("누른 버튼" + toDo);
		int result = 0;
		switch (toDo) {
		case "1":
				result = new ManagerCouponService().insertCoupon3(memNo);
			break;
		case "2":
				result = new ManagerCouponService().insertCoupon5(memNo);
			break;
		}
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
