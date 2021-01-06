package com.passionStudy.passion.board.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.board.faqboard.model.service.FAQBoardService;
import com.passionStudy.passion.board.faqboard.model.vo.FAQBoardVo;
import com.passionStudy.passion.member.model.service.MemberService;
import com.passionStudy.passion.member.model.vo.MemberVo;

@WebServlet("/insert.do")
public class FAQInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FAQInsertController() {
        super();
    }
    
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response);	
		
	}

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String faqTitle = request.getParameter("faqTitle");
		String faqContent = request.getParameter("faqContent");
		
		
		FAQBoardVo vo = new FAQBoardVo();
		
		int result = 0;
		try {
			result = new FAQBoardService().insertFaqboard(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("result",result);
		
		request.getRequestDispatcher("index.jsp?inc=./views/board/faq/board_faq_manager.jsp").forward(request, response);

	}

}
