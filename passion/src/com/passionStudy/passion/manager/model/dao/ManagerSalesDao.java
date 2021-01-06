package com.passionStudy.passion.manager.model.dao;

import java.sql.Date;

public class ManagerSalesDao {
	Date	paymentDate;	//	결제 날짜
	int		paymentPrice;	//	결제액
	String	paymentMethod;	//	결제방법 (C : 카드 ,P : 현금)
	String 	paymentInfo; 	//	결제수단 (C : 카드 ,P : 현금 , T : 무통장 D : 현장)
	
	
	
	public ManagerSalesDao(Date paymentDate, int paymentPrice, String paymentMethod, String paymentInfo) {
		super();
		this.paymentDate = paymentDate;
		this.paymentPrice = paymentPrice;
		this.paymentMethod = paymentMethod;
		this.paymentInfo = paymentInfo;
	}

	@Override
	public String toString() {
		return "ManagerSalesDao [paymentDate=" + paymentDate + ", paymentPrice=" + paymentPrice + ", paymentMethod="
				+ paymentMethod + ", paymentInfo=" + paymentInfo + "]";
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
	public String getPaymentMethod() {
		return paymentMethod;
	}
	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}
	public String getPaymentInfo() {
		return paymentInfo;
	}
	public void setPaymentInfo(String paymentInfo) {
		this.paymentInfo = paymentInfo;
	}
}
