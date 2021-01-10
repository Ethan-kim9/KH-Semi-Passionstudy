package com.passionStudy.qnaBoard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.qnaBoard.dao.QnaDao;

@WebServlet ("/qna.checkBox.do")
public class CheckBoxDeleteController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		prosess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		prosess(req, resp);

	}

	private void prosess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		String delete = req.getParameter("delete");
		System.out.println(delete);
		if(delete != null) {
			String[] deletes = req.getParameterValues("deletes");
			System.out.println(deletes[0]);
			if(deletes != null) {
				QnaDao qnaDao = QnaDao.getInstance();
				qnaDao.checkBoxDeletes(deletes);
			}
		}
		resp.sendRedirect("member.manager.check.do");
	}	
}

