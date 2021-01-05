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

import com.passionStudy.passion.board.noticeboard.model.service.NoticeService;
import com.passionStudy.passion.board.noticeboard.model.vo.NoticeVo;

@WebServlet("/views/board/notice/board_notice")
public class NoticeListController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//list?f=title&q=a
		
		String field_ = request.getParameter("f");
		String query_ = request.getParameter("q");
		String page_ = request.getParameter("p");
		
		String field = "ntitle";
		if(field_ != null && field_.equals(""))
			field = field_;
		
		String query = "";
		if(query_ != null && field_.equals(""))
			query = query_;
		
		int page = 1;
		if(page_ != null)
			page = Integer.parseInt(page_);
		
		NoticeService service = new NoticeService();
		List<NoticeVo> list = service.getNoticeList(field, query, page);
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String sql = "SELECT * FROM NOTICE";

		
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection(url,"dbtest","1234");
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery(sql);
				
				
				while(rs.next()){
					int nno = rs.getInt("NOTICE_NO");
					String ntitle = rs.getString("NOTICE_TITLE");
					int mno = rs.getInt("MEMBER_NO");
					Date regdate = rs.getDate("REGDATE");
					int ncount = rs.getInt("NOTICE_COUNT");
					String ncontent = rs.getString("NOTICE_CONTENT");
					
					NoticeVo noticeVo = new NoticeVo(
							nno,
							mno,
							ntitle,
							ncontent,
							ncount,
							regdate
							); 
					list.add(noticeVo);
					
				}
				
				rs.close();
				st.close();
				con.close();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		
			request.setAttribute("list", list);
		
			request
			.getRequestDispatcher("/views/board/notice/board_notice.jsp")
			.forward(request, response);
	}
}
