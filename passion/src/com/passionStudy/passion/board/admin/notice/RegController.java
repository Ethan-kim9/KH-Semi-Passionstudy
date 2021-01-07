package com.passionStudy.passion.board.admin.notice;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.board.noticeboard.model.service.NoticeService;
import com.passionStudy.passion.board.noticeboard.model.vo.NoticeVo;

@WebServlet("/views/admin/board/notice/board_notice_manager_write")
public class RegController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request
		.getRequestDispatcher("/views/admin/board/notice/board_notice_manager_write.jsp")
		.forward(request, response);
	}
	
	@Override
 	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dbTitle = request.getParameter("dbTitle");
		String dbContent = request.getParameter("dbContent");	
		
		NoticeVo noticeVo = new NoticeVo();
		noticeVo.setNtitle(dbTitle);
		noticeVo.setNcontent(dbContent);
		noticeVo.setMno(1);
		
		NoticeService service = new NoticeService();
		service.insertNotice(noticeVo);
		
		response.setCharacterEncoding("UTF-8");
		//response.setContentType("text/html; charset=UTF-8");
		
		response.sendRedirect("board_notice_manager");

		}
}
