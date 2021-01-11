package com.passionStudy.passion.member.model.dao;

import static com.passionStudy.passion.common.JDBCtemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.passionStudy.passion.member.model.vo.MemberVo;

public class MemberDao {
	
	Connection conn = null;
	
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
	public MemberVo loginMember(Connection conn, String memId, String memPwd) {

		MemberVo mv = null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = prop.getProperty("loginMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			pstmt.setString(2, memPwd);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				mv = new MemberVo
						(rs.getInt("MEMBER_NO"),
						 rs.getString("MEMBER_ID"),
						 rs.getString("MEMBER_PWD"),
						 rs.getString("MEMBER_NAME"),
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
			close(rs);
			close(pstmt);
		}
		return mv;
	}
		
	// 회원가입
	public int insertMember(Connection conn, String memId,String memPwd,String memName,String memPhone) throws SQLException {
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertMember");
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			pstmt.setString(2, memPwd);
			pstmt.setString(3, memName);
			pstmt.setString(4, memPhone);
			
			result = pstmt.executeUpdate();
			
			System.out.println(result);
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;		
	}
	
	// 아이디 중복체크
	public MemberVo idDuplicatedCheck(Connection conn, String memId) {
		MemberVo mv = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("idDuplicatedCheck");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memId);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				mv = new MemberVo
						(rs.getInt("MEMBER_NO"),
						 rs.getString("MEMBER_ID"),
						 rs.getString("MEMBER_PWD"),
						 rs.getString("MEMBER_NAME"),
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
				
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return mv;
	}
	
	public int phoneDuplicatedCheck(Connection conn, String memPhone) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = prop.getProperty("phoneDuplicatedCheck");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memPhone);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				result = rs.getInt(1);
			}
			System.out.println(result);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);		
		}
		return result;
	}
	
	// 아이디 찾기
	public MemberVo findIdMember(Connection conn, String memName, String memPhone) {
		MemberVo mv = null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = prop.getProperty("findIdMember");
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memName);
			pstmt.setString(2, memPhone);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				mv = new MemberVo
						(rs.getInt("MEMBER_NO"),
						 rs.getString("MEMBER_ID"),
						 rs.getString("MEMBER_PWD"),
						 rs.getString("MEMBER_NAME"),
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
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return mv;
	}
	
	// 비밀번호 찾기
	public MemberVo findPwdMember(Connection conn, String memId, String memName, String memPhone) {
		MemberVo mv = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = prop.getProperty("findPwdMember");
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			pstmt.setString(2, memName);
			pstmt.setString(3, memPhone);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				mv = new MemberVo
						(rs.getInt("MEMBER_NO"),
						 rs.getString("MEMBER_ID"),
						 rs.getString("MEMBER_PWD"),
						 rs.getString("MEMBER_NAME"),
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
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return mv;
	}

	
	//////////////////////
	// 회원정보수정
	public void updateInfoMember(MemberVo vo) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
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
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
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
