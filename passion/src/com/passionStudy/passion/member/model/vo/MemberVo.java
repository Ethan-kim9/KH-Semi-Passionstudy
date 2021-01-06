package com.passionStudy.passion.member.model.vo;

import java.sql.Date;
// DTO
public class MemberVo {
	private int	   memNo;		    // 회원 식별자
	private String memId;			// 회원 아이디
	private String memPwd;			// 회원 비밀번호
	private String memName;			// 회원 이름
	private String memPhone;		// 회원 전화번호
	private Date   memDate;			// 회원 가입일 	
	private String adminCheck;		// 관리자 여부	  	N일반유저 A관리자
	private int    memRecomCount;	// 회원 추천횟수
	private String memStatus;		// 회원 계정상태  	B블라인드 Y일반 D삭제된계정
	private String memAdAgree;		// 회원 광고동의여부 	Y동의 N비동의
	private String memRecomCode;	// 회원 추천번호 	???					
	private int    memPoint;		// 회원 포인트
	private String memToken1;		// 네이버 가입토큰
	private String memToken2;		// 카카오 가입토큰

	
	public MemberVo() {
	}


	
	
	public MemberVo(int memNo, String memId, String memPwd, String memName, String memPhone, Date memDate,
			String adminCheck, int memRecomCount, String memStatus, String memAdAgree, String memRecomCode,
			int memPoint, String memToken1, String memToken2) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memPwd = memPwd;
		this.memName = memName;
		this.memPhone = memPhone;
		this.memDate = memDate;
		this.adminCheck = adminCheck;
		this.memRecomCount = memRecomCount;
		this.memStatus = memStatus;
		this.memAdAgree = memAdAgree;
		this.memRecomCode = memRecomCode;
		this.memPoint = memPoint;
		this.memToken1 = memToken1;
		this.memToken2 = memToken2;
	}




	public MemberVo(int memNo, String memId, String memPwd, String memName, String memPhone, String memAdAgree) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memPwd = memPwd;
		this.memName = memName;
		this.memPhone = memPhone;
		this.memAdAgree = memAdAgree;
	}
	
	
	public int getMemNo() {
		return memNo;
	}


	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}


	public String getMemId() {
		return memId;
	}


	public void setMemId(String memId) {
		this.memId = memId;
	}


	public String getMemPwd() {
		return memPwd;
	}


	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}


	public String getMemName() {
		return memName;
	}


	public void setMemName(String memName) {
		this.memName = memName;
	}


	public String getMemPhone() {
		return memPhone;
	}


	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}


	public Date getMemDate() {
		return memDate;
	}


	public void setMemDate(Date memDate) {
		this.memDate = memDate;
	}


	public String getAdminCheck() {
		return adminCheck;
	}


	public void setAdminCheck(String adminCheck) {
		this.adminCheck = adminCheck;
	}


	public int getMemRecomCount() {
		return memRecomCount;
	}


	public void setMemRecomCount(int memRecomCount) {
		this.memRecomCount = memRecomCount;
	}


	public String getMemStatus() {
		return memStatus;
	}


	public void setMemStatus(String memStatus) {
		this.memStatus = memStatus;
	}


	public String getMemAdAgree() {
		return memAdAgree;
	}


	public void setMemAdAgree(String memAdAgree) {
		this.memAdAgree = memAdAgree;
	}


	public String getMemRecomCode() {
		return memRecomCode;
	}


	public void setMemRecomCode(String memRecomCode) {
		this.memRecomCode = memRecomCode;
	}


	public int getMemPoint() {
		return memPoint;
	}


	public void setMemPoint(int memPoint) {
		this.memPoint = memPoint;
	}


	public String getMemToken1() {
		return memToken1;
	}


	public void setMemToken1(String memToken1) {
		this.memToken1 = memToken1;
	}


	public String getMemToken2() {
		return memToken2;
	}


	public void setMemToken2(String memToken2) {
		this.memToken2 = memToken2;
	}
	

	

}
