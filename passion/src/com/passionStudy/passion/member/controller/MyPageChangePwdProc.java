package com.passionStudy.passion.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		// 로직
		MyPageService service = new MyPageService();
		try {
			String settingPwd = service.getPass(memId);
			if(inputPassword.equals(settingPwd) && newPassword1.equals(newPassword2)) {
				int result = service.changePwd(newPassword1, memId);
				System.out.println(result);
				
				if(result > 0) {
					out.print("<script>alert('비밀번호가 변경 되었습니다.'); location.href='index.jsp';</script>");
					out.flush();
					/* response.sendRedirect("index.jsp"); */
				}
			}else if(!inputPassword.equals(settingPwd) && newPassword1.equals(newPassword2)) {
				out.print("<script>alert('현재 비밀번호가 일치하지 않습니다. 확인 후 다시 입력해주세요.');history.back();</script>");
				out.flush();
				/* response.sendRedirect("index.jsp?inc=./views/mypage/mypage_pwdForm.jsp"); */
			}else if(!inputPassword.equals(settingPwd) && !newPassword1.equals(newPassword2)) {
				out.print("<script>alert('현재 비밀번호와 새 비밀번호 확인 후 다시 입력해주세요.');history.back();</script>");
				out.flush();
			}else {
				out.print("<script>alert('새 비밀번호가 일치하지 않습니다. 확인 후 다시 입력해주세요.');history.back();</script>");
				out.flush();
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}
}
