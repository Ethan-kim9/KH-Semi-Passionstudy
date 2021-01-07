package com.passionStudy.passion.member.model.service;

import java.sql.Connection;
import java.sql.SQLException;

import static com.passionStudy.passion.common.JDBCtemplate.close;
import static com.passionStudy.passion.common.JDBCtemplate.commit;
import static com.passionStudy.passion.common.JDBCtemplate.getConnection;
import static com.passionStudy.passion.common.JDBCtemplate.rollback;

import com.passionStudy.passion.member.model.dao.MemberDao;
import com.passionStudy.passion.member.model.vo.MemberVo;

public class MemberService {


	/**
	 * 로그인
	 * 
	 * @param memId
	 * @param memPwd
	 * @return
	 * @throws SQLException
	 */
	public MemberVo loginMember(String memId, String memPwd) {
		Connection conn = getConnection();
		System.out.println("DB접속 성공");
			MemberVo mv = new MemberDao().loginMember(conn, memId, memPwd);
		close(conn);
		return mv;
	}


	/**
	 * 회원가입
	 * 
	 * @param mv
	 * @return
	 * @throws SQLException
	 * 
	 */
	public int insertMember(String memId,String memPwd,String memName,String memPhone) throws SQLException {
		Connection conn = getConnection();
		int result = new MemberDao().insertMember(conn, memId, memPwd, memName, memPhone);
		if (result > 0) {
			System.out.println("성공!");
			commit(conn);
		} else {
			System.out.println("실패..");
			rollback(conn);
		}
		conn.close();
		return result;
	}

	/**
	 * 아이디 찾기
	 * 
	 * @param memName
	 * @param memPhone
	 * @return
	 */
	public String findIdMember(String memName, String memPhone) throws SQLException {
		Connection conn = getConnection();
		String findId = new MemberDao().findIdMember(memName, memPhone);
		conn.close();
		return findId;
	}

	/**
	 * 비밀번호 찾기1 
	 * 본인인증을 위한 정보를 입력하면 
	 * 앞 문자 4개만 보여주고 뒤는 * 처리
	 * 
	 */
	public int findPwdMember(MemberVo mv) throws SQLException {
		Connection conn = getConnection();
		int memNo = new MemberDao().findPwdMember(mv);
		conn.close();
		return memNo;
	}
}
