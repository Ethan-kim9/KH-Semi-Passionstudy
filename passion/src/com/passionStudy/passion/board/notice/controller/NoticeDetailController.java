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

@WebServlet("/views/board/notice/board_notice_detail")
public class NoticeDetailController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int n_no = Integer.parseInt(request.getParameter("n_no"));
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String sql = "SELECT * FROM NOTICE_B WHERE N_NO=?";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url,"passion","passion");
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1,n_no);
			
			ResultSet rs = st.executeQuery();
			
			rs.next();
			
			String nTitle = rs.getString("N_TITLE");
			String nWriter = rs.getString("N_WRITER");
			Date nDate = rs.getDate("N_DATE");
			int nHit = rs.getInt("N_HIT");
			String nContent = rs.getString("N_CONTENT");
			
			request.setAttribute("nTitle", nTitle);
			request.setAttribute("nWriter", nWriter);
			request.setAttribute("nDate", nDate);
			request.setAttribute("nHit", nHit);
			request.setAttribute("nContent", nContent);

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

		//forward
		request
		.getRequestDispatcher("/views/board/notice/board_notice_detail.jsp")
		.forward(request, response);
	}

}
