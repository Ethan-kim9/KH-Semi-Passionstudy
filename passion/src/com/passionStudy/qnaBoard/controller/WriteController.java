package com.passionStudy.qnaBoard.controller;

import java.io.IOException;

import javax.jws.WebService;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.passionStudy.passion.member.model.vo.MemberVo;
import com.passionStudy.qnaBoard.dao.QnaDao;
import com.passionStudy.qnaBoard.vo.QnaVo;
@WebService
@WebServlet ("/qna.write.do")
public class WriteController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = req.getRequestDispatcher("index.jsp?inc=./views/board/qna/board_qna_member_write.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		HttpSession session = req.getSession(false);
		MemberVo user  = (MemberVo)session.getAttribute("loginMember");			
		String qnaWriter = null;
		
		if(user == null) {
			qnaWriter = "비회원";
		} else {
			qnaWriter = user.getMemName();
		}

		String qnaTitle = req.getParameter("qna_title");
		String qnaContent = req.getParameter("qna_content");
		String category = req.getParameter("qna_category");
		
		QnaDao qnaDao = QnaDao.getInstance();
		QnaVo qnaVo = new QnaVo();
		
		qnaVo.setQnaWriter(qnaWriter);
		qnaVo.setQnaTitle(qnaTitle);
		qnaVo.setQnaContent(qnaContent);
		qnaVo.setCategory(category);
		
		int wResult = qnaDao.write(qnaVo);
		
		resp.sendRedirect("index.jsp?inc=./views/board/qna/board_qna_member_list.jsp");
		
	}
}
