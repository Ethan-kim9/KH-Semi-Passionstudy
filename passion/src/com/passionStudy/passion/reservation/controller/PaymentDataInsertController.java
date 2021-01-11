package com.passionStudy.passion.reservation.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.reservation.model.service.ProductService;
import com.passionStudy.passion.reservation.model.service.ReservationService;

@WebServlet(urlPatterns = "/reservation.payment")
public class PaymentDataInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String url = "index.jsp?inc=./views/reservation/reservation_payment.jsp";

	public PaymentDataInsertController() {
		super();
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");

		req.getRequestDispatcher(url).forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
}
