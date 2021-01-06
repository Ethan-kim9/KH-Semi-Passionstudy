package com.passionStudy.passion.manager.model.vo;

public class ManagerProductVo {

	private int 	roomNo; 	 	// 룸테이블 식별자
	private String 	roomName; 		// 방 이름
	private int 	roomCapacity; 	// 수용인원
	private String 	roomInfo;		// 방 정보
	private String 	roomFilePath; 	// 사진저장경로
	private int		roomPrice;		// 방 가격
	
	
	
	
	public ManagerProductVo() {
		super();
	}
	
	
	public ManagerProductVo(int roomNo, String roomName, int roomCapacity, String roomInfo, String roomFilePath,
			int roomPrice) {
		super();
		
		this.roomNo 		= roomNo;
		this.roomName 		= roomName;
		this.roomCapacity 	= roomCapacity;
		this.roomInfo 		= roomInfo;
		this.roomFilePath 	= roomFilePath;
		this.roomPrice 		= roomPrice;
	}


	@Override
	public String toString() {
		return "ManagerProductVo [roomNo=" + roomNo + ", roomName=" + roomName + ", roomCapacity=" + roomCapacity
				+ ", roomInfo=" + roomInfo + ", roomFilePath=" + roomFilePath + ", roomPrice=" + roomPrice + "]";
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
	public int getRoomCapacity() {
		return roomCapacity;
	}
	public void setRoomCapacity(int roomCapacity) {
		this.roomCapacity = roomCapacity;
	}
	public String getRoomInfo() {
		return roomInfo;
	}
	public void setRoomInfo(String roomInfo) {
		this.roomInfo = roomInfo;
	}
	public String getRoomFilePath() {
		return roomFilePath;
	}
	public void setRoomFilePath(String roomFilePath) {
		this.roomFilePath = roomFilePath;
	}
	public int getRoomPrice() {
		return roomPrice;
	}
	public void setRoomPrice(int roomPrice) {
		this.roomPrice = roomPrice;
	}
	
	
}	
