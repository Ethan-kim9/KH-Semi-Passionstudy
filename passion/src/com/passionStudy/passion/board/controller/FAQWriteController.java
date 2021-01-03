package com.passionStudy.passion.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.board.faqboard.model.dao.FAQBoardDao;

/**
 * Servlet implementation class ReservationHeaderController
 */
@WebServlet("/FAQWriteController")
public class FAQWriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//전달받은 값의 인코딩 타입을 세팅합니다.
		request.setCharacterEncoding("EUC-KR");
		//데이터 베이스 접근을 담당하는 DAO에 INSERT 를 호출합니다.
		FAQBoardDao.insert(request, response);
		//데이터 베이스 접근을 담당하는 DAO에 SELECT 를 호출합니다.
		FAQBoardDao.select(request, response);
		//request에 값을 담아 View페이지로 이동 합니다.
		request.getRequestDispatcher("index.jsp?inc=./views/board/faq/board_faq_manager.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// POST로 데이터가 올 경우, doGet에서 처리합니다.
		doGet(request, response);
	}

}

// 테스트중.......