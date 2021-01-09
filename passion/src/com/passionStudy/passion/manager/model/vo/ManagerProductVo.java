package com.passionStudy.passion.manager.model.vo;

public class ManagerProductVo {

	int roomNo;
	String roomName;
	String roomInfo;
	int    roomPrice;
	String roomType;
	
	@Override
	public String toString() {
		return "ManagerProductVo [roomNo=" + roomNo + ", roomName=" + roomName + ", roomInfo=" + roomInfo
				+ ", roomPrice=" + roomPrice + ", roomType=" + roomType + "]";
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

	public String getRoomInfo() {
		return roomInfo;
	}

	public void setRoomInfo(String roomInfo) {
		this.roomInfo = roomInfo;
	}

	public int getRoomPrice() {
		return roomPrice;
	}

	public void setRoomPrice(int roomPrice) {
		this.roomPrice = roomPrice;
	}

	public String getRoomType() {
		return roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
}