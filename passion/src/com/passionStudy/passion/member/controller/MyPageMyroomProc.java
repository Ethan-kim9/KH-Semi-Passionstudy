package com.passionStudy.passion.member.controller;

import java.io.IOException;
import java.util.ArrayList;

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


@WebServlet("/MyReceipt")
public class MyPageMyroomProc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public MyPageMyroomProc() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 한글
		request.setCharacterEncoding("utf-8");
		//
		HttpSession session =  request.getSession();
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		int memNo = loginMember.getMemNo();
		
		String memPhone = loginMember.getMemPhone();
		System.out.println(memPhone);
		
		MyPageService service = new MyPageService();
		ArrayList<MyRoomVo> myroomList = service.getMyReceipt(memNo);
		
		request.setAttribute("myroomList", myroomList);
		RequestDispatcher dis = request.getRequestDispatcher("index.jsp?inc=./views/mypage/mypage_reservation.jsp");
		dis.forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
