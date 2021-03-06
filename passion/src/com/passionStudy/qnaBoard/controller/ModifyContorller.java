package com.passionStudy.qnaBoard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.qnaBoard.dao.QnaDao;
import com.passionStudy.qnaBoard.vo.QnaVo;

@WebServlet ("/qna.modify.do")
public class ModifyContorller extends HttpServlet {
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
		String qnaTitle = req.getParameter("qna_title");
		String qnaContent = req.getParameter("qna_content");
		
		QnaDao qnaDao = QnaDao.getInstance();
		QnaVo qnaVo = new QnaVo();
		
		qnaVo.setQnaNo(qnaNo);
		qnaVo.setQnaTitle(qnaTitle);
		qnaVo.setQnaContent(qnaContent);
		
		qnaVo = qnaDao.modify(qnaVo);
		
		resp.sendRedirect("member.manager.check.do");
		
	}
}
