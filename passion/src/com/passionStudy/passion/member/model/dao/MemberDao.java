package com.passionStudy.passion.member.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.passionStudy.passion.member.model.vo.MemberVo;

public class MemberDao {
	
	Connection conn;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	private Properties prop = new Properties();

	public MemberDao() {
		String fileName = MemberDao.class.getResource("/sql/member/member.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	// 로그인
	public MemberVo loginMember(Connection conn, String memId, String memPwd) throws SQLException {
		MemberVo mv = null;
		String sql = prop.getProperty("loginMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			pstmt.setString(2, memPwd);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				mv = new MemberVo
						(rs.getInt("MEMBER_NO"),
						 rs.getString("MEMBER_NAME"),
						 rs.getString("MEMBER_ID"),
						 rs.getString("MEMBER_PWD"),
						 rs.getString("MEMBER_PHONE"),
						 rs.getDate("MEMBER_DATE"),
						 rs.getString("ADMIN_CHECK"),
						 rs.getInt("RECOM_COUNT"),
						 rs.getString("MEMBER_STATUS"),
						 rs.getString("AD_AGREE"),
						 rs.getString("RECOM_CODE"),
						 rs.getInt("MEMBER_POINT"),
						 rs.getString("TOKEN1"),
						 rs.getString("TOKEN2")
						);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			rs.close();
			pstmt.close();
		}
		
		return mv;
		
	}
	
	// 회원가입
	public int insertMember(Connection conn, MemberVo mv) throws SQLException {
		int result = 0;
		String sql = prop.getProperty("insertMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mv.getMemName());
			pstmt.setString(2, mv.getMemId());
			pstmt.setString(3, mv.getMemPwd());
			pstmt.setString(4, mv.getMemPhone());
			pstmt.setString(5, mv.getMemAdAgree());
			
			result = pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			pstmt.close();
			
		}
		return result;
		
	}
	
	// 아이디 찾기
	public String findIdMember(Connection conn, String memName, String memPhone) throws SQLException {
		String findId = "";
		String sql = prop.getProperty("findIdMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memName);
			pstmt.setString(2, memPhone);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				findId = rs.getString(1);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			rs.close();
			pstmt.close();
		}
		
		return findId;
	}
	
	// 비밀번호 찾기
	public int findPwdMember(Connection conn, MemberVo mv) throws SQLException {
		int memNo = 0;
		String sql = prop.getProperty("findPwdMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mv.getMemName());
			pstmt.setString(2, mv.getMemId());
			pstmt.setString(3, mv.getMemPhone());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				memNo = rs.getInt("MEMBER_NO");
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			rs.close();
			pstmt.close();
		}
		return memNo;
	}

	
	//////////////////////
	// 회원정보수정
	public void updateInfoMember(MemberVo vo) {
		// 커넥션 연결 자동인가?
		
		try {
			String sql = "update member set member_phone = ?, ad_agree = ? where member_id = ?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMemPhone());
			pstmt.setString(2, vo.getMemAdAgree());
			
			pstmt.executeUpdate();
			
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
