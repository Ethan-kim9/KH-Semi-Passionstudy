package com.passionStudy.passion.manager.model.vo;

import java.sql.Date;

public class ManagerCouponVo {
	
	int couponNo;
	int memNo;
	String couponName;
	String CouponValid;
	Date CouponDate;
	
	
	
	@Override
	public String toString() {
		return "ManagerCouponVo [couponNo=" + couponNo + ", memNo=" + memNo + ", couponName=" + couponName
				+ ", CouponValid=" + CouponValid + ", CouponDate=" + CouponDate + "]";
	}
	
	
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
		return CouponValid;
	}
	public void setCouponValid(String couponValid) {
		CouponValid = couponValid;
	}
	public Date getCouponDate() {
		return CouponDate;
	}
	public void setCouponDate(Date couponDate) {
		CouponDate = couponDate;
	}
	
	
}
