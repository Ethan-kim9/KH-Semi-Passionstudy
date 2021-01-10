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


@WebServlet("/faq.FAQModifyWrite")
public class FAQModifyWriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public FAQModifyWriteController() {
        super();
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
    }
    
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int faqNo = Integer.parseInt(request.getParameter("idx"));
		
		FAQBoardDao dao = FAQBoardDao.getInstance();
		FAQBoardVo vo = new FAQBoardVo();
		
		vo = dao.modifyView(faqNo);
		
		request.setAttribute("vo", vo);
		
		System.out.println(vo.getFaqTitle());
		System.out.println(vo.getFaqContent());
		
		request.getRequestDispatcher("index.jsp?inc=./views/board/faq/board_faq_manager_modifyWrite.jsp").forward(request, response);	}

	}


