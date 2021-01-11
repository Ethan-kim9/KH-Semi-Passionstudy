package com.passionStudy.passion.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.passionStudy.passion.member.model.service.MyPageService;
import com.passionStudy.passion.member.model.vo.MemberVo;
import com.passionStudy.passion.member.model.vo.MyRoomVo;


@WebServlet("/MyreceiptDetail")
public class MyPageMyroomDetailProc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public MyPageMyroomDetailProc() {
        super();
      
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 한글
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
		int memNo = loginMember.getMemNo();
		
		/*
		 * MyPageService service = new MyPageService(); MemberVo mine =
		 * service.getOneSelect(memNo);
		 */
		
		int roomNo = Integer.parseInt(request.getParameter("roomNo"));
		MyPageService service2 = new MyPageService();
		MyRoomVo receipt = service2.getRoomInfo(memNo, roomNo);
		
		System.out.println(receipt.getMemNo());
		System.out.println(receipt.getResName());
		
		request.setAttribute("receipt", receipt);
		RequestDispatcher dis = request.getRequestDispatcher("./views/mypage/onclick/mypage_reservation_detail.jsp");
		dis.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
