package com.passionStudy.passion.board.notice.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.board.noticeboard.model.service.NoticeService;
import com.passionStudy.passion.board.noticeboard.model.vo.NoticeVo;

@WebServlet("/board_notice_manager_detail")
public class NoticeAdminDetailController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int nno = Integer.parseInt(request.getParameter("nno"));
		
		 NoticeService service = new NoticeService();
		 NoticeVo noticeVo = new NoticeVo();
		 noticeVo.setNno(nno);
		 service.viewCount(noticeVo.getNno()); 
		 noticeVo = service.getNotice(nno);
		 
		 
		 request.setAttribute("n", noticeVo);
		
		
		 
		//forward
		request
		.getRequestDispatcher("/index.jsp?inc=./views/board/notice/board_notice_manager_detail.jsp")
		.forward(request, response);
	}

}

