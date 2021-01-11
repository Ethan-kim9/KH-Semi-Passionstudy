package com.passionStudy.passion.member.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;
import java.util.Vector;


import com.passionStudy.passion.member.model.vo.CouponVo;
import com.passionStudy.passion.member.model.vo.MemberVo;
import com.passionStudy.passion.member.model.vo.MyPageReservationVo;
import com.passionStudy.passion.member.model.vo.MyPageRoomVo;
import com.passionStudy.passion.member.model.vo.MyRoomVo;
import com.passionStudy.qnaBoard.vo.QnaVo;

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
	
	// 한 회원의 구매 내역을 받아오는 메서드	// 아 모르겠다. 여기부터 다시할 것.
	/*
	 * public MyPageResVo getReceipt(Connection conn, int memberNo) { // 리턴 타입 선언
	 * MyPageResVo receipt = null;
	 * 
	 * PreparedStatement pstmt = null; ResultSet rs = null;
	 * 
	 * // 쿼리 준비 String sql =
	 * "SELECT RESERVATION_DATE, RESERVATION_TIME, RESERVATION_CONDITION " +
	 * "FROM RESERVATION WHERE MEMBER_NO = ?"; try { pstmt =
	 * conn.prepareStatement(sql);
	 * 
	 * pstmt.setInt(1, memberNo);
	 * 
	 * rs = pstmt.executeQuery();
	 * 
	 * if(rs.next()) {
	 * 
	 * }
	 * 
	 * rs.getDate(1); rs.getString(2); rs.getString(3);
	 * 
	 * 
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } }
	 */
	
	// 1대1 문의
	public Vector<QnaVo> getQnaList(Connection conn, String memberName) {
		// 리턴타입
		Vector<QnaVo> qnalist = new Vector<>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM QNA_BOARD WHERE QNA_WRITER = ? ORDER BY QNA_DATE DESC";
		
		try {
			// 쿼리 준비
			pstmt = conn.prepareStatement(sql);
			// ?에 대입
			pstmt.setString(1, memberName);
			// 쿼리 실행
			rs = pstmt.executeQuery();
			
			// 여러개의 문의글
			while(rs.next()) {
				QnaVo qna = new QnaVo();
				qna.setQnaNo(rs.getInt(1));
				qna.setQnaWriter(rs.getString(2));
				qna.setQnaTitle(rs.getString(3));
				qna.setQnaContent(rs.getString(4));
				qna.setQnaDate(rs.getString(5));
				qna.setAnswerTitle(rs.getString(6));
				qna.setAnswerContent(rs.getString(7));
				qna.setBoardAnswer(rs.getInt(8));
				qna.setPagingStack(rs.getInt(9));
				qna.setCategory(rs.getString(10));
				
				qnalist.add(qna);
			}
			close(rs);
			close(pstmt);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return qnalist;
	}
	
	// 1대1 문의 내역 카운트
	public int getListCount(Connection conn, String memberName) {
		// 리턴 타입
		int result = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			// 쿼리 준비
			String sql = "SELECT COUNT(*) FROM QNA_BOARD WHERE QNA_WRITER = ?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberName);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = rs.getInt(1);
			}
			close(rs);
			close(pstmt);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	// 나의 쿠폰 내역 가져오기
	public Vector<CouponVo> getCoupon(Connection conn, int memberNo){
		// 리턴타입
		Vector<CouponVo> myCoupon = new Vector<>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM COUPON WHERE MEMBER_NO = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memberNo);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				CouponVo coupon = new CouponVo();
				coupon.setCouponNo(rs.getInt(1));
				coupon.setMemNo(rs.getInt(2));
				coupon.setCouponName(rs.getString(3));
				coupon.setCouponValid(rs.getString(4));
				coupon.setCouponPrice(rs.getInt(5));
				coupon.setCouponDate(rs.getDate(6));
				
				myCoupon.add(coupon);
			}
			close(rs);
			close(pstmt);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return myCoupon;
	} 
	
	// 내 쿠폰 갯수 가져오기
	public int getCouponCount(Connection conn, int memberNo) {
		// 리턴타입
		int couponCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT COUNT(*) FROM COUPON WHERE MEMBER_NO = ? AND COUPON_VALID = 'O'";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memberNo);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				couponCount = rs.getInt(1);
			}
			close(rs);
			close(pstmt);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return couponCount;
	}
	
	// 나의 예약 내역 가져오기
	public Vector<MyPageReservationVo> getMyReservation(Connection conn, int memberNo) {
		// 리턴타입
		Vector<MyPageReservationVo> myres = new Vector<>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM RESERVATION WHERE MEMBER_NO = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memberNo);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MyPageReservationVo mvo = new MyPageReservationVo();
				mvo.setResNo(rs.getInt(1));
				mvo.setMemNo(rs.getInt(2));
				mvo.setProNo(rs.getInt(3));
				mvo.setResName(rs.getString(4));
				mvo.setResEmail(rs.getString(5));
				mvo.setResPhone(rs.getString(6));
				mvo.setResPer(rs.getInt(7));
				mvo.setResDate(rs.getString(8));
				mvo.setResTime(rs.getString(9));
				mvo.setPayMethod(rs.getString(10));
				mvo.setPayDate(rs.getString(11));
				mvo.setPayPrice(rs.getInt(12));
				mvo.setResCon(rs.getString(13));
				mvo.setPayInfo(rs.getString(14));
				mvo.setResMon(rs.getInt(15));
				mvo.setResCom(rs.getInt(16));
				mvo.setResPro(rs.getInt(17));
				
				myres.add(mvo);
			}
			close(rs);
			close(pstmt);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return myres;
	}
	
	// 나의 룸 정보 가져오기
	public ArrayList<MyPageRoomVo> getMyRoom(Connection conn, ArrayList<Integer> productNums){
		// 리턴타입
		ArrayList<MyPageRoomVo> myroom = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT PRODUCT.ROOM_NO, \r\n"
				+ "        room.room_name, room.room_type, \r\n"
				+ "        room.room_filepath, room.room_price\r\n"
				+ "            from product inner join room \r\n"
				+ "                on product.room_no = room.room_no where product_no = ?";
		
		/*ArrayList<Integer> nums = new ArrayList<>();*/
		
		try {
			pstmt = conn.prepareStatement(sql);
			for(int num : productNums) {
				pstmt.setInt(1, num);
				rs = pstmt.executeQuery();
				if(rs.next()){
					MyPageRoomVo vo = new MyPageRoomVo();
					vo.setRoomNo(rs.getInt(1));
					vo.setRoomName(rs.getString(2));
					vo.setRoomType(rs.getString(3));
					vo.setRoomFile(rs.getString(4));
					vo.setRoomPrice(rs.getInt(5));
					
					myroom.add(vo);
				}
			}
			close(rs);
			close(pstmt);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return myroom;
		
	}
	
	// 나의 구매내역 가져오기
	public ArrayList<MyRoomVo> getMyReceipt(Connection conn, int memberNo){
		// 리턴
		ArrayList<MyRoomVo> myroomList = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM RESERVATION NATURAL JOIN PRODUCT NATURAL JOIN ROOM WHERE RESERVATION.MEMBER_NO = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memberNo);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MyRoomVo myroom = new MyRoomVo();
				
				myroom.setRoomNo(rs.getInt(1));
				myroom.setProNo(rs.getInt(2));
				myroom.setResNo(rs.getInt(3));
				myroom.setMemNo(rs.getInt(4));
				
				myroom.setResName(rs.getString(5));
				myroom.setResEmail(rs.getString(6));
				myroom.setResPhone(rs.getString(7));
				
				myroom.setResPer(rs.getInt(8));
				
				myroom.setResDate(rs.getString(9));
				myroom.setResTime(rs.getString(10));
				myroom.setPayMethod(rs.getString(11));
				myroom.setPayDate(rs.getString(12));
				
				myroom.setPayPrice(rs.getInt(13));
				
				myroom.setResCon(rs.getString(14));
				myroom.setPayInfo(rs.getString(15));
				
				myroom.setResMon(rs.getInt(16));
				myroom.setResCom(rs.getInt(17));
				myroom.setResPro(rs.getInt(18));
				
				myroom.setProData(rs.getInt(19));
				
				myroom.setProCon(rs.getString(20));
				
				myroom.setRoomName(rs.getString(21));
				myroom.setRoomType(rs.getString(22));
				
				myroom.setRoomCapMin(rs.getInt(23));
				
				myroom.setRoomInfo(rs.getString(24));
				myroom.setRoomFile(rs.getString(25));
				
				myroom.setRoomPrice(rs.getInt(26));
				myroom.setRoomCapMax(rs.getInt(27));
				
				myroomList.add(myroom);
				
			}
			close(rs);
			close(pstmt);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return myroomList;
	}
	
	// 한 회원의 정보 가져오기
	public MemberVo getOneSelect(Connection conn, int memberNo) {
		// 리턴 
		MemberVo mine = new MemberVo();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM MEMBER WHERE MEMBER_NO =? ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memberNo);
			rs = pstmt.executeQuery();
			
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	

}
