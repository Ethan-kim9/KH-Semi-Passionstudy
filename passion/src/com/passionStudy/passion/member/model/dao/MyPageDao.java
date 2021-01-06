package com.passionStudy.passion.member.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.passionStudy.passion.member.model.vo.MemberVo;

public class MyPageDao {
	
	Connection conn;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	private Properties prop = new Properties();

	public MyPageDao() {
		String fileName = MyPageDao.class.getResource("/sql/member/member.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	

	//////////////////////
	// 회원정보수정
	public void updateInfoMember(MemberVo vo) {
		
		try {
			String sql = "update member set member_phone = ?, ad_agree = ? where MEMBER_ID = ?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMemPhone());
			pstmt.setString(2, vo.getMemAdAgree());
			pstmt.setString(3, vo.getMemId());
			
			pstmt.executeUpdate();
			
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	// 한 사람에 대한 정보를 리턴하는 메소드(마이페이지)
	public MemberVo oneSelectMember(String memberId) {
		MemberVo vo = new MemberVo();
		
		try {
			String sql = "select * from member where MEMBER_ID = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			
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
	
	// 회원 탈퇴 메소드(회원 상태만 바꿔놓기)
	public void deleteMember(String memberId) {
		// 커넥션 연결은 service에서 하니까 여기서 안해도 됨.
		
		try {
			
			String sql = "update member set MEMBER_STATUS = 'B' where MEMBER_ID = ?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memberId);
			
			pstmt.executeUpdate();
			
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 한 회원의 패스워드 값을 리턴하는 메소드 작성
	public String getPass(String memberId) {
		String password = "";
		
		try {
			
			String sql = "select MEMBER_PWD from member where MEMBER_ID = ?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				password = rs.getString(1);
			}
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return password;
	}
	
	
	

}
