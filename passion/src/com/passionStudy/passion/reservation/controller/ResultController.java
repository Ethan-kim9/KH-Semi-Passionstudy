package com.passionStudy.passion.reservation.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.reservation.model.service.PointService;
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

		String memNo = req.getParameter("member_no");
		int memNoInt = 0;
		if (memNo != null) {
			memNoInt = Integer.parseInt(memNo);
		}

		String roomNo = req.getParameter("room_no");
		int roomNoInt = 0;
		if (roomNo != null) {
			roomNoInt = Integer.parseInt(roomNo);
		}

		String firstTimeData = req.getParameter("firstTimeData");
		int firstTimeDataInt = 0;
		if (firstTimeData != null) {
			firstTimeDataInt = Integer.parseInt(firstTimeData);
		}

		String secondTimeData = req.getParameter("secondTimeData");
		int secondTimeDataInt = 0;
		if (secondTimeData != null) {
			secondTimeDataInt = Integer.parseInt(secondTimeData);
		}

		String thirdTimeData = req.getParameter("thirdTimeData");
		int thirdTimeDataInt = 0;
		if (thirdTimeData != null) {
			thirdTimeDataInt = Integer.parseInt(thirdTimeData);
		}

		String fourthTimeData = req.getParameter("fourthTimeData");
		int fourthTimeDataInt = 0;
		if (fourthTimeData != null) {
			fourthTimeDataInt = Integer.parseInt(fourthTimeData);
		}

		String fifthTimeData = req.getParameter("fifthTimeData");
		int fifthTimeDataInt = 0;
		if (fifthTimeData != null) {
			fifthTimeDataInt = Integer.parseInt(fifthTimeData);
		}

		String lastTimeData = req.getParameter("lastTimeData");
		int lastTimeDataInt = 0;
		if (lastTimeData != null) {
			lastTimeDataInt = Integer.parseInt(lastTimeData);
		}
		
		String memPoint = req.getParameter("memPoint");
		int memPointInt = 0;
		if (memPoint != null) {
			memPointInt = Integer.parseInt(memPoint);
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

		String resProson = req.getParameter("countUsers");
		int resProsonInt = 0;
		if (resProson != null) {
			resProsonInt = Integer.parseInt(resProson);
		}

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
		
		int remainPoint = memPointInt - usePointInt;
		
		int totalPrice = resPriceInt - usePointInt;
		String resInfo = (String) req.getParameter("resInfo");// 결제형식 C O P현장결제

		String resMon = req.getParameter("resMon");
		int resMonInt = 0;
		if (resMon != null) {
			resMonInt = Integer.parseInt(resMon);
		}

		String resCom = req.getParameter("resCom");
		int resComInt = 0;
		if (resCom != null) {
			resComInt = Integer.parseInt(resCom);
		}

		String resPro = req.getParameter("resPro");
		int resProInt = 0;
		if (resPro != null) {
			resProInt = Integer.parseInt(resPro);
		}

		String resMsg = (String) req.getParameter("userMsg");

		System.out.println(roomNoInt);
		System.out.println(firstTimeDataInt);
		System.out.println(secondTimeDataInt);
		System.out.println(thirdTimeDataInt);
		System.out.println(fourthTimeDataInt);
		System.out.println(fifthTimeDataInt);
		System.out.println(lastTimeDataInt);
		
		if (firstTimeDataInt != 0) {
			int result1 = new ProductService().insertProductData(roomNoInt, firstTimeDataInt);
			int result2 = new ReservationService().reservationInsert(memNoInt, resName, resEmail, resPhone,
					resProsonInt, one, resMet, totalPrice, resInfo, resMonInt, resComInt, resProInt, resMsg);
			System.out.println(result1 + result2);
		}
		if (secondTimeDataInt != 0) {
			int result1 = new ProductService().insertProductData(roomNoInt, secondTimeDataInt);
			int result2 = new ReservationService().reservationInsert(memNoInt, resName, resEmail, resPhone,
					resProsonInt, two, resMet, totalPrice, resInfo, resMonInt, resComInt, resProInt, resMsg);
			System.out.println(result1 + result2);
		}
		if (thirdTimeDataInt != 0) {
			int result1 = new ProductService().insertProductData(roomNoInt, thirdTimeDataInt);
			int result2 = new ReservationService().reservationInsert(memNoInt, resName, resEmail, resPhone,
					resProsonInt, three, resMet, totalPrice, resInfo, resMonInt, resComInt, resProInt, resMsg);
			System.out.println(result1 + result2);
		}
		if (fourthTimeDataInt != 0) {
			int result1 = new ProductService().insertProductData(roomNoInt, fourthTimeDataInt);
			int result2 = new ReservationService().reservationInsert(memNoInt, resName, resEmail, resPhone,
					resProsonInt, four, resMet, totalPrice, resInfo, resMonInt, resComInt, resProInt, resMsg);
			System.out.println(result1 + result2);
		}
		if (fifthTimeDataInt != 0) {
			int result1 = new ProductService().insertProductData(roomNoInt, fifthTimeDataInt);
			int result2 = new ReservationService().reservationInsert(memNoInt, resName, resEmail, resPhone,
					resProsonInt, five, resMet, totalPrice, resInfo, resMonInt, resComInt, resProInt, resMsg);
			System.out.println(result1 + result2);
		}
		if (lastTimeDataInt != 0) {
			int result1 = new ProductService().insertProductData(roomNoInt, lastTimeDataInt);
			int result2 = new ReservationService().reservationInsert(memNoInt, resName, resEmail, resPhone,
					resProsonInt, six, resMet, totalPrice, resInfo, resMonInt, resComInt, resProInt, resMsg);
			System.out.println(result1 + result2);
		}
		int result = new PointService().pointUpdate(remainPoint, memNoInt);
		System.out.println(result);
		
		req.getRequestDispatcher("index.jsp").forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
}
