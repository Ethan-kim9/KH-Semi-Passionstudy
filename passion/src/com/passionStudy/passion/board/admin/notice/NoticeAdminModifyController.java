package com.passionStudy.passion.board.admin.notice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.board.noticeboard.model.service.NoticeService;
import com.passionStudy.passion.board.noticeboard.model.vo.NoticeVo;

@WebServlet("/board_notice_manager_modify")
public class ModifyController extends HttpServlet{
		
		@Override
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			int nno = Integer.parseInt(request.getParameter("nno"));
			
			 NoticeService service = new NoticeService();
			 NoticeVo noticeVo = service.getNotice(nno);
			 request.setAttribute("n", noticeVo);

			
			request
			.getRequestDispatcher("index.jsp?inc=./views/board/notice/board_notice_manager_modify.jsp")
			.forward(request, response);
		}
	
		@Override
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		
			response.setCharacterEncoding("UTF-8");
			//response.setContentType("text/html; charset=UTF-8");
			
			response.sendRedirect("board_notice_manager");
		}

		


}
