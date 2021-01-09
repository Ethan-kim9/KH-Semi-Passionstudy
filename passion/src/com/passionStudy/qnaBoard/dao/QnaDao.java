package com.passionStudy.qnaBoard.dao;

import java.sql.*;
import java.util.ArrayList;
import com.passionStudy.qnaBoard.vo.*;

public class QnaDao {
	private static QnaDao qnaDao = new QnaDao();
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result = 0;


	public QnaDao() {
		super();
	}
	
	
	public static QnaDao getInstance() {
		return qnaDao;
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

	
	public void close(Connection conn, PreparedStatement pstmt, ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		
		if (conn != null) {
			try {
				conn.close();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
	
	public ArrayList<QnaVo> getMemberList() {
		ArrayList<QnaVo> list = new ArrayList<>();
		conn = getConnect();
		String sql = "SELECT QNA_NO, QNA_TITLE, QNA_WRITER, QNA_DATE, CATEGORY FROM QNA_BOARD ORDER BY QNA_NO DESC";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				QnaVo vo = new QnaVo();
				
				vo.setQnaNo(rs.getInt(1));
				vo.setQnaTitle(rs.getString(2));
				vo.setQnaWriter(rs.getString(3));
				vo.setQnaDate(rs.getString(4));
				vo.setCategory(rs.getString(5));
				list.add(vo);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			close(conn, pstmt, rs);
		}
		return list;
	}
	
	public int write(QnaVo qnaVo) {
		conn = getConnect();
		String sql = "INSERT INTO QNA_BOARD"+
				"(QNA_NO,QNA_WRITER,QNA_TITLE,QNA_CONTENT,QNA_DATE,ANSWER_TITLE,ANSWER_CONTENT,BOARD_ANSWER,PAGING_STACK,CATEGORY)"+
				"VALUES(QNA_BOARD_SEQ.NEXTVAL, ?, ?, ?, SYSDATE, ' ', ' ', 0, 0, ?)";
	
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, qnaVo.getQnaWriter());
			pstmt.setString(2, qnaVo.getQnaTitle());
			pstmt.setString(3, qnaVo.getQnaContent());
			pstmt.setString(4, qnaVo.getCategory());
			
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			close(conn, pstmt, rs);
		}	
		return result;
	}
	
	public QnaVo detail(int qnaNo) {
		QnaVo vo = new QnaVo();
		
		conn = getConnect();
		String sql = "SELECT * FROM QNA_BOARD WHERE QNA_NO=?";
		
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, qnaNo);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				vo.setQnaTitle(rs.getNString("QNA_TITLE"));
				vo.setQnaWriter(rs.getString("QNA_WRITER"));
				vo.setQnaContent(rs.getNString("QNA_CONTENT"));
				vo.setQnaDate(rs.getString("QNA_DATE"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			close(conn, pstmt, rs);
		}
		
		return vo;
	}
	
	
	public int count() {
		conn = getConnect();
		String sql = "SELECT COUNT(*) FROM QNA_BOARD";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				result = rs.getInt(1);
			}
		
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			close(conn, pstmt, rs);
		}
		
		return result;
	
	}




}

