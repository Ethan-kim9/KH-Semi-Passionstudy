package com.passionStudy.passion.reservation.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.reservation.model.service.ProductService;
import com.passionStudy.passion.reservation.model.vo.ProductVo;

@WebServlet(urlPatterns = "/reservation.userinfo")
public class UserinfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String url = "index.jsp?inc=./views/reservation/reservation_userinfo.jsp";

	public UserinfoController() {
			super();
		}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.getRequestDispatcher(url).forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}

}
