package com.passionStudy.passion.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.passionStudy.passion.member.model.dao.MemberDao;
import com.passionStudy.passion.member.model.dao.MyPageDao;
import com.passionStudy.passion.member.model.vo.MemberVo;

// 회원 탈퇴를 클릭할 때 member_no(memNo)이 넘어오게끔 설정해서 member_no을 겟함.
@WebServlet("/WithdrawalConfirm.do")
public class WithdrawalConfirm extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		reqPro(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		reqPro(request, response);
	}
	
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 한글 처리
		request.setCharacterEncoding("utf-8");
		/*
		 * // 회원탈퇴 input에 작성한 파라미터 값(회원넘버) int memNo =
		 * Integer.parseInt(request.getParameter("memNo"));
		 */
		
		HttpSession session = request.getSession();
		String memId = (String) session.getAttribute("memId");
		
		// 회원탈퇴 박스에 입력한 비밀번호
		String password = request.getParameter("password");
		
		// 디비에 저장 돼있는 회원의 비밀번호 
		MyPageDao dao = new MyPageDao();
		String pwd = dao.getPass(memId);
		
		if(password.equals(pwd)) {
			// 여기서 서비스를 불러야 한다.
			MyPageDao mpdao = new MyPageDao();
			mpdao.deleteMember(memId);	//delete인 척하지만 update임.
			
			/* request.setAttribute("memberId", memId); */	// 일단 넘버 넘김
			RequestDispatcher dis = request.getRequestDispatcher("mypage_withdrawal.jsp");	//회원탈퇴완료 폼 보여주기
			dis.forward(request, response);
		} else {
			// alert창
			RequestDispatcher dis = request.getRequestDispatcher("checkPwd()");
			dis.forward(request, response);
		}
		
		function editConfirm() {
			var originalPassword = document.getElementById("input-original-password").value;
			console.log(originalPassword)
			if (originalPassword == "") {
				alert("기존 비밀번호를 입력하셔야 정보 수정이 가능합니다.");
				return;
			} else {
				alert("회원정보가 변경되었습니다.");
				var form = document.form_mypage_edit;
				form.action = "mypage_edit.update";
				form.submit();			
			}
		}
		
		function checkPwd() {
			alert("비밀번호가 일치하지 않습니다. 확인 후 다시 입력해주세요.");
			return;
		}
		
		
		
	}

}
