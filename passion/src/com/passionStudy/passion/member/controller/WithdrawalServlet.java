package com.passionStudy.passion.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.member.model.dao.MemberDao;
import com.passionStudy.passion.member.model.dao.MyPageDao;
import com.passionStudy.passion.member.model.vo.MemberVo;

// 회원 탈퇴를 클릭할 때 member_no이 넘어오게끔 설정해서 member_no을 겟함.
@WebServlet("/Withdrawal")
public class WithdrawalServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		reqPro(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		reqPro(request, response);
	}
	
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 한글 처리
		request.setCharacterEncoding("utf-8");
		// 회원탈퇴 input에 작성한 파라미터 값(회원넘버)
		int memNum = Integer.parseInt(request.getParameter("num"));
		// 회원탈퇴 박스에 입력한 비밀번호
		String password = request.getParameter("password");
		
		// 디비에 저장 돼있는 비밀번호 
		MyPageDao dao = new MyPageDao();
		String pwd = dao.getPass(memNum);
		
		if(password.equals(pwd)) {
			// 여기서 서비스를 불러야 한다.
			MyPageDao mpdao = new MyPageDao();
			mpdao.deleteMember(memNum);	//delete인 척하지만 update임.
			
			request.setAttribute("memberNum", memNum);	// 일단 넘버 넘김
			RequestDispatcher dis = request.getRequestDispatcher("mypage_withdrawal.jsp");	//회원탈퇴완료 폼 보여주기
			dis.forward(request, response);
		} else {
			request.setAttribute("msg", "비밀번호를 확인 후 다시 입력해주세요.");
			RequestDispatcher dis = request.getRequestDispatcher("withdrawalError.jsp");
			dis.forward(request, response);
		}
		
		
		
		
		
	}

}
