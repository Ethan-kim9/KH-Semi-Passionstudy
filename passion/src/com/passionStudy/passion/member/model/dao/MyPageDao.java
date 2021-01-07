package com.passionStudy.passion.member.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;


import static com.passionStudy.passion.common.JDBCtemplate.*;

public class MyPageDao {
	
	Connection conn = null;
	
	private Properties prop = new Properties();
	

	public MyPageDao() {
		String fileName = MyPageDao.class.getResource("/sql/mypage/mypageEdit-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	

	// 회원정보수정
	public int updateInfoMember(Connection conn, String memId, String memPhone, String memAdAgree) throws SQLException {
		// 리턴 타입 선언
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("editPhoneNadAgree");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memPhone);
			pstmt.setString(2, memAdAgree);
			pstmt.setString(3, memId);
			
			result = pstmt.executeUpdate();	//1을 반환
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			close(pstmt);
		}
		return result;	
	}
	
	
	// 회원 탈퇴 메소드(회원 상태만 바꿔놓기)
	public int deleteMember(Connection conn, String memberId) throws SQLException {
		// 리턴 타입 선언
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("withdrawal");
				
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			result = pstmt.executeUpdate();	//1이 반환
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	// 한 회원의 패스워드 값을 리턴하는 메소드 작성
	public String getPass(Connection conn, String memberId) throws SQLException {
		// 리턴 타입 선언
		String password = "";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("giveMeThePassword");
		
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
			close(rs);
			close(pstmt);
		}
		
		return password;
	}
	
	// 비밀번호 변경
	public int changePwd(Connection conn, String newPassword, String memberId) throws SQLException {
		// 리턴타입 선언
		int result = 0; 
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("changeThePassword");
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, newPassword);
			pstmt.setString(2, memberId);
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
			
	}
	

}
