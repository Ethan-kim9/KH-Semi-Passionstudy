package com.passionStudy.passion.board.admin.notice;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.board.noticeboard.model.service.NoticeService;
import com.passionStudy.passion.board.noticeboard.model.vo.NoticeVo;

@WebServlet("/board_notice_manager")
public class ListController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		      String[] delIds = request.getParameterValues("del-id");
		      String cmd = request.getParameter("cmd");

		      NoticeService service = new NoticeService();
		      
		      int[] ids = new int[delIds.length];
		      for(int i=0; i<delIds.length; i++)
		         ids[i] = Integer.parseInt(delIds[i]);
		      
		      int result = service.deleteNoticeAll(ids);
		      
		      response.sendRedirect("board_notice_manager");
			
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//list?f=title&q=a
		
		String field_ = request.getParameter("f");
		String query_ = request.getParameter("q");
		String page_ = request.getParameter("p");
		
		String field = "notice_title";
		if(field_ != null && !field_.equals(""))
			field = field_;
		
		String query = "";
		if(query_ != null && !query_.equals(""))
			query = query_;
		
		int page = 1;
		if(page_ != null && !page_.equals(""))
			page = Integer.parseInt(page_);
		
		NoticeService service = new NoticeService();
		List<NoticeVo> list = service.getNoticeList(field, query, page);
		int count = service.getNoticeCount(field, query);
		
		
			request.setAttribute("list", list);
			request.setAttribute("count", count);
		
			request
			.getRequestDispatcher("index.jsp?inc=./views/board/notice/board_notice_manager.jsp")
			.forward(request, response);
	}
}
