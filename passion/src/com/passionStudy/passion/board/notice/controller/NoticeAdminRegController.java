package com.passionStudy.passion.board.notice.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.board.noticeboard.model.service.NoticeService;
import com.passionStudy.passion.board.noticeboard.model.vo.NoticeVo;

@WebServlet("/board_notice_manager_write")
public class NoticeAdminRegController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request
		.getRequestDispatcher("index.jsp?inc=./views/board/notice/board_notice_manager_write.jsp")
		.forward(request, response);
	}
	
	@Override
 	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String content = request.getParameter("content");	
		
		NoticeVo noticeVo = new NoticeVo();
		noticeVo.setNtitle(title);
		noticeVo.setNcontent(content);
		noticeVo.setMno(1);
		
		NoticeService service = new NoticeService();
		int result = service.insertNotice(noticeVo);
		
		response.setCharacterEncoding("UTF-8");
		//response.setContentType("text/html; charset=UTF-8");
		
		response.sendRedirect("board_notice_manager");
	
		}
}
