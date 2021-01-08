package com.passionStudy.passion.reservation.model.vo;

public class ProductVo {
	private int proId;
	private int roomNo;
	private int proData;
	private String proCon;

	public ProductVo() {
	}

	public ProductVo(int roomNo, int proData, String proCon) {
		super();
		this.roomNo = roomNo;
		this.proData = proData;
		this.proCon = proCon;
	}

	public int getProId() {
		return proId;
	}

	public void setProId(int proId) {
		this.proId = proId;
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

	@Override
	public String toString() {
		return "ProductVo [proId=" + proId + ", roomNo=" + roomNo + ", proData=" + proData + ", proCon=" + proCon + "]";
	}

}
