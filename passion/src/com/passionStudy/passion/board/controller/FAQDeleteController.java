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


@WebServlet("/faq.delete.do")
public class FAQDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public FAQDeleteController() {
        super();
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	doPost(request, response);	
	}

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	String driver = "oracle.jdbc.driver.OracleDriver";
    	String url = "jdbc:oracle:thin:@localhost:1521:xe";
    	String id = "passion";
    	String pw = "passion";
    	
    	Connection conn = null;
    	Statement stmt = null;
    	
    	
    	try {
    		Class.forName(driver); // JDBC드라이버 로딩
    		conn = DriverManager.getConnection(url,id,pw); // DB서버연결
    		stmt = conn.createStatement(); //Statment타입의 객체 생성
    		String sqlDelete = "DELETE FROM FAQ_BOARD WHERE FAQ_NO=?"; // board테이블에 있는 no,title,writer,date 값을 가져오되 
    		stmt.executeQuery(sqlDelete); // SQL실행;
    		
    		stmt.close();
    		conn.close();
    		
    			
    	} catch (Exception e) {
    		System.out.println(e.toString());
    	}	
    	
    	request.getRequestDispatcher("index.jsp?inc=./views/board/faq/board_faq_manager.jsp").forward(request, response);

	}

}
