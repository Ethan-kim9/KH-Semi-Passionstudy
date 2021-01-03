package com.passionStudy.passion.board.faqboard.model.vo;

import java.util.Date;

public class FaqBoardVo {
		private int faqNo; //자주묻는질문 식별자
		private String faqCategory;//자주묻는질문 카테고리
		private String faqTitle; //자주묻는질문 제목
		private String faqContent; //자주묻는질문 내용
		private Date faqRegdate; //작성일
		
		public FaqBoardVo() {
			
		}

		public FaqBoardVo(int faqNo, String faqCategory, String faqTitle, String faqContent, Date faqRegdate) {
			super();
			this.faqNo = faqNo;
			this.faqCategory = faqCategory;
			this.faqTitle = faqTitle;
			this.faqContent = faqContent;
			this.faqRegdate = faqRegdate;
		}
		
		
		public int getFaqNo() {
			return faqNo;
		}

		public void setFaqNo(int faqNo) {
			this.faqNo = faqNo;
		}

		public String getFaqCategory() {
			return faqCategory;
		}

		public void setFaqCategory(String faqCategory) {
			this.faqCategory = faqCategory;
		}

		public String getFaqTitle() {
			return faqTitle;
		}

		public void setFaqTitle(String faqTitle) {
			this.faqTitle = faqTitle;
		}

		public String getFaqContent() {
			return faqContent;
		}

		public void setFaqContent(String faqContent) {
			this.faqContent = faqContent;
		}

		public Date getFaqRegdate() {
			return faqRegdate;
		}

		public void setFaqRegdate(Date faqRegdate) {
			this.faqRegdate = faqRegdate;
		}

		@Override
		public String toString() {
			return "FaqBoardVo [faqNo=" + faqNo + ", faqCategory=" + faqCategory + ", faqTitle=" + faqTitle
					+ ", faqContent=" + faqContent + ", faqRegdate=" + faqRegdate + "]";
		}
		
		
		
}
