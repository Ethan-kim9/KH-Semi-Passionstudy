package com.passionStudy.passion.reservation.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.reservation.model.service.ProductService;
import com.passionStudy.passion.reservation.model.vo.ProductVo;


@WebServlet(urlPatterns = "/reservation.do")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String url = "index.jsp?inc=./views/reservation/reservation_roominfo.jsp";

	public ProductController() {
			super();
		}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		int roomNo = Integer.parseInt(req.getParameter("roomNo"));
		int searchCalDate = Integer.parseInt(req.getParameter("searchCalDate"));
		String checkOX = req.getParameter("checkOX");

		System.out.println("방번호 : " + roomNo);
		System.out.println("선택날짜 : " + searchCalDate);
		System.out.println("사용여부 : " + checkOX);
		
		ProductVo pv = new ProductService().selectRoomData(roomNo, searchCalDate, checkOX);

		req.setAttribute("pv", pv);

		req.getRequestDispatcher(url).forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}

}
