package com.passionStudy.passion.member.controller;

import java.io.IOException;
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
import com.passionStudy.qnaBoard.vo.QnaVo;

// 나의활동 메뉴에 memNo를 붙여서 서블릿에서 받음.
// 컨트롤에서 세션 바로 받아오기
@WebServlet("/MyPage1on1Proc.do")
public class MyPage1on1Proc extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public MyPage1on1Proc() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 한글
		request.setCharacterEncoding("utf-8");
		
		// 데이터 저장
		HttpSession session = request.getSession();
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		String memName = loginMember.getMemName();
		
		// 로직
		MyPageService service = new MyPageService();
		Vector<QnaVo> qnalist = service.getQnaList(memName);
		// 로직2(문의내역 카운트)
		int count = service.getListCount(memName);
		
		// jsp에게
		request.setAttribute("qnalist", qnalist);
		request.setAttribute("count", count);
		RequestDispatcher dis = request.getRequestDispatcher("index.jsp?inc=./views/mypage/mypage_1on1.jsp");
		dis.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
