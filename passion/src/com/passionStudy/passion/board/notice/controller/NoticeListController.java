package com.passionStudy.passion.board.notice.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
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

@WebServlet("/views/board/notice/board_notice")
public class NoticeListController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//list?f=title&q=a
		
		String field_ = request.getParameter("f");
		String query_ = request.getParameter("q");
		
		String field = "nTitle";
		if(field_ != null)
			field = field_;
		
		String query = "";
		if(query_ != null)
			query = query_;
		
		NoticeService service = new NoticeService();
		List<NoticeVo> list = service.getNoticeList(field, query, 1);
		
		request.setAttribute("list", list);
		
		request
		.getRequestDispatcher("/views/board/notice/board_notice.jsp")
		.forward(request, response);
	}
}
