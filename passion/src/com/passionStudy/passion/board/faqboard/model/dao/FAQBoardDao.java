package com.passionStudy.passion.board.faqboard.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Properties;

import com.passionStudy.passion.board.faqboard.model.vo.FAQBoardVo;
import com.passionStudy.passion.board.faqboard.model.*;

public class FAQBoardDao {
	DBConnect dbconnect = null;
	
	private Properties prop = new Properties();

	public FAQBoardDao() {
		dbconnect = new DBConnect();
		//xml로는 디비 정상 작동 후 변경예정....
		String fileName = FAQBoardDao.class.getResource("/sql/board/FaqBoard-mapper-Test.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	public int count() { 
		Connection con = dbconnect.getConnection(); 
		PreparedStatement pstmt = null; 
		ResultSet rs = null;
		int cnt = 0; 
		
		try { 
			String sql = "SELECT COUNT(*) FROM FAQ_BOARD"; 
			pstmt = con.prepareStatement(sql); 
			rs = pstmt.executeQuery(); 
			if(rs.next()) { 
				cnt=rs.getInt(1); 
				} 
		}catch(Exception e) { 
			
		}finally { 
			DBClose.close(con,pstmt,rs); 
		}

		return cnt; 
	}
		
	public String pasing(String data) {
		try {
			data = new String(data.getBytes("8859_1"), "euc-kr");
		} catch (Exception e) {
		}
		return data;
	}

	public ArrayList<FAQBoardVo> getFaqBoardList() {
		Connection con = dbconnect.getConnection(); 
		PreparedStatement pstmt = null; 
		ResultSet rs = null;

		ArrayList<FAQBoardVo> alist = new ArrayList<FAQBoardVo>();
		try {
			String sql = "SELECT FAQ_NO, FAQ_TITLE, FAQ_CONTENT,FAQ_DATE FROM FAQ_BOARD ORDER BY FAQ_NO DESC";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				FAQBoardVo vo = new FAQBoardVo();
				/* boolean dayNew = false; */
				vo.setFaqNo(rs.getInt(1));
				vo.setFaqTitle(rs.getString(2));
				vo.setFaqContent(rs.getString(3));
				vo.setFaqDate(rs.getString(4));
				/*
				 * Date date = new Date(); SimpleDateFormat simpleDate = new
				 * SimpleDateFormat("yyyy-MM-dd"); String year = (String)
				 * simpleDate.format(date); String yea = rs.getString(4).substring(0, 10); if
				 * (year.equals(yea)) { dayNew = true; }
				 */
				alist.add(vo);
			}
		} catch(Exception e) { 
			
		}finally { 
			DBClose.close(con,pstmt,rs); 
		}
		return alist;
	}
	
	
	public int getMax() { 
		Connection con = dbconnect.getConnection(); 
		PreparedStatement pstmt = null; 
		ResultSet rs = null;
		int max = 0; 
		
		try { 
			String sql = "SELECT MAX(FAQ_NO) FROM FAQ_BOARD"; 
			pstmt = con.prepareStatement(sql); 
			rs = pstmt.executeQuery(); 
			if(rs.next()) { 
				max=rs.getInt(1); 
			} 
		}catch(Exception e) { 
			
		}finally { 
			DBClose.close(con,pstmt,rs); 
		}
		return max; 
	}

	//insert 
	public int insertFaqboard(FAQBoardVo vo) {
		Connection con = dbconnect.getConnection(); 
		PreparedStatement pstmt = null; 
		int result = 0;
		
		
		try {
			String sql = "INSERT INTO FAQ_BOARD(FAQ_TITLE,FAQ_CONTENT) VALUES( ? , ?)";
			pstmt = con.prepareStatement(sql);
			
			//pstmt.setInt(1, vo.getFaqNo());
			//pstmt.setInt(2, vo.getMemberNo());
			pstmt.setString(1, pasing(vo.getFaqTitle()));
			pstmt.setString(2, pasing(vo.getFaqContent()));
			//pstmt.setString(5, vo.getFaqDate());
			//pstmt.setInt(6, max+1);
			
			result = pstmt.executeUpdate();
			
		}catch(Exception e) { 
			
		}finally { 
			DBClose.close(con,pstmt); 
		}
		return result;
		
	}
	
	//view
	public FAQBoardVo getView(int idx) {
		Connection con = dbconnect.getConnection(); 
		PreparedStatement pstmt = null; 
		ResultSet rs = null;
		FAQBoardVo vo = null;
		try {
			String sql = "SELECT FAQ_TITLE, FAQ_CONTENT, FAQ_DATE FROM FAQ_BOARD WHERE FAQ_NO= ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				vo = new FAQBoardVo();
				vo.setFaqTitle(rs.getString(1));
				vo.setFaqContent(rs.getString(2));
			}
		}catch(Exception e) { 
			
		}finally { 
			DBClose.close(con,pstmt); 
		}
		return vo;
	}
	
	//자주묻는질문 삭제 delete
	public void delete(int idx) {
		Connection con = dbconnect.getConnection(); 
		PreparedStatement pstmt = null; 
		try {
			String sql = "DELETE FROM FAQ_BOARD WHERE FAQ_NO= ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, idx);
			pstmt.executeUpdate();
		}catch(Exception e) { 
			
		}finally { 
			DBClose.close(con,pstmt); 
		}
	}

	//자주묻는질문 수정 modify
	public void modify(FAQBoardVo vo, int idx) throws SQLException {
		Connection con = dbconnect.getConnection(); 
		PreparedStatement pstmt = null; 
		try {
			String sql = "UPDATE FAQ_BOARD SET FAQ_TITLE=?, FAQ_CONTENT=? WHERE FAQ_NO= ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, pasing(vo.getFaqTitle()));
			pstmt.setString(2, pasing(vo.getFaqContent()));
			pstmt.setInt(3, idx);
			pstmt.executeUpdate();
		}catch(Exception e) { 
			
		}finally { 
			DBClose.close(con,pstmt); 
		}
	}
	
	
	//자주묻는질문 검색
	
}
