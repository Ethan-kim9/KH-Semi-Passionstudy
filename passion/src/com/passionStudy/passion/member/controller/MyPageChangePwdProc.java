package com.passionStudy.passion.member.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.member.model.dao.MyPageDao;
import com.passionStudy.passion.member.model.service.MyPageService;

// 비밀번호 변경jsp에서 num을 파라미터로 넘겨서 서블릿으로 보냄
@WebServlet("/renewPwd")
public class MyPageChangePwdProc extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	public MyPageChangePwdProc() {
		super();
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글처리
		request.setCharacterEncoding("utf-8");
		
		// 데이터 저장
		String memId = request.getParameter("memId");
		String inputPassword = request.getParameter("inputPassword");
		String newPassword1 = request.getParameter("newPassword1");
		String newPassword2 = request.getParameter("newPassword2");
		
		// 로직
		MyPageService service = new MyPageService();
		try {
			String settingPwd = service.getPass(memId);
			if(inputPassword.equals(settingPwd) && newPassword1.equals(newPassword2)) {
				int result = service.changePwd(memId, newPassword1);
				
				if(result > 0) {
					System.out.println("완료됐다고alert띄워야 해 ");
					response.sendRedirect("인덱스로 보내기");
				}
			}else if(!inputPassword.equals(settingPwd)) {
				
			}
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		reqPro(request, response);
	}

	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 한글 처리
		request.setCharacterEncoding("utf-8");
		
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		String inputpassword = request.getParameter("inputpassword");
		request.getParameter("password1");
		
		MyPageDao mdao = new MyPageDao();
		/* String password = mdao.getPass(memNo); */
		
	}
}
