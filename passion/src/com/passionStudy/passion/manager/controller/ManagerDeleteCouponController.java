package com.passionStudy.passion.manager.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.manager.model.service.ManagerCouponService;

/**
 * Servlet implementation class ManagerDeleteCouponController
 */
@WebServlet("/manager.DelCoupon")
public class ManagerDeleteCouponController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerDeleteCouponController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String [] delarr = request.getParameterValues("delarr[]");
		String target = "";
		
		
		for(int i = 0; i<delarr.length; i++) {
			target +=delarr[i];
			if(i<delarr.length-1) {
				target+=",";
			}
		}
		int result = new ManagerCouponService().deleteCoupon(target);
		if(result>0) {
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
