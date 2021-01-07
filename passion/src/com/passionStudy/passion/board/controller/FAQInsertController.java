package com.passionStudy.passion.board.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.board.faqboard.model.service.FAQBoardService;
import com.passionStudy.passion.board.faqboard.model.vo.FAQBoardVo;
import com.passionStudy.passion.member.model.service.MemberService;
import com.passionStudy.passion.member.model.vo.MemberVo;

@WebServlet("/insert.do")
public class FAQInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FAQInsertController() {
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
			String sql = "INSERT INTO FAQ_BOARD"+
						"(FAQ_NO,MEMBER_NO,FAQ_TITLE,FAQ_CONTENT,FAQ_DATE)"+
						"VALUES(FAQ_SEQ.NEXTVAL, 0 ,'"+faqTitle+"', '"+faqContent+"', SYSDATE)";
			
			stmt.executeUpdate(sql);
			
			stmt.close();
			conn.close();
				
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		request.getRequestDispatcher("index.jsp?inc=./views/board/faq/board_faq_manager.jsp").forward(request, response);

	}

}
