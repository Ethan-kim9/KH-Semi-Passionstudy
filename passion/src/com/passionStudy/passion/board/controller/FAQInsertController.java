package com.passionStudy.passion.board.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.board.faqboard.model.dao.FAQBoardDao;
import com.passionStudy.passion.board.faqboard.model.service.FAQBoardService;
import com.passionStudy.passion.board.faqboard.model.vo.FAQBoardVo;
import com.passionStudy.passion.member.model.service.MemberService;
import com.passionStudy.passion.member.model.vo.MemberVo;

@WebServlet("/faq.FAQInsert")
public class FAQInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FAQInsertController() {
        super();
    }
    
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("index.jsp?inc=./views/board/faq/board_faq_manager_write.jsp").forward(request, response);
		
	}

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String faqCategory = request.getParameter("faqCategory");
		String faqTitle = request.getParameter("faqTitle");
		String faqContent = request.getParameter("faqContent");
		
		FAQBoardDao dao = FAQBoardDao.getInstance();
		FAQBoardVo vo = new FAQBoardVo();
		
		vo.setFaqCategory(faqCategory);
		vo.setFaqTitle(faqTitle);
		vo.setFaqContent(faqContent);
		
		int inResult = dao.insertFaqboard(vo);
		
			
		response.sendRedirect("index.jsp?inc=./views/board/faq/board_faq_manager.jsp");

	}

}
