package com.passionStudy.passion.board.admin.notice;

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

@WebServlet("/views/admin/board/notice/board_notice_detail")
public class DetailController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int nno = Integer.parseInt(request.getParameter("nno"));
		
		 NoticeService service = new NoticeService();
		 NoticeVo noticeVo = service.getNotice(nno);
		 request.setAttribute("n", noticeVo);
		
		
		//forward
		request
		.getRequestDispatcher("/views/board/notice/board_notice_manager_detail.jsp")
		.forward(request, response);
	}

}

