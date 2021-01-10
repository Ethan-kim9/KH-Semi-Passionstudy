package com.passionStudy.passion.member.model.vo;

public class MyPageRoomVo {

	private int roomNo;			// 룸테이블 식별자
	private String roomName;	//룸명
	private String roomType;	//룸타입
	private String roomFile;	//사진저장경로
	private int roomPrice;		//룸가격
	
	public MyPageRoomVo() {
		
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

	public String getRoomType() {
		return roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
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
	
	
	
	
}






