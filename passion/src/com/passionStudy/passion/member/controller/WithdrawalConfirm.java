package com.passionStudy.passion.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.member.model.service.MyPageService;



@WebServlet("/goodbye")
public class WithdrawalConfirm extends HttpServlet {
	

	private static final long serialVersionUID = 1L;
	
	public WithdrawalConfirm() {
		super();
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 한글 처리
		request.setCharacterEncoding("utf-8");
		// 변수 저장
		String memId = request.getParameter("memId");
		String inputPassword =  request.getParameter("password");
		
		// 로직 
		String password = "";
		try {
			password = new MyPageService().getPass(memId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// to. jsp에게
		if(inputPassword.equals(password)) {
			int result = 0;
			try {
				result = new MyPageService().deleteMember(memId);
			} catch (SQLException e) {
				e.printStackTrace();
			}	//1이면 성공
			
			if(result > 0) {
				System.out.println("회원탈퇴 성공");
				/* request.setAttribute("memId", memId); */	//'B'처리돼있는 아이디를 들고 내보내기
				
				RequestDispatcher dis = request.getRequestDispatcher("views/mypage/onclick/mypage_withdrawal_done.jsp");
				dis.forward(request, response);
			}
			
		}else {
			PrintWriter out = response.getWriter();
			out.print("<script>alert('비밀번호를 확인 후 다시 입력해주세요.');history.back();</script>");
		}

		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
