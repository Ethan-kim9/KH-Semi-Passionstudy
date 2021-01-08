package com.passionStudy.passion.reservation.model.vo;

public class RoomVo {
	private int roomNo;
	private String roomName;
	private String roomType;
	private int roomCapMin;
	private int roomCapMax;
	private String roomInfo;
	private String roomFile;
	private int roomPrice;

	public RoomVo(int roomNo, String roomName, String roomType, int roomCapMin, int roomCapMax, String roomInfo,
			String roomFile, int roomPrice) {
		this.roomNo = roomNo;
		this.roomName = roomName;
		this.roomType = roomType;
		this.roomCapMin = roomCapMin;
		this.roomCapMax = roomCapMax;
		this.roomInfo = roomInfo;
		this.roomFile = roomFile;
		this.roomPrice = roomPrice;
	}

	@Override
	public String toString() {
		return "RoomVo [roomNo=" + roomNo + ", roomName=" + roomName + ", roomType=" + roomType + ", roomCapMin="
				+ roomCapMin + ", roomCapMax=" + roomCapMax + ", roomInfo=" + roomInfo + ", roomFile=" + roomFile
				+ ", roomPrice=" + roomPrice + "]";
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

	public int getRoomCapMin() {
		return roomCapMin;
	}

	public void setRoomCapMin(int roomCapMin) {
		this.roomCapMin = roomCapMin;
	}

	public int getRoomCapMax() {
		return roomCapMax;
	}

	public void setRoomCapMax(int roomCapMax) {
		this.roomCapMax = roomCapMax;
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

}
