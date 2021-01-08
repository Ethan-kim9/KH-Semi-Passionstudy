package com.passionStudy.passion.board.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/faq.modify.do")
public class FAQModifyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public FAQModifyController() {
        super();
    }

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request, response);	
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String faqTitle = request.getParameter("faqTitle");
		String faqContent = request.getParameter("faqContent");
		
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String id = "passion";
		String pw = "passion";
		Connection conn = null;
		Statement stmt = null;
		

		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(url,id,pw);
			stmt=conn.createStatement();
			String sqlUpdate = "UPDATE FAQ_BOARD SET FAQ_TITLE='"+faqTitle+"', FAQ_CONTENT='"+faqContent+"' WHERE FAQ_NO= ?";
			
			stmt.executeUpdate(sqlUpdate);
			
			stmt.close();
			conn.close();
				
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		request.getRequestDispatcher("index.jsp?inc=./views/board/faq/board_faq_manager.jsp").forward(request, response);

	}

}
