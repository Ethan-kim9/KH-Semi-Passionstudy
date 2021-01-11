package com.passionStudy.passion.manager.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.manager.model.service.ManagerCouponService;
import com.passionStudy.passion.manager.model.vo.ManagerCouponVo;

/**
 * Servlet implementation class ManagerCouponColtroller
 */
@WebServlet("/manager.listCoupon")
public class ManagerCouponController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerCouponController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String memNo = (String)request.getParameter("memno");
		String memName = (String)request.getParameter("memname");
		String memPhone = (String)request.getParameter("memphone");
		
		ArrayList<ManagerCouponVo> list = new ManagerCouponService().listCoupon(memNo);
		request.setAttribute("list", list);
		request.setAttribute("memName", memName);
		request.setAttribute("memNo", memNo);
		request.setAttribute("memPhone",memPhone);
		request.getRequestDispatcher("views/manager/manager_coupon.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
