package com.passionStudy.passion.board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.board.faqboard.model.service.FAQBoardService;
import com.passionStudy.passion.board.faqboard.model.vo.FAQBoardVo;


@WebServlet("/faq.FAQManagerList")
public class FAQManagerListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public FAQManagerListController() {
        super();
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("index.jsp?inc=./views/board/faq/board_faq_manager.jsp").forward(request, response);
	}

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
