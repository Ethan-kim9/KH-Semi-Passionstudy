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
	//전체 삭제
	public int removeAll(int[] ids){
		return 0;
	}
	
	//게시물 등록
	public int insertNotice(NoticeVo notice){
		return 0;
	}
	
	//게시물 삭제
	public int deleteNotice(int id){
		return 0;
	}
	
	//게시물 수정
	public int updateNotice(NoticeVo noticeVo){
		return 0;
	}
	
	
	//공지사항 목록 구현 기능
	public List<NoticeVo> getNoticeList(){
		
		return getNoticeList("ntitle", "", 1);
	}
	
	// 페이징처리 기능
	public List<NoticeVo> getNoticeList(int page){
		
		return getNoticeList("ntitle", "", page);
	}

	// 검색 기능
	public List<NoticeVo> getNoticeList(String field /*TITLE, CONTENT*/, String query, int page){
		
		List<NoticeVo> list = new ArrayList<>();

		String sql = "SELECT * FROM ("
					+ "    SELECT ROWNUM NUM, N.* "
					+ "    FROM (SELECT * FROM NOTICE WHERE "+field+" LIKE ? ORDER BY REGDATE DESC) N"
					+ ")"
					+ "WHERE NUM BETWEEN ? AND ?";
		
		// 1, 11, 21, 31 -> an = 1+(page-1)*10
		// 10, 20, 30, 40 -> page*10
		
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url,"dbtest","1234");
			PreparedStatement st = con.prepareStatement(sql);
			
			st.setString(1, "%"+query+"%");
			st.setInt(2, 1+(page-1)*10);
			st.setInt(3, page*10);
			
			ResultSet rs = st.executeQuery();	
			
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
			
		return list;
	}
	
	//목록에 대한 개수
	public int getNoticeCount() {
		//다른 점 발견 
		return getNoticeCount("ntitle", "");
		
	}
	
	//페이징 없이 검색된 결과의 총 개수
	public int getNoticeCount(String field, String query) {
		
		int count = 0; 
		String sql = "SELECT COUNT(NOTICE_NO) COUNT FROM ("
					+ "    SELECT ROWNUM NUM, N.* "
					+ "    FROM (SELECT * FROM NOTICE WHERE "+field+" LIKE ? ORDER BY REGDATE DESC) N"
					+ ")";
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url,"dbtest","1234");
			PreparedStatement st = con.prepareStatement(sql);
			
			st.setString(1, "%"+query+"%");
			
			ResultSet rs = st.executeQuery();	
			
			if(rs.next())
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
	public NoticeVo getNotice(int nno) {
		NoticeVo noticeVo = null;
		
		String sql = "SELECT * FROM NOTICE WHERE NOTICE_NO=?";

		String url = "jdbc:oracle:thin:@localhost:1521:xe";
	
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url,"dbtest","1234");
			PreparedStatement st = con.prepareStatement(sql);
			
			st.setInt(1, nno);

			ResultSet rs = st.executeQuery();	
			
			if(rs.next()){
				int nno1 = rs.getInt("NOTICE_NO");
				String ntitle = rs.getString("NOTICE_TITLE");
				int mno = rs.getInt("MEMBER_NO");
				Date regdate = rs.getDate("REGDATE");
				int ncount = rs.getInt("NOTICE_COUNT");
				String ncontent = rs.getString("NOTICE_CONTENT");
				
				noticeVo = new NoticeVo(
						nno1,
						mno,
						ntitle,
						ncontent,
						ncount,
						regdate
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
	
	public NoticeVo getPrevNotice(int id) {
		NoticeVo noticeVo = null;
		String sql = "SELECT ID FROM (SELECT * FROM NOTICE ORDER BY REGDATE DESC) "
					+"WHERE REGDATE < (SELECT REGDATE FROM NOTICE WHERE ID=?) "
					+"AND ROWNUM = 1";
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection(url,"system","oracle");
			PreparedStatement st = conn.prepareStatement(sql);
			
			st.setInt(1, id);
			
			ResultSet rs = st.executeQuery();	
			
			
			if(rs.next()) {
				int nno1 = rs.getInt("NOTICE_NO");
				String ntitle = rs.getString("NOTICE_TITLE");
				int mno = rs.getInt("MEMBER_NO");
				Date regdate = rs.getDate("REGDATE");
				int ncount = rs.getInt("NOTICE_COUNT");
				String ncontent = rs.getString("NOTICE_CONTENT");
				
				noticeVo = new NoticeVo(
						nno1,
						mno,
						ntitle,
						ncontent,
						ncount,
						regdate

						);
			
			}
			
			rs.close();
			st.close();
			conn.close();
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