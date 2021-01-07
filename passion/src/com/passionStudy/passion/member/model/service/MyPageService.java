package com.passionStudy.passion.member.model.service;

import java.sql.Connection;
import java.sql.SQLException;

import com.passionStudy.passion.member.model.dao.MyPageDao;
import com.passionStudy.passion.member.model.vo.MemberVo;
import com.passionStudy.passion.common.JDBCtemplate;

// 서비스가 하는 역할: 커넥션 연결, 다오에 연결해서 결과 가져오기, 그 결과를 커밋 하거나 롤백시키기. 커넥션 닫고 결과 반환.
public class MyPageService {

	// 회원정보 수정
	public int updateInfoMember(MemberVo vo) throws SQLException  {
		Connection conn = JDBCtemplate.getConnection();
		MyPageDao mdao = new MyPageDao();
		int result = mdao.updateInfoMember(conn, vo);
		
		if(result > 0) {	// 업데이트가 제대로 된 경우
			JDBCtemplate.commit(conn);
		}else {
			JDBCtemplate.rollback(conn);
		}
		JDBCtemplate.close(conn);
		
		return result;
	}
	
	// 한 회원의 정보 가져오기
	public MemberVo oneSelectMember(String memId) throws SQLException {
		Connection conn = JDBCtemplate.getConnection();
		MyPageDao mdao = new MyPageDao();
		MemberVo member = mdao.oneSelectMember(conn, memId);
		
		JDBCtemplate.close(conn);
		return member;
		
	}
	
	// 한 회원의 비밀번호 가져오기
	public String getPass(String memId) throws SQLException {
		Connection conn = JDBCtemplate.getConnection();
		MyPageDao mdao = new MyPageDao();
		String password = mdao.getPass(conn, memId);
		JDBCtemplate.close(conn);
		return password;
		
	}
	
	
	// 회원 탈퇴(상태만 변경)
	public int deleteMember(String memId) throws SQLException {
		Connection conn = JDBCtemplate.getConnection();
		MyPageDao mdao = new MyPageDao();
		int result = mdao.deleteMember(conn, memId);
	
		if(result > 0) {
			JDBCtemplate.commit(conn);
		} else {
			JDBCtemplate.rollback(conn);
		}
		JDBCtemplate.close(conn);
		
		return result;
	}
	
	
}
