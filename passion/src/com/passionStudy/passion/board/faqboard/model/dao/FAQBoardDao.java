package com.passionStudy.passion.board.faqboard.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;


import com.passionStudy.passion.board.DBClose;
import com.passionStudy.passion.board.faqboard.model.vo.FAQBoardVo;


public class FAQBoardDao {
	private static FAQBoardDao faqboardDao = new FAQBoardDao();
	private Connection conn;
	private int result = 0;
	
	private Properties prop = new Properties();

	public FAQBoardDao() {
		super();
		//xml로는 디비 정상 작동 후 변경예정....
		String fileName = FAQBoardDao.class.getResource("/sql/board/FaqBoard-mapper-Test.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	public static FAQBoardDao getInstance() {
		return faqboardDao;
	}
	
	public Connection getConnect() {
		 String driver = "oracle.jdbc.driver.OracleDriver";
		 String url = "jdbc:oracle:thin:@localhost:1521:xe";
		 String id = "passion";
		 String pw = "passion";
		 
		 try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, id, pw);
		} catch (ClassNotFoundException e) {
			// TODO: handle exception
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;	
	}

	public int count() { 
		conn = getConnect();
		PreparedStatement pstmt = null; 
		ResultSet rs = null;
		int cnt = 0; 
		
		try { 
			String sql = "SELECT COUNT(*) FROM FAQ_BOARD"; 
			pstmt = conn.prepareStatement(sql); 
			rs = pstmt.executeQuery(); 
			if(rs.next()) { 
				cnt=rs.getInt(1); 
				} 
		}catch(Exception e) { 
			e.printStackTrace();
		}finally { 
			DBClose.close(conn,pstmt,rs); 
		}

		return cnt; 
	}
		
	/*
	 * public String pasing(String data) { try { data = new
	 * String(data.getBytes("8859_1"), "euc-kr"); } catch (Exception e) { } return
	 * data; }
	 */

	public ArrayList<FAQBoardVo> getFaqBoardList() {
		conn = getConnect();
		PreparedStatement pstmt = null; 
		ResultSet rs = null;

		ArrayList<FAQBoardVo> alist = new ArrayList<FAQBoardVo>();
		try {
			String sql = "SELECT FAQ_NO, FAQ_CATEGORY,FAQ_TITLE, FAQ_CONTENT,FAQ_DATE FROM FAQ_BOARD ORDER BY FAQ_NO DESC";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				FAQBoardVo vo = new FAQBoardVo();
				vo.setFaqNo(rs.getInt(1));
				vo.setFaqCategory(rs.getString(2));
				vo.setFaqTitle(rs.getString(3));
				vo.setFaqContent(rs.getString(4));
				vo.setFaqDate(rs.getDate(5));
				alist.add(vo);
			}
		} catch(Exception e) { 
			e.printStackTrace();
		}finally { 
			DBClose.close(conn,pstmt,rs); 
		}
		return alist;
	}
	
	
	public int getMax() { 
		conn = getConnect();
		PreparedStatement pstmt = null; 
		ResultSet rs = null;
		int max = 0; 
		
		try { 
			String sql = "SELECT MAX(FAQ_NO) FROM FAQ_BOARD"; 
			pstmt = conn.prepareStatement(sql); 
			rs = pstmt.executeQuery(); 
			if(rs.next()) { 
				max=rs.getInt(1); 
			} 
		}catch(Exception e) { 
			e.printStackTrace();
		}finally { 
			DBClose.close(conn,pstmt,rs); 
		}
		return max; 
	}

	//insert 
	public int insertFaqboard(FAQBoardVo vo) {
		conn = getConnect();
		PreparedStatement pstmt = null; 
		int result = 0;
		
		
		try {
			String sql = "INSERT INTO FAQ_BOARD(FAQ_NO,MEMBER_NO,FAQ_CATEGORY,FAQ_TITLE,FAQ_CONTENT,FAQ_DATE) VALUES(FAQ_SEQ.NEXTVAL, 0, ?,?,?,SYSDATE)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getFaqCategory());
			pstmt.setString(2, vo.getFaqTitle());
			pstmt.setString(3, vo.getFaqContent());
			
			result = pstmt.executeUpdate();
			
		}catch(Exception e) { 
			e.printStackTrace();
		}finally { 
			DBClose.close(conn,pstmt); 
		}
		return result;
		
	}
	
	//view
	public FAQBoardVo getView(int faqNo) {
		conn = getConnect();
		PreparedStatement pstmt = null; 
		ResultSet rs = null;
		FAQBoardVo vo = new FAQBoardVo();
		try {
			String sql = "SELECT * FROM FAQ_BOARD WHERE FAQ_NO= ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, faqNo);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				vo = new FAQBoardVo();
				vo.setFaqCategory(rs.getString("FAQ_CATEGORY"));
				vo.setFaqTitle(rs.getString("FAQ_TITLE"));
				vo.setFaqDate(rs.getDate("FAQ_DATE"));
				vo.setFaqContent(rs.getString("FAQ_CONTENT"));
				
			}
		}catch(Exception e) { 
			e.printStackTrace();
		}finally { 
			DBClose.close(conn,pstmt); 
		}
		return vo;
	}
	
	
	//자주묻는질문 삭제 delete
	public int delete(int faqNo) {
		conn = getConnect();
		PreparedStatement pstmt = null; 
		int deleteResult = 0;
		try {
			String sql = "DELETE FROM FAQ_BOARD WHERE FAQ_NO=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, faqNo);
			deleteResult = pstmt.executeUpdate();
		}catch(Exception e) { 
			e.printStackTrace();
		}finally { 
			DBClose.close(conn,pstmt); 
		}
		return deleteResult;
	}

	//자주묻는질문 수정 modify
	public FAQBoardVo modify(FAQBoardVo vo) {
		conn = getConnect();
		PreparedStatement pstmt = null; 
		try {
			String sql = "UPDATE FAQ_BOARD SET FAQ_TITLE=?, FAQ_CONTENT=? WHERE FAQ_NO=?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getFaqTitle());
			pstmt.setString(2, vo.getFaqContent());
			pstmt.setInt(3, vo.getFaqNo());
			
			pstmt.executeUpdate();
		}catch(Exception e) { 
			
		}finally { 
			DBClose.close(conn,pstmt); 
		}
		return vo;
	}
	
	public FAQBoardVo modifyView(int faqNo) {
		conn = getConnect();
		PreparedStatement pstmt = null; 
		ResultSet rs = null;
		FAQBoardVo vo = new FAQBoardVo();
		try {
			String sql = "SELECT * FROM FAQ_BOARD WHERE FAQ_NO= ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, faqNo);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				vo = new FAQBoardVo();
				vo.setFaqTitle(rs.getString("FAQ_TITLE"));
				vo.setFaqContent(rs.getString("FAQ_CONTENT"));
			}
		}catch(Exception e) { 
			e.printStackTrace();
		}finally { 
			DBClose.close(conn,pstmt); 
		}
		return vo;
	}
	
	//자주묻는질문 검색
	
}
