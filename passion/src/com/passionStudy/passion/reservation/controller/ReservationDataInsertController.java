package com.passionStudy.passion.reservation.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.reservation.model.service.ReservationService;

@WebServlet(urlPatterns = "/reservation.payment")
public class ReservationDataInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ReservationDataInsertController() {
		super();
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		int memNo = Integer.parseInt(req.getParameter("member_no"));
		String resName = (String) req.getParameter("reservationName");
		String resEmail = (String) req.getParameter("email_total");
		String resPhone = (String) req.getParameter("tel_total");
		int resProson = Integer.parseInt(req.getParameter(""));
		String resTime = (String) req.getParameter("");
		String resMet = (String) req.getParameter("");
		int resPrice = Integer.parseInt(req.getParameter(""));
		String resInfo = (String) req.getParameter("");
		int resMon = Integer.parseInt(req.getParameter(""));
		int resCom = Integer.parseInt(req.getParameter(""));
		int resPro = Integer.parseInt(req.getParameter(""));
		String resMsg = (String) req.getParameter("");

		int result = (int)new ReservationService().reservationInsert(memNo, resName, resEmail, resPhone, resProson, resTime, resMet, resPrice, resInfo, resMon, resCom, resPro, resMsg);
		if(result >0) {
			System.out.println("성공");
		}else System.out.println("망");
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
}
