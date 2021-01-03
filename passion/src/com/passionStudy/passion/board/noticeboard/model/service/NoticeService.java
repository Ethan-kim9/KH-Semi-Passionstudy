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
		public int removeNoticeAll(int[] ids){
			
			return 0;
		}
		public int pubNoticeAll(int[] ids){
			
			return 0;
		}
		public int insertNotice(NoticeVo notice){
			int result = 0;
			
			
	    	String sql = "INSERT INTO NOTICE(NOTICE_TITLE, NOTICE_CONTENT, MEMBER_NO) VALUES(?,?,?)";
	    	String url = "jdbc:oracle:thin:@localhost:1521:xe";
			
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection(url,"passion","passion");
				PreparedStatement st = con.prepareStatement(sql);
				st.setString(1, notice.getNoticeTitle());
				st.setString(2, notice.getNoticeContent());
				st.setInt(3, notice.getMemberNo());
				
				result = st.executeUpdate();	
				
				st.close();
				con.close();
			} catch (ClassNotFoundException e) {
		
				e.printStackTrace();
			} catch (SQLException e) {
		
				e.printStackTrace();
			}
					
			return result;
		}
	
		public int deleteNotice(int id){
			
			return 0;
		}
		public int updateNotice(NoticeVo notice){
			
			return 0;
		}
		List<NoticeVo> getNoticeNewestList(){
			
			return null;
		}
		
		
		public List<NoticeView> getNoticeList(){
			return getNoticeList("noticeTitle", "", 1);
		
		}
		
		public List<NoticeView> getNoticeList(int page){
			return getNoticeList("noticeTitle", "", page);
		
		}
		
		public List<NoticeView> getNoticeList(String field/*NOTICE_TITLE, MEMBER_NO, */, String query/*A*/, int page){
		   
			List<NoticeView> list = new ArrayList<>();
		    	
	    	String sql = "SELECT * FROM (" +
		    			"	SELECT ROWNUM NUM, N.* " + 
		    			"	FROM (SELECT * FROM NOTICE_VIEW WHERE "+field+" LIKE ? ORDER BY REGDATE DESC) N" +
		    			") " + 
		    			"WHERE NUM BETWEEN ? AND ?";
		    	
				// 1, 11, 21, 31, -> an = 1+(page-1)*10
		    	//  10, 20, 30, 40 -> page*10
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
				
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection(url,"passion","passion");
				PreparedStatement st = con.prepareStatement(sql);
				st.setString(1, "%"+query+"%");
				st.setInt(2, 1+(page-1)*10);
				st.setInt(3, page*10);
				ResultSet rs = st.executeQuery();	
				
			while(rs.next()) {
				int noticeId = rs.getInt("NOTICE_NO");
				String noticeTitle = rs.getString("NOTICE_TITLE");
				int memberNo = rs.getInt("MEMBER_NO");
				Date regdate = rs.getDate("REGDATE");
				int noticeCount = rs.getInt("noticeCount");
				//String content = rs.getString("CONTENT");
				
			NoticeVo noticevo = new NoticeVo(
					noticeId, 
					noticeTitle,
					memberNo,
					regdate,
					noticeCount
					//content
					);
			list.add(notice);
			}
			
			rs.close();
			st.close();
			con.close();
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		} catch (SQLException e) {

			e.printStackTrace();
		}
		
    	return list;
    }
		
		public int getNoticeCount() {
			
			return getNoticeCount("title", ""); 
		}
		public int getNoticeCount(String field, String query) {
			
			int count = 0;
			
			String sql = "SELECT COUNT(ID) COUNT FROM (" +
	    			"	SELECT ROWNUM NUM, N.* " + 
	    			"	FROM (SELECT * FROM NOTICE WHERE "+field+" LIKE ? ORDER BY REGDATE DESC) N" +
	    			")";
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection(url,"system","oracle");
				PreparedStatement st = con.prepareStatement(sql);
				st.setString(1, "%"+query+"%");

				ResultSet rs = st.executeQuery();	
				
				if(rs.next())
					count = rs.getInt("count");
			
				rs.close();
				st.close();
				con.close();
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		} catch (SQLException e) {

			e.printStackTrace();
		}
			
			return count;
		}
		
		public NoticeVo getNotice(int id) { //게시글 번호
			NoticeVo noticevo = null;
			
			String sql = "SELECT * FROM NOTICE WHERE ID=?";
			
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection(url,"system","oracle");
				PreparedStatement st = con.prepareStatement(sql);
				st.setInt(1, id);
				
				ResultSet rs = st.executeQuery();	
				
			if(rs.next()) {
				int  noticeNo= rs.getInt("NOTICE_NO");
				String noticeTitle = rs.getString("NOTICE_TITLE");
				int memberNo = rs.getInt("MEMBER_NO");
				Date regdate = rs.getDate("REGDATE");
				int noticeCount = rs.getInt("NOTICE_COUNT");
				String content = rs.getString("CONTENT");

				noticevo = new NoticeVo(
						noticeNo, 
						noticeTitle,
						memberNo,
						regdate,
						noticeCount,
						content
						);
			
			}
			
			rs.close();
			st.close();
			con.close();
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		} catch (SQLException e) {

			e.printStackTrace();
		}
			return noticevo;
		}
		
		public NoticeVo getNextNotice(int id){ 
			NoticeVo noticevo = null;

	    	String sql = "SELECT * FROM NOTICE "
	    				+ "WHERE ID = "
	    				+ "    SELECT ID FROM NOTICE "
	    				+ "    WHERE REGDATE > (SELECT REGDATE FROM NOTICE WHERE ID=?)" 
	    				+ "    AND ROWNUM = 1" 
	    				+ ")";
	    	String url = "jdbc:oracle:thin:@localhost:1521:xe";
			
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection(url,"system","oracle");
				PreparedStatement st = con.prepareStatement(sql);
				st.setInt(1, id);
				
				ResultSet rs = st.executeQuery();	
				
			if(rs.next()) {
				int nid = rs.getInt("ID");
				String title = rs.getString("TITLE");
				String writerId = rs.getString("WRITER_ID");
				Date regdate = rs.getDate("REGDATE");
				int hit = rs.getInt("HIT");
				String files = rs.getString("FILES");
				String content = rs.getString("CONTENT");
				boolean pub = rs.getBoolean("PUB");
				
				noticevo = new NoticeVo(
						nid, 
						title,
						writerId,
						regdate,
						hit,
						files,
						content,
						pub
						);
		
			}
			
			rs.close();
			st.close();
			con.close();
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		} catch (SQLException e) {

			e.printStackTrace();
		}
	     return notice;
	    }

	    public Notice getPrevNotice(int id){ 
			Notice notice = null;

	    	String sql = "SELECT ID FROM (SELECT * FROM NOTICE ORDER BY REGDATE DESC) "
	    				+ "WHERE REGDATE < (SELECT REGDATE FROM NOTICE WHERE ID=?) "
	    				+ "AND ROWNUM = 1";
	    	String url = "jdbc:oracle:thin:@localhost:1521:xe";
			
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection(url,"system","oracle");
				PreparedStatement st = con.prepareStatement(sql);
				st.setInt(1, id);
				
				ResultSet rs = st.executeQuery();	
				
			if(rs.next()) {
				int nid = rs.getInt("ID");
				String title = rs.getString("TITLE");
				String writerId = rs.getString("WRITER_ID");
				Date regdate = rs.getDate("REGDATE");
				int hit = rs.getInt("HIT");
				String files = rs.getString("FILES");
				String content = rs.getString("CONTENT");
				boolean pub = rs.getBoolean("PUB");
				
				noticevo = new NoticeVo(
						nid, 
						title,
						writerId,
						regdate,
						hit,
						files,
						content,
						pub
						);
			}
			
			rs.close();
			st.close();
			con.close();
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		} catch (SQLException e) {

			e.printStackTrace();
		}
	     return notice;
	    }
	    
		public int deleteNoticeAll(int[] ids) {
			
			int result = 0;
			
			String params = "";
			
			for(int i=0; i<ids.length; i++) {
				params += ids[i];
				if(i < ids.length-1)
					params += ",";
			}
	    	String sql = "DELETE NOTICE WHERE ID IN ("+params+")";
	    	String url = "jdbc:oracle:thin:@localhost:1521:xe";
			
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection(url,"system","oracle");
				Statement st = con.createStatement();
				
				
				result = st.executeUpdate(sql);	
				
				st.close();
				con.close();
			} catch (ClassNotFoundException e) {
		
				e.printStackTrace();
			} catch (SQLException e) {
		
				e.printStackTrace();
			}
					
			return result;
		}


	}