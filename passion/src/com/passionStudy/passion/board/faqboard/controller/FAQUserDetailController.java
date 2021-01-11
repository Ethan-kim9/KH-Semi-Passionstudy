package com.passionStudy.passion.board.faqboard.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.board.faqboard.model.dao.FAQBoardDao;
import com.passionStudy.passion.board.faqboard.model.vo.FAQBoardVo;


@WebServlet("/faq.FAQUserDetail")
public class FAQUserDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;


    public FAQUserDetailController() {
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

		vo = dao.getView(faqNo);

		request.setAttribute("vo", vo);



		request.getRequestDispatcher("index.jsp?inc=./views/board/faq/board_faq_user_detail.jsp").forward(request, response);

	}

}