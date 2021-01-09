package com.passionStudy.passion.board.controller;

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


@WebServlet("/faq.FAQDelete")
public class FAQDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public FAQDeleteController() {
        super();
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	doPost(request, response);	
	}

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	int idx = Integer.parseInt(request.getParameter("idx"));
    	
    	FAQBoardDao Dao = new FAQBoardDao();
    	
    	Dao.delete(idx);
    	
    	
    	
    	request.getRequestDispatcher("index.jsp?inc=./views/board/faq/board_faq_manager.jsp").forward(request, response);

	}

}
