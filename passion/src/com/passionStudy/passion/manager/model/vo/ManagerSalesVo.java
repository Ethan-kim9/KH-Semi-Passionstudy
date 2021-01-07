package com.passionStudy.passion.manager.model.vo;

import java.sql.Date;
import java.sql.Time;

public class ManagerSalesVo {
		
	
		Date	paymentDate;	//	결제 날짜
		int		paymentPrice;	//	결제액
		String	paymentMethod;	//	결제방법 (C : 카드 ,P : 현금)
		
		
		public ManagerSalesVo() {
			// TODO Auto-generated constructor stub
		}
		
		@Override
		public String toString() {
			return "ManagerSalesVo [paymentDate=" + paymentDate + ", paymentPrice=" + paymentPrice + ", paymentMethod="
					+ paymentMethod + "]";
		}

		public ManagerSalesVo(Date paymentDate, int paymentPrice, String paymentMethod, String paymentInfo) {
			super();
			this.paymentDate = paymentDate;
			this.paymentPrice = paymentPrice;
			this.paymentMethod = paymentMethod;
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

	}

