package com.passionStudy.passion.manager.model.vo;

import java.sql.Date;
import java.sql.Time;

public class ManagerSalesVo {
	/* 예약 관련 */
	private int memNo; // 회원식별자
	private int productNo; // 상품식별자
	private String reservName; // 예약자이름
	private String reservEmail; // 예약자 이메일
	private String reservPhone; // 예약자 전화번호
	private int reservNum; // 예약자 인원수
	private Date reservDate; // 예약날짜
	private Time reservTime; // 예약시간
	private String reservMethod; // 예약수단
	private int reservMonitor; // 모니터 예약개수
	private int reservComputer; // 컴퓨터 예약개수
	private int reservProjector; // 프로젝터 예약개수
	private String reservCondition; // 예약상태 (Y:예약중, C:취소, O:사용됨)

	/* 결제 관련 */

	private Date paymentDate; // 결제일
	private int paymentPrice; // 결제금액
	private String paymentInfo; // 결제정보

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public String getReservName() {
		return reservName;
	}

	public void setReservName(String reservName) {
		this.reservName = reservName;
	}

	public String getReservEmail() {
		return reservEmail;
	}

	public void setReservEmail(String reservEmail) {
		this.reservEmail = reservEmail;
	}

	public String getReservPhone() {
		return reservPhone;
	}

	public void setReservPhone(String reservPhone) {
		this.reservPhone = reservPhone;
	}

	public int getReservNum() {
		return reservNum;
	}

	public void setReservNum(int reservNum) {
		this.reservNum = reservNum;
	}

	public Date getReservDate() {
		return reservDate;
	}

	public void setReservDate(Date reservDate) {
		this.reservDate = reservDate;
	}

	public Time getReservTime() {
		return reservTime;
	}

	public void setReservTime(Time reservTime) {
		this.reservTime = reservTime;
	}

	public String getReservMethod() {
		return reservMethod;
	}

	public void setReservMethod(String reservMethod) {
		this.reservMethod = reservMethod;
	}

	public int getReservMonitor() {
		return reservMonitor;
	}

	public void setReservMonitor(int reservMonitor) {
		this.reservMonitor = reservMonitor;
	}

	public int getReservComputer() {
		return reservComputer;
	}

	public void setReservComputer(int reservComputer) {
		this.reservComputer = reservComputer;
	}

	public int getReservProjector() {
		return reservProjector;
	}

	public void setReservProjector(int reservProjector) {
		this.reservProjector = reservProjector;
	}

	public String getReservCondition() {
		return reservCondition;
	}

	public void setReservCondition(String reservCondition) {
		this.reservCondition = reservCondition;
	}

	public Date getPaymentDate() {
		return paymentDate;
	}

	public void setPaymentDate(Date paymentDate) {
		this.paymentDate = paymentDate;
	}

	public int getPaymentPrice() {
		return paymentPrice;
	}

	public void setPaymentPrice(int paymentPrice) {
		this.paymentPrice = paymentPrice;
	}

	public String getPaymentInfo() {
		return paymentInfo;
	}

	public void setPaymentInfo(String paymentInfo) {
		this.paymentInfo = paymentInfo;
	}

}
