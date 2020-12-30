package com.passionStudy.passion.manager.model.vo;

public class ManagerProductVo {
	private int productNo; //상품 식별자
	private int roomNo;	   // 룸테이블 식별자
	private String roomName; // 룸테이블 (방 이름)
	private String productCondition; // 상품판매상태 (Y이용가능 N이용불가)

	
	public ManagerProductVo(int productNo, int roomNo, String roomName, String productCondition) {
		super();
		this.productNo = productNo;
		this.roomNo = roomNo;
		this.roomName = roomName;
		this.productCondition = productCondition;
	}
	
	
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public int getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public String getProductCondition() {
		return productCondition;
	}
	public void setProductCondition(String productCondition) {
		this.productCondition = productCondition;
	}
}
