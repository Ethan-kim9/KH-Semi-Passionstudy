package com.passionStudy.passion.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.board.faqboard.model.dao.FAQBoardDao;
import com.passionStudy.passion.board.faqboard.model.vo.FAQBoardVo;
import com.passionStudy.qnaBoard.dao.QnaDao;
import com.passionStudy.qnaBoard.vo.QnaVo;

/**
 * Servlet implementation class FAQModifyWriteController
 */
@WebServlet("/faq.FAQModifyWrite")
public class FAQModifyWriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FAQModifyWriteController() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
    }
    
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int faqNo = Integer.parseInt(request.getParameter("idx"));
		
		FAQBoardDao dao = FAQBoardDao.getInstance();
		FAQBoardVo vo = new FAQBoardVo();
		
		vo = dao.modifyView(faqNo);
		
		request.setAttribute("vo", vo);
		
		System.out.println(vo.getFaqTitle());
		System.out.println(vo.getFaqContent());
		
		request.getRequestDispatcher("index.jsp?inc=./views/board/faq/board_faq_manager_modifyWrite.jsp").forward(request, response);	}

	}


