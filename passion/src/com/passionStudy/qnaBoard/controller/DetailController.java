package com.passionStudy.qnaBoard.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.qnaBoard.dao.QnaDao;
import com.passionStudy.qnaBoard.vo.QnaVo;

@WebServlet ("/qna.detail.do")
public class DetailController extends HttpServlet {
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
		// TODO Auto-generated method stub
		int qnaNo = Integer.parseInt(req.getParameter("idx"));
		
		QnaDao qnaDao = QnaDao.getInstance();
		QnaVo qnaVo = new QnaVo();
		
		qnaVo = qnaDao.detail(qnaNo);
		
		req.setAttribute("qnaVo", qnaVo);
		
		RequestDispatcher rd = req.getRequestDispatcher("index.jsp?inc=./views/board/qna/board_qna_member_detail.jsp");
		rd.forward(req, resp);
	}
}
