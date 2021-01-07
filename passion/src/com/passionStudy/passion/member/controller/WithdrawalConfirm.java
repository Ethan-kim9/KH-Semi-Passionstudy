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


// 회원 탈퇴 폼에 memId 붙여서 같이 넘김
@WebServlet("/WithdrawalConfirm.do")
public class WithdrawalConfirm extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 한글 처리
		request.setCharacterEncoding("utf-8");
		// 변수 저장
		String memId = request.getParameter("memId");
		String inputPassword =  request.getParameter("password");
		
		// 로직 
		MyPageService service = new MyPageService();
		String password = service.getPass(memId);
		
		// to. jsp에게
		if(inputPassword.equals(password)) {
			int result = service.deleteMember(memId);	//1이면 성공
			if(result > 0) {
				System.out.println("회원탈퇴 성공");
				request.setAttribute("memId", memId);	//'B'처리돼있는 아이디를 들고 내보내기
				RequestDispatcher dis = request.getRequestDispatcher("회원탈퇴폼");
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
