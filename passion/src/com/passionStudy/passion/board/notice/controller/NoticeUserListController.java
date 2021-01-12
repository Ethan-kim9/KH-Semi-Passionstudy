
package com.passionStudy.passion.board.notice.controller;

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
import javax.servlet.http.HttpSession;

import com.passionStudy.passion.board.noticeboard.model.service.NoticeService;
import com.passionStudy.passion.board.noticeboard.model.vo.NoticeVo;
import com.passionStudy.passion.member.model.vo.MemberVo;

@WebServlet("/board_notice")
public class NoticeUserListController extends HttpServlet{
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
		
			HttpSession session     = request.getSession();
			MemberVo loginMember 	= (MemberVo) session.getAttribute("loginMember");
			
			
			if(null  != loginMember && null != loginMember.getAdminCheck()  && "A".equals( loginMember.getAdminCheck())){

				request
				.getRequestDispatcher("index.jsp?inc=./views/board/notice/board_notice_manager.jsp")
				.forward(request, response);
				
				
			}else { //관리자 아닌 화면.
				request
				.getRequestDispatcher("index.jsp?inc=./views/board/notice/board_notice.jsp")
				.forward(request, response);

			}
	}
}
