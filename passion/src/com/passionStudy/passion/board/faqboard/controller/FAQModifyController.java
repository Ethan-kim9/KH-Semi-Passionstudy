package com.passionStudy.passion.board.faqboard.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.board.faqboard.model.dao.FAQBoardDao;
import com.passionStudy.passion.board.faqboard.model.vo.FAQBoardVo;


@WebServlet("/faq.FAQModify")
public class FAQModifyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public FAQModifyController() {
        super();
    }

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request, response);	
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		int faqNo = Integer.parseInt(request.getParameter("idx"));
		
		String faqTitle = request.getParameter("faqTitle");
		String faqContent = request.getParameter("faqContent");
		
		FAQBoardDao dao = FAQBoardDao.getInstance();
		FAQBoardVo vo = new FAQBoardVo();
		
		vo.setFaqNo(faqNo);
		vo.setFaqTitle(faqTitle);
		vo.setFaqContent(faqContent);
		
		vo = dao.modify(vo);
		
		response.sendRedirect("faq.ManagerOrUser");

	}

}
