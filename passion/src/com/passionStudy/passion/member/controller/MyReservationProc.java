package com.passionStudy.passion.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.member.model.service.MyPageService;


@WebServlet("/myrvProc")
public class MyReservationProc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public MyReservationProc() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 한글 처리
		request.setCharacterEncoding("utf-8");
		// 데이터 저장
		String memNo = request.getParameter("memNo");
		// 로직
		MyPageService service = new MyPageService();
		service.getReceipt(memNo);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
