package com.passionStudy.passion.board.faqboard.model.vo;

import java.util.Date;

public class FaqBoardVo {
		private int faq_No; //자주묻는질문 식별자
		private String faq_Category;//자주묻는질문 카테고리
		private String faq_Title; //자주묻는질문 제목
		private String faq_Content; //자주묻는질문 내용
		private Date faq_Regdate; //작성일
		
		public FaqBoardVo() {
			
		}

		public FaqBoardVo(int faq_No, String faq_Category, String faq_Title, String faq_Content, Date faq_Regdate) {
			super();
			this.faq_No = faq_No;
			this.faq_Category = faq_Category;
			this.faq_Title = faq_Title;
			this.faq_Content = faq_Content;
			this.faq_Regdate = faq_Regdate;
		}
		
		

		public int getFaq_No() {
			return faq_No;
		}

		public void setFaq_No(int faq_No) {
			this.faq_No = faq_No;
		}

		public String getFaq_Category() {
			return faq_Category;
		}

		public void setFaq_Category(String faq_Category) {
			this.faq_Category = faq_Category;
		}

		public String getFaq_Title() {
			return faq_Title;
		}

		public void setFaq_Title(String faq_Title) {
			this.faq_Title = faq_Title;
		}

		public String getFaq_Content() {
			return faq_Content;
		}

		public void setFaq_Content(String faq_Content) {
			this.faq_Content = faq_Content;
		}

		public Date getFaq_Regdate() {
			return faq_Regdate;
		}

		public void setFaq_Regdate(Date faq_Regdate) {
			this.faq_Regdate = faq_Regdate;
		}

		@Override
		public String toString() {
			return "FaqBoardVo [faq_No=" + faq_No + ", faq_Category=" + faq_Category + ", faq_Title=" + faq_Title
					+ ", faq_Content=" + faq_Content + ", faq_Regdate=" + faq_Regdate + "]";
		}
		
		
		
}
