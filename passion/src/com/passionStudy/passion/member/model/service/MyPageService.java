package com.passionStudy.passion.member.model.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Vector;

import com.passionStudy.passion.member.model.dao.MyPageDao;
import com.passionStudy.passion.member.model.vo.CouponVo;
import com.passionStudy.passion.member.model.vo.MemberVo;
import com.passionStudy.passion.member.model.vo.MyPageReservationVo;
import com.passionStudy.passion.member.model.vo.MyPageRoomVo;
import com.passionStudy.passion.member.model.vo.MyRoomVo;
import com.passionStudy.qnaBoard.vo.QnaVo;

import static com.passionStudy.passion.common.JDBCtemplate.*;

// 서비스가 하는 역할: 커넥션 연결, 다오에 연결해서 결과 가져오기, 그 결과를 커밋 하거나 롤백시키기. 커넥션 닫고 결과 반환.
public class MyPageService {

	// 회원정보 수정
	public int updateInfoMember(String memId,String memPhone,String memAdAgree) throws SQLException{
		Connection conn = getConnection();
		
		int result = new MyPageDao().updateInfoMember(conn, memId, memPhone, memAdAgree);
		
		if(result > 0) {	// 업데이트가 제대로 된 경우
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	
	// 한 회원의 비밀번호 가져오기
	public String getPass(String memId) throws SQLException {
		Connection conn = getConnection();
		MyPageDao mdao = new MyPageDao();
		String password = mdao.getPass(conn, memId);
		close(conn);
		return password;
		
	}
	
	
	// 회원 탈퇴(상태만 변경)
	public int deleteMember(String memId) throws SQLException {
		Connection conn = getConnection();
		MyPageDao mdao = new MyPageDao();
		int result = mdao.deleteMember(conn, memId);
	
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
	// 비밀번호 변경
	public int changePwd(String newPassword, String memId) throws SQLException {
		Connection conn = getConnection();
		MyPageDao mdao = new MyPageDao();
		int result = mdao.changePwd(conn, newPassword, memId);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
	// 나의 예약 관리	// 커넥션 연결, 다오 연결, 리턴반환, 닫기
	/*
	 * public String getReceipt(int memNo) { Connection conn = getConnection();
	 * MyPageDao mdao = new MyPageDao(); String receipt = mdao.getReceipt(conn,
	 * memNo);
	 * 
	 * 
	 * }
	 */
	
	// 1on1 문의 내역
	public Vector<QnaVo> getQnaList(String memberName) {
		Connection conn = getConnection();
		MyPageDao mdao = new MyPageDao();
		Vector<QnaVo> qnalist = mdao.getQnaList(conn, memberName);
		
		close(conn);
		return qnalist;
	}
	
	// 1on1 문의 내역 카운트 가져오기
	public int getListCount(String memberName) {
		Connection conn = getConnection();
		MyPageDao mdao = new MyPageDao();
		int result = mdao.getListCount(conn, memberName);
		
		close(conn);
		return result;
	}
	
	// 쿠폰 내역 가져오기
	public Vector<CouponVo> getCoupon(int memberNo) {
		Connection conn = getConnection();
		MyPageDao mdao = new MyPageDao();
		Vector<CouponVo> myCoupon = mdao.getCoupon(conn, memberNo);
		
		close(conn);
		return myCoupon;
	}
	
	// 쿠폰 갯수 가져오기
	public int getCouponCount(int memberNo) {
		Connection conn = getConnection();
		MyPageDao mdao = new MyPageDao();
		int couponCount = mdao.getCouponCount(conn, memberNo);
		
		close(conn);
		return couponCount;
	}
	
	// 나의 예약 가져오기
	/*
	 * public Vector<MyPageReservationVo> getMyReservation(int memberNo) {
	 * Connection conn = getConnection(); MyPageDao mdao = new MyPageDao();
	 * Vector<MyPageReservationVo> myres = mdao.getMyReservation(conn, memberNo);
	 * 
	 * close(conn); return myres; }
	 */

	// 나의 룸 정보 가져오기
	/*
	 * public ArrayList<MyPageRoomVo> getMyRoom(ArrayList<Integer> productNums){
	 * Connection conn = getConnection(); MyPageDao mdao = new MyPageDao();
	 * ArrayList<MyPageRoomVo> myroom = mdao.getMyRoom(conn, productNums);
	 * 
	 * close(conn); return myroom;
	 * 
	 * }
	 */
	
	// my room 가져오기 (테스트) 성공
	public ArrayList<MyRoomVo> getMyReceipt(int memberNo){
		Connection conn = getConnection();
		MyPageDao mdao = new MyPageDao();
		ArrayList<MyRoomVo> myroomList= mdao.getMyReceipt(conn, memberNo);
		
		close(conn);
		return myroomList;
		
	}
	
	// 한 회원의 정보 가져오기
	public MemberVo getOneSelect(int memberNo) {
		Connection conn = getConnection();
		MyPageDao mdao = new MyPageDao();
		MemberVo mine = mdao.getOneSelect(conn, memberNo);
		
		close(conn);
		return mine;
	}
	
	
	
	
}
