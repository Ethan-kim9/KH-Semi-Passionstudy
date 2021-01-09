package com.passionStudy.passion.manager.model.dao;
import static com.passionStudy.passion.common.JDBCtemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.passionStudy.passion.manager.model.vo.ManagerMemberVo;

public class ManagerMemberDao {
	
	private Properties prop = new Properties();
	
	public ManagerMemberDao() {
		
		String fileName = ManagerMemberDao.class.getResource("/sql/manager/managerMember-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<ManagerMemberVo> memberSearch(Connection conn, String searchName) {
		
		ArrayList<ManagerMemberVo> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("memberSearch");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, searchName);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ManagerMemberVo mmv = new ManagerMemberVo();
					mmv.setMemNo(rs.getInt("MEMBER_NO"));
					mmv.setMemId(rs.getString("MEMBER_ID"));
					mmv.setMemName(rs.getString("MEMBER_NAME"));
					mmv.setMemPhone(rs.getString("MEMBER_PHONE"));
					mmv.setMemDate(rs.getDate("Member_Date"));
					mmv.setMemStatus(rs.getString("MEMBER_STATUS"));
					mmv.setMemPoint(rs.getInt("MEMBER_POINT"));
					list.add(mmv);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}

	public int changeMemberPW(Connection conn , String memNo) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("changePwd");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,memNo);
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;

	}

	public ArrayList<ManagerMemberVo> memberSearch(Connection conn, String searchName, String searchPhone) {
		ArrayList<ManagerMemberVo> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("memberSearch2");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, searchName);
			pstmt.setString(2, searchPhone);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ManagerMemberVo mmv = new ManagerMemberVo();
					mmv.setMemNo(rs.getInt("MEMBER_NO"));
					mmv.setMemId(rs.getString("MEMBER_ID"));
					mmv.setMemName(rs.getString("MEMBER_NAME"));
					mmv.setMemPhone(rs.getString("MEMBER_PHONE"));
					mmv.setMemDate(rs.getDate("Member_Date"));
					mmv.setMemStatus(rs.getString("MEMBER_STATUS"));
					mmv.setMemPoint(rs.getInt("MEMBER_POINT"));
					list.add(mmv);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}

	public int changeMemberPoint(Connection conn, String memNo, String newPoint) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("changePoint");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,newPoint);
			pstmt.setString(2,memNo);
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}

	public int blackListEnroll(Connection conn, String memNo, String newStatus) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("blackListEnroll");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,newStatus);
			pstmt.setString(2,memNo);
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
}
