package com.passionStudy.passion.member.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.passionStudy.passion.member.model.vo.MemberVo;
import com.passionStudy.passion.common.JDBCtemplate;

public class MyPageDao {
	
	Connection conn = null;
	
	private Properties prop = new Properties();
	

	public MyPageDao() {
		String fileName = MyPageDao.class.getResource("/sql/member/member.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	

	// 회원정보수정
	public int updateInfoMember(Connection conn, MemberVo vo) throws SQLException {
		// 리턴 타입 선언
		int result = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "UPDATE MAMBER SET MEMBER_PHONE = ?, AD_AGREE = ? WHERE MEMBER_ID = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMemPhone());
			pstmt.setString(2, vo.getMemAdAgree());
			pstmt.setString(3, vo.getMemId());
			
			result = pstmt.executeUpdate();	//1을 반환
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			JDBCtemplate.close(rs);
			pstmt.close();
		}
		return result;
		
	}
	
	// 한 사람에 대한 정보를 리턴하는 메소드		//세션이 있어서 필요 없을 수도
	public MemberVo oneSelectMember(Connection conn, String memberId) throws SQLException  {
		// 리턴 타입 선언
		MemberVo vo = null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM MEMBER WHERE MEMBER_ID = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo = new MemberVo();
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
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCtemplate.close(rs);
			pstmt.close();
		}
		return vo;
	}
	
	// 회원 탈퇴 메소드(회원 상태만 바꿔놓기)
	public int deleteMember(Connection conn, String memberId) throws SQLException {
		// 리턴 타입 선언
		int result = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "UPDATE MEMBER SET MEMBER_STATUS = 'B' WHERE MEMBER_ID = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			result = pstmt.executeUpdate();	//1이 반환
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCtemplate.close(rs);
			pstmt.close();
		}
		return result;
	}
	
	// 한 회원의 패스워드 값을 리턴하는 메소드 작성
	public String getPass(Connection conn, String memberId) throws SQLException {
		// 리턴 타입 선언
		String password = "";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT MEMBER_PWD FROM MEMBER WHERE MEMBER_ID = ?";
		
		try {	
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				password = rs.getString(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCtemplate.close(rs);
			pstmt.close();
		}
		
		return password;
	}
	
	
	

}
