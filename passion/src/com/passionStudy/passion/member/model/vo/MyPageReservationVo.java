package com.passionStudy.passion.member.model.vo;

public class MyPageReservationVo {

	private int resNo;			//예약식별자
	private int memNo;			//회원 식별자
	private int proNo;			//상품 식별자
	private String resName;		//예약자이름
	private String resEmail;	//예약자 이메일(아이디)
	private String resPhone;	//예약자 연락처
	private int resPer;			//예약자 인원수
	private String resDate;		//예약날짜
	private String resTime;		//예약 시간
	private String payMethod;	//결제 수단
	private String payDate;		//결제 일시
	private int payPrice;		//결제 금액
	private String resCon;		//예약 상태	'Y'예약, 'C'취소, 'O'사용됨
	private String payInfo;		//결제 정보	'C'카드, 'P'현금, 'T'무통장, 'D'현장
	private int resMon;			//모니터
	private int resCom;			//컴퓨터
	private int resPro;			//프로젝터

	public MyPageReservationVo() {
	}

	public MyPageReservationVo(int memNo, int proNo, String resName, String resEmail, String resPhone, int resPer,
			String resData, String resTime, String payMethod, String payDate, int payPrice, String resCon,
			String payInfo, int resMon, int resCom, int resPro) {
		super();
		this.memNo = memNo;
		this.proNo = proNo;
		this.resName = resName;
		this.resEmail = resEmail;
		this.resPhone = resPhone;
		this.resPer = resPer;
		this.resDate = resData;
		this.resTime = resTime;
		this.payMethod = payMethod;
		this.payDate = payDate;
		this.payPrice = payPrice;
		this.resCon = resCon;
		this.payInfo = payInfo;
		this.resMon = resMon;
		this.resCom = resCom;
		this.resPro = resPro;
	}

	@Override
	public String toString() {
		return "ReservationVo [resNo=" + resNo + ", memNo=" + memNo + ", proNo=" + proNo + ", resName=" + resName
				+ ", resEmail=" + resEmail + ", resPhone=" + resPhone + ", resPer=" + resPer + ", resDate=" + resDate
				+ ", resTime=" + resTime + ", payMethod=" + payMethod + ", payDate=" + payDate + ", payPrice="
				+ payPrice + ", resCon=" + resCon + ", payInfo=" + payInfo + ", resMon=" + resMon + ", resCom=" + resCom
				+ ", resPro=" + resPro + "]";
	}

	public int getResNo() {
		return resNo;
	}

	public void setResNo(int resNo) {
		this.resNo = resNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public int getProNo() {
		return proNo;
	}

	public void setProNo(int proNo) {
		this.proNo = proNo;
	}

	public String getResName() {
		return resName;
	}

	public void setResName(String resName) {
		this.resName = resName;
	}

	public String getResEmail() {
		return resEmail;
	}

	public void setResEmail(String resEmail) {
		this.resEmail = resEmail;
	}

	public String getResPhone() {
		return resPhone;
	}

	public void setResPhone(String resPhone) {
		this.resPhone = resPhone;
	}

	public int getResPer() {
		return resPer;
	}

	public void setResPer(int resPer) {
		this.resPer = resPer;
	}

	public String getResDate() {
		return resDate;
	}

	public void setResDate(String resDate) {
		this.resDate = resDate;
	}

	public String getResTime() {
		return resTime;
	}

	public void setResTime(String resTime) {
		this.resTime = resTime;
	}

	public String getPayMethod() {
		return payMethod;
	}

	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}

	public String getPayDate() {
		return payDate;
	}

	public void setPayDate(String payDate) {
		this.payDate = payDate;
	}

	public int getPayPrice() {
		return payPrice;
	}

	public void setPayPrice(int payPrice) {
		this.payPrice = payPrice;
	}

	public String getResCon() {
		return resCon;
	}

	public void setResCon(String resCon) {
		this.resCon = resCon;
	}

	public String getPayInfo() {
		return payInfo;
	}

	public void setPayInfo(String payInfo) {
		this.payInfo = payInfo;
	}

	public int getResMon() {
		return resMon;
	}

	public void setResMon(int resMon) {
		this.resMon = resMon;
	}

	public int getResCom() {
		return resCom;
	}

	public void setResCom(int resCom) {
		this.resCom = resCom;
	}

	public int getResPro() {
		return resPro;
	}

	public void setResPro(int resPro) {
		this.resPro = resPro;
	}
}

