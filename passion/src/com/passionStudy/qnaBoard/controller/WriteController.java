package com.passionStudy.qnaBoard.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.member.model.vo.MemberVo;
import com.passionStudy.qnaBoard.dao.QnaDao;
import com.passionStudy.qnaBoard.vo.QnaVo;

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
		
		MemberVo loginMember = req.getSeesion("");
				
		
		String qnaTitle = req.getParameter("qna_title");
		String qnaContent = req.getParameter("qna_content");
		String category = req.getParameter("qna_category");
		
		QnaDao qnaDao = QnaDao.getInstance();
		QnaVo qnaVo = new QnaVo();
		
		qnaVo.setQnaTitle(qnaTitle);
		qnaVo.setQnaContent(qnaContent);
		qnaVo.setCategory(category);
		
		int wResult = qnaDao.write(qnaVo);
		System.out.println(qnaVo.getQnaTitle());
		System.out.println(qnaContent);
		System.out.println(category);
		System.out.println(wResult);
		resp.sendRedirect("menu.Board");
		
	}
}
