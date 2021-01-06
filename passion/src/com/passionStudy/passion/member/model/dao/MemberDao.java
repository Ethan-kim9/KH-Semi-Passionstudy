package com.passionStudy.passion.member.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.passionStudy.passion.common.JDBCtemplate;
import com.passionStudy.passion.member.model.vo.MemberVo;

public class MemberDao {
	
	Connection conn = null;
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
	public int loginMember(String memId, String memPwd) throws SQLException {
		String sql = prop.getProperty("loginMember");
		
		try {
			conn = JDBCtemplate.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(rs.getString(1).equals(memPwd)) {
					return 1;	// 로그인 성공
				}else {
					return 0;	// 비밀번호 틀림
				}
			}
			return -1;	// 아이디 없음
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try { if(conn != null) conn.close();}catch(Exception e) { e.printStackTrace(); }
			try { if(pstmt != null) pstmt.close();}catch(Exception e) { e.printStackTrace(); }
			try { if(rs != null) rs.close();}catch(Exception e) { e.printStackTrace(); }
		}
		return -2;	// 데이터베이스 오류
	}
	// 회원가입
	public int insertMember(MemberVo mv) throws SQLException {
		
		String sql = prop.getProperty("insertMember");
		
		try {
			conn = JDBCtemplate.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, mv.getMemNo());
			pstmt.setString(2, mv.getMemName());
			pstmt.setString(3, mv.getMemId());
			pstmt.setString(4, mv.getMemPwd());
			pstmt.setString(5, mv.getMemPhone());
			pstmt.setString(6, mv.getMemAdAgree());
			
			return pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try { if(conn != null) conn.close();}catch(Exception e) { e.printStackTrace(); }
			try { if(pstmt != null) pstmt.close();}catch(Exception e) { e.printStackTrace(); }
			try { if(rs != null) rs.close();}catch(Exception e) { e.printStackTrace(); }
		}
		return -1;	// 회원가입 실패
		
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
	
	// 한 사람에 대한 정보를 리턴하는 메소드(마이페이지)
	public MemberVo oneSelectMember(int nNum) {
		MemberVo vo = new MemberVo();
		
		try {
			String sql = "select * from member where member_no = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, nNum);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setMemNo(rs.getInt(1));
				vo.setMemId(rs.getString(2));
				vo.setMemPwd(rs.getString(3));
				vo.setMemName(rs.getString(4));
				vo.setMemPhone(rs.getString(5));
				vo.setMemDate(rs.getDate(6));
				vo.setAdminCheck(rs.getString(7));
				vo.setMemRecomCount(rs.getInt(8));
				vo.setMemStatus(rs.getString(9));
				vo.setMemAdAgree(rs.getString(10));
				vo.setMemRecomCode(rs.getString(11));
				vo.setMemPoint(rs.getInt(12));
				vo.setMemToken1(rs.getString(13));
				vo.setMemToken2(rs.getString(14));
			}
			conn.close();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}

}
