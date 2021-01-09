package com.passionStudy.qnaBoard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.qnaBoard.dao.QnaDao;

@WebServlet("/qna_delete.do")
public class DeleteController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(req, resp);
	}
	
	private void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int qnaNo = Integer.parseInt(req.getParameter("idx"));
		QnaDao qnaDao = QnaDao.getInstance();
		qnaDao.delete(qnaNo);
	
		resp.sendRedirect("index.jsp?inc=./views/board/qna/board_qna_member_list.jsp");
	}
}
