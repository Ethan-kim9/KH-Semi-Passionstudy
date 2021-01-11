package com.passionStudy.passion.member.model.vo;

public class MyRoomVo {	
	
	private int roomNo;			//룸명
	private int proNo;			//상품 식별자
	
	private int resNo;			//예약식별자
	private int memNo;			//회원 식별자
	
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
	
	private int proData;		//상품 데이터
	
	private String proCon;		//판매 상태	'O'이용가능, 'X'이용불가능
	
	private String roomName;	//룸명
	private String roomType;	//룸타입
	private int roomCapMin;		//룸 최소인원
	private String roomInfo;	//룸 정보
	private String roomFile;	//사진저장경로
	private int roomPrice;		//룸가격
	private int roomCapMax;		//룸 최대인원
	
	
	
	
	
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	public int getRoomCapMin() {
		return roomCapMin;
	}
	public void setRoomCapMin(int roomCapMin) {
		this.roomCapMin = roomCapMin;
	}
	public String getRoomInfo() {
		return roomInfo;
	}
	public void setRoomInfo(String roomInfo) {
		this.roomInfo = roomInfo;
	}
	public String getRoomFile() {
		return roomFile;
	}
	public void setRoomFile(String roomFile) {
		this.roomFile = roomFile;
	}
	public int getRoomPrice() {
		return roomPrice;
	}
	public void setRoomPrice(int roomPrice) {
		this.roomPrice = roomPrice;
	}
	public int getRoomCapMax() {
		return roomCapMax;
	}
	public void setRoomCapMax(int roomCapMax) {
		this.roomCapMax = roomCapMax;
	}
	public int getProNo() {
		return proNo;
	}
	public void setProNo(int proNo) {
		this.proNo = proNo;
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
	public int getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}
	public int getProData() {
		return proData;
	}
	public void setProData(int proData) {
		this.proData = proData;
	}
	public String getProCon() {
		return proCon;
	}
	public void setProCon(String proCon) {
		this.proCon = proCon;
	}
	
	
	
}
