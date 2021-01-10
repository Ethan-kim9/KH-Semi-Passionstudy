package com.passionStudy.passion.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.board.faqboard.model.dao.FAQBoardDao;
import com.passionStudy.qnaBoard.dao.QnaDao;


@WebServlet("/faq.FAQCheckBox")
public class FAQCheckBoxController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FAQCheckBoxController() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doPost(request, response);	
    	
    }

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String delete = request.getParameter("delete");
		System.out.println(delete);
		if(delete != null) {
			String[] deletes = request.getParameterValues("deletes");
			System.out.println(deletes[0]);
			if(deletes != null) {
				FAQBoardDao dao = FAQBoardDao.getInstance();
				dao.checkBoxDeletes(deletes);
			}
		}
		response.sendRedirect("faq.ManagerOrUser");
	}

}
