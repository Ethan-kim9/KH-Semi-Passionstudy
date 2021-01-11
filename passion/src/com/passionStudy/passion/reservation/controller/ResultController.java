package com.passionStudy.passion.reservation.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.reservation.model.service.ProductService;
import com.passionStudy.passion.reservation.model.service.ReservationService;

@WebServlet(urlPatterns = "/reservation.result")
public class ResultController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ResultController() {
		super();
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");

		int memNo = Integer.parseInt(req.getParameter("member_no"));
		int firstTimeDataInt = 0;
		int secondTimeDataInt = 0;
		int thirdTimeDataInt = 0;
		int fourthTimeDataInt = 0;
		int fifthTimeDataInt = 0;
		int lastTimeDataInt = 0;
		String firstTimeData = req.getParameter("firstTimeData");
		String secondTimeData = req.getParameter("secondTimeData");
		String thirdTimeData = req.getParameter("thirdTimeData");
		String fourthTimeData = req.getParameter("fourthTimeData");
		String fifthTimeData = req.getParameter("fifthTimeData");
		String lastTimeData = req.getParameter("lastTimeData");

		if (firstTimeData != null) {
			firstTimeDataInt = Integer.parseInt(firstTimeData);
		}
		if (secondTimeData != null) {
			secondTimeDataInt = Integer.parseInt(secondTimeData);
		}
		if (thirdTimeData != null) {
			thirdTimeDataInt = Integer.parseInt(thirdTimeData);
		}
		if (fourthTimeData != null) {
			fourthTimeDataInt = Integer.parseInt(fourthTimeData);
		}
		if (fifthTimeData != null) {
			fifthTimeDataInt = Integer.parseInt(fifthTimeData);
		}
		if (lastTimeData != null) {
			lastTimeDataInt = Integer.parseInt(lastTimeData);
		}

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
		// time부분에 timedata를 넣을것인가? 1 2 3 4 5 6 넣음
		String resMet = (String) req.getParameter("resMet");// 결제형식 P 아니면 C

		String resPrice = req.getParameter("totalPrice");
		int resPriceInt = 0;
		if (resPrice != null) {
			resPriceInt = Integer.parseInt(resPrice);
		}
		String usePoint = req.getParameter("usePoint");
		int usePointInt = 0;
		if (usePoint != null) {
			usePointInt = Integer.parseInt(usePoint);
		}
		int totalPrice = resPriceInt - usePointInt;
		String resInfo = (String) req.getParameter("resInfo");// 결제형식 C O P현장결제
		int resMon = Integer.parseInt(req.getParameter("monitor"));
		int resCom = Integer.parseInt(req.getParameter("computer"));
		int resPro = Integer.parseInt(req.getParameter("projector"));
		String resMsg = (String) req.getParameter("userMsg");

		System.out.println(firstTimeData);
		System.out.println(secondTimeData);
		System.out.println(thirdTimeData);
		System.out.println(fourthTimeData);
		System.out.println(fifthTimeData);
		System.out.println(lastTimeData);
		System.out.println(firstTimeDataInt);
		System.out.println(secondTimeDataInt);
		System.out.println(thirdTimeDataInt);
		System.out.println(fourthTimeDataInt);
		System.out.println(fifthTimeDataInt);
		System.out.println(lastTimeDataInt);
		System.out.println(resProson);
		System.out.println(resPriceInt);
		System.out.println(usePointInt);
		System.out.println(totalPrice);
		System.out.println(resMon);
		System.out.println(resCom);
		System.out.println(resPro);
		if(firstTimeDataInt != 0) {
			int result1 = new ProductService().insertProductData(memNo, firstTimeDataInt);
			int result2 = new ReservationService().reservationInsert(memNo, resName, resEmail, resPhone, resProson, one, resMet, totalPrice, resInfo, resMon, resCom, resPro, resMsg);
			System.out.println(result1 + result2);
		}
		if(secondTimeDataInt != 0) {
			int result1 = new ProductService().insertProductData(memNo, secondTimeDataInt);
			int result2 = new ReservationService().reservationInsert(memNo, resName, resEmail, resPhone, resProson, two, resMet, totalPrice, resInfo, resMon, resCom, resPro, resMsg);			
			System.out.println(result1 + result2);
		}
		if(thirdTimeDataInt != 0) {
			int result1 = new ProductService().insertProductData(memNo, thirdTimeDataInt);
			int result2 = new ReservationService().reservationInsert(memNo, resName, resEmail, resPhone, resProson, three, resMet, totalPrice, resInfo, resMon, resCom, resPro, resMsg);
			System.out.println(result1 + result2);
		}
		if(fourthTimeDataInt != 0) {
			int result1 = new ProductService().insertProductData(memNo, fourthTimeDataInt);
			int result2 = new ReservationService().reservationInsert(memNo, resName, resEmail, resPhone, resProson, four, resMet, totalPrice, resInfo, resMon, resCom, resPro, resMsg);
			System.out.println(result1 + result2);
		}
		if(fifthTimeDataInt != 0) {
			int result1 = new ProductService().insertProductData(memNo, fifthTimeDataInt);
			int result2 = new ReservationService().reservationInsert(memNo, resName, resEmail, resPhone, resProson, five, resMet, totalPrice, resInfo, resMon, resCom, resPro, resMsg);
			System.out.println(result1 + result2);
		}
		if(lastTimeDataInt != 0) {
			int result1 = new ProductService().insertProductData(memNo, lastTimeDataInt);
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
