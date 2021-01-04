package com.passionStudy.passion.board.noticeboard.model.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.passionStudy.passion.board.noticeboard.model.vo.NoticeView;
import com.passionStudy.passion.board.noticeboard.model.vo.NoticeVo;

public class NoticeService {
	//공지사항 목록 구현 기능
	public List<NoticeVo> getNoticeList(){
		
		return getNoticeList("nTitle", "", 1);
	}
	
	// 페이징처리 기능
	public List<NoticeVo> getNoticeList(int page){
		
		return getNoticeList("nTitle", "", page);
	}

	// 검색 기능
	public List<NoticeVo> getNoticeList(String field /*TITLE, CONTENT*/, String query, int page){
		
		List<NoticeVo> list = new ArrayList<>();

		String sql = "SELECT * FROM ("
					+ "    SELECT ROWNUM NUM, N.* "
					+ "    FROM (SELECT * FROM NOTICE_B WHERE "+field+" LIKE ? ORDER BY N_DATE DESC) N"
					+ ")"
					+ "WHERE NUM BETWEEN ? AND ?";
		
		// 1, 11, 21, 31 -> an = 1+(page-1)*10
		// 10, 20, 30, 40 -> page*10
		
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url,"passion","passion");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, "%"+query+"%");
			st.setInt(2, 1+(page-1)*10);
			st.setInt(3, page*10);
			ResultSet rs = st.executeQuery();	
			
			while(rs.next()){
				int n_no = rs.getInt("N_NO");
				String nTitle = rs.getString("N_TITLE");
				String nWriter = rs.getString("N_WRITER");
				Date nDate = rs.getDate("N_DATE");
				int nHit = rs.getInt("N_HIT");
				String nContent = rs.getString("N_CONTENT");
				
				NoticeVo noticeVo = new NoticeVo(
						n_no,
						nTitle,
						nWriter,
						nDate,
						nHit,
						nContent
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
			
		return list;
	}
	
	//목록에 대한 개수
	public int getNoticeCount() {
		
		return getNoticeCount("nTitle", "");
	}
	
	//페이징 없이 검색된 결과의 총 개수
	public int getNoticeCount(String field, String query) {
		
		int count = 0; 
		String sql = "SELECT COUNT(N_NO) COUNT FROM ("
					+ "    SELECT ROWNUM NUM, N.* "
					+ "    FROM (SELECT * FROM NOTICE_B WHERE "+field+" LIKE ? ORDER BY N_DATE DESC) N"
					+ ")"
					+ "WHERE NUM BETWEEN 6 AND 10";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url,"passion","passion");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, "%"+query+"%");
			ResultSet rs = st.executeQuery();	
			
			count = rs.getInt("count");
			
			
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
		
		return count ;
	}
	
	//detail페이지에서 no값을 받아 detail.jsp를 보여주는 기능
	public NoticeVo getNotice(int n_no) {
		NoticeVo noticeVo = null;
		
		String sql = "SELECT * FROM NOTICE_B WHERE N_NO=?";

		String url = "jdbc:oracle:thin:@localhost:1521:xe";
	
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url,"passion","passion");
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, n_no);

			ResultSet rs = st.executeQuery();	
			
			if(rs.next()){
				int nn_no = rs.getInt("N_NO");
				String nTitle = rs.getString("N_TITLE");
				String nWriter = rs.getString("N_WRITER");
				Date nDate = rs.getDate("N_DATE");
				int nHit = rs.getInt("N_HIT");
				String nContent = rs.getString("N_CONTENT");
				
				noticeVo = new NoticeVo(
						nn_no,
						nTitle,
						nWriter,
						nDate,
						nHit,
						nContent
						);
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
		
		return noticeVo;
	}
	
	
	/* detail.jsp에서 다음글/이전글 볼 수 있는 기능
 	public int getNextNotice(int id) {
		
		return null;
	}
	
	public int getPrevNotice(int id) {
		
		return null;
	}*/
}