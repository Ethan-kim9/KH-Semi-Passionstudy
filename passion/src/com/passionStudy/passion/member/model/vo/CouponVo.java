package com.passionStudy.passion.member.model.vo;

import java.sql.Date;

public class CouponVo {
	private int couponNo;			// 쿠폰번호
	private int memNo;				// 회원 식별자
	private String couponName;		//쿠폰이름
	private String couponValid;		// 쿠폰유효성(사용여부)
	private int couponPrice;		// 쿠폰가격
	private Date couponDate;		//쿠폰유효기간
	
	
	
	public int getCouponNo() {
		return couponNo;
	}
	public void setCouponNo(int couponNo) {
		this.couponNo = couponNo;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public String getCouponName() {
		return couponName;
	}
	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}
	public String getCouponValid() {
		return couponValid;
	}
	public void setCouponValid(String couponValid) {
		this.couponValid = couponValid;
	}
	public int getCouponPrice() {
		return couponPrice;
	}
	public void setCouponPrice(int couponPrice) {
		this.couponPrice = couponPrice;
	}
	public Date getCouponDate() {
		return couponDate;
	}
	public void setCouponDate(Date couponDate) {
		this.couponDate = couponDate;
	}
	
	
	
}
