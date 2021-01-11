package com.passionStudy.passion.reservation.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.reservation.model.service.ProductService;
import com.passionStudy.passion.reservation.model.service.ReservationService;

@WebServlet(urlPatterns = "/reservation.do.payment")
public class PaymentDataInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PaymentDataInsertController() {
		super();
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");

		int memNo = Integer.parseInt(req.getParameter("member_no"));
		int firstTimeData = Integer.parseInt(req.getParameter("firstTimeData"));
		int secondTimeData = Integer.parseInt(req.getParameter("secondTimeData"));
		int thirdTimeData = Integer.parseInt(req.getParameter("thirdTimeData"));
		int fourthTimeData = Integer.parseInt(req.getParameter("fourthTimeData"));
		int fifthTimeData = Integer.parseInt(req.getParameter("fifthTimeData"));
		int lastTimeData = Integer.parseInt(req.getParameter("lastTimeData"));
		
		String one = "1";
		String two = "2";
		String three = "3";
		String four = "4";
		String five = "5";
		String six = "6";
		
		String resName = (String) req.getParameter("reservationName");
		String resEmail = (String) req.getParameter("email_total");
		String resPhone = (String) req.getParameter("tel_total");
		int resProson = Integer.parseInt(req.getParameter("countUsers"));
		//time부분에 timedata를 넣을것인가? 1 2 3 4 5 6 넣음
		String resMet = (String) req.getParameter("resMet");//결제형식 P 아니면 C
		int resPrice = Integer.parseInt(req.getParameter("totalPrice"));
		int usePoint = Integer.parseInt(req.getParameter("usePoint"));
		int totalPrice = resPrice - usePoint;
		String resInfo = (String) req.getParameter("resInfo");//결제형식 C O P현장결제
		int resMon = Integer.parseInt(req.getParameter("monitor"));
		int resCom = Integer.parseInt(req.getParameter("computer"));
		int resPro = Integer.parseInt(req.getParameter("projector"));
		String resMsg = (String) req.getParameter("userMsg");
		
		if(firstTimeData != 0) {
			int result1 = new ProductService().insertProductData(memNo, firstTimeData);
			int result2 = new ReservationService().reservationInsert(memNo, resName, resEmail, resPhone, resProson, one, resMet, totalPrice, resInfo, resMon, resCom, resPro, resMsg);
			System.out.println(result1 + result2);
		}
		if(secondTimeData != 0) {
			int result1 = new ProductService().insertProductData(memNo, secondTimeData);
			int result2 = new ReservationService().reservationInsert(memNo, resName, resEmail, resPhone, resProson, two, resMet, totalPrice, resInfo, resMon, resCom, resPro, resMsg);			
			System.out.println(result1 + result2);
		}
		if(thirdTimeData != 0) {
			int result1 = new ProductService().insertProductData(memNo, thirdTimeData);
			int result2 = new ReservationService().reservationInsert(memNo, resName, resEmail, resPhone, resProson, three, resMet, totalPrice, resInfo, resMon, resCom, resPro, resMsg);
			System.out.println(result1 + result2);
		}
		if(fourthTimeData != 0) {
			int result1 = new ProductService().insertProductData(memNo, fourthTimeData);
			int result2 = new ReservationService().reservationInsert(memNo, resName, resEmail, resPhone, resProson, four, resMet, totalPrice, resInfo, resMon, resCom, resPro, resMsg);
			System.out.println(result1 + result2);
		}
		if(fifthTimeData != 0) {
			int result1 = new ProductService().insertProductData(memNo, fifthTimeData);
			int result2 = new ReservationService().reservationInsert(memNo, resName, resEmail, resPhone, resProson, five, resMet, totalPrice, resInfo, resMon, resCom, resPro, resMsg);
			System.out.println(result1 + result2);
		}
		if(lastTimeData != 0) {
			int result1 = new ProductService().insertProductData(memNo, lastTimeData);
			int result2 = new ReservationService().reservationInsert(memNo, resName, resEmail, resPhone, resProson, six, resMet, totalPrice, resInfo, resMon, resCom, resPro, resMsg);
			System.out.println(result1 + result2);
		}
		

		req.getRequestDispatcher("index.jsp").forward(req, resp);  
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
}
