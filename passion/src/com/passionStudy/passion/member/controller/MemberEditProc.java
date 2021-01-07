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
import javax.servlet.http.HttpSession;

import com.passionStudy.passion.member.model.service.MyPageService;
import com.passionStudy.passion.member.model.vo.MemberVo;

// 회원정보수정 클릭 했을 때 넘어온 데이터(phone,addagree)를 처리해주는 서블릿
@WebServlet("/MemberEditProc")
public class MemberEditProc extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		
		String memId = request.getParameter("email1");
		String memPhone = request.getParameter("phone");
		String memAdAgree = request.getParameter("adagree");
		
		int result = 0;

		try {
			result = new MyPageService().updateInfoMember(memId,memPhone,memAdAgree);
			System.out.println(result);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		// to.jsp에게
		if(result > 0) {
			PrintWriter out = response.getWriter();
			out.print("<script>alert('정보가 수정 되었습니다.');history.back();</script>");
<<<<<<< HEAD
			request.getRequestDispatcher("index.jsp?inc=./views/mypage/mypage_edit.jsp").forward(request, response);
			
			
			
=======
			request.getRequestDispatcher("/index.jsp").forward(request, response);
	
>>>>>>> f9469d2da3d901142ea97191dd0b3d5e547ef00a
		} else {
			System.out.println("회원정보 수정 실패");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
