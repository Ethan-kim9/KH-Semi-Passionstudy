package com.passionStudy.passion.member.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.passionStudy.passion.member.model.service.MyPageService;
import com.passionStudy.passion.member.model.vo.MemberVo;
import com.passionStudy.passion.member.model.vo.MyPageReservationVo;
import com.passionStudy.passion.member.model.vo.MyPageRoomVo;


@WebServlet("/MyReservation")
public class MypageReservationProc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public MypageReservationProc() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 한글
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
		int memNo = loginMember.getMemNo();
		
		// 나의 예약 내역
		MyPageService service = new MyPageService();
		Vector<MyPageReservationVo> myres = service.getMyReservation(memNo);
		
		// 상품식별자
		ArrayList<Integer> productNums = new ArrayList(); 
		for(MyPageReservationVo vo : myres) {
			int proNo = vo.getProNo();
			productNums.add(proNo);
		}
		System.out.println(productNums);
		
		// 나의 룸 정보 가져오기
		MyPageService proService = new MyPageService();
		ArrayList<MyPageRoomVo> myroom = proService.getMyRoom(productNums);
		
		request.setAttribute("myres", myres);
		request.setAttribute("myroom", myroom);
		
		RequestDispatcher dis = request.getRequestDispatcher("index.jsp?inc=./views/mypage/mypage_reservation.jsp");
		dis.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
