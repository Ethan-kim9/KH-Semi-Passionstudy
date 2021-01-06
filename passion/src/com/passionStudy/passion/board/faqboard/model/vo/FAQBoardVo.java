package com.passionStudy.passion.board.faqboard.model.vo;

public class FAQBoardVo {
	private int faqNo;
	private int memberNo;
	private String faqTitle;
	private String faqContent;
	private String faqDate;
	
	public FAQBoardVo(int faqNo, int memberNo, String faqTitle, String faqContent, String faqDate) {
		super();
		this.faqNo = faqNo;
		this.memberNo = memberNo;
		this.faqTitle = faqTitle;
		this.faqContent = faqContent;
		this.faqDate = faqDate;
	}

	public FAQBoardVo() {
		// TODO Auto-generated constructor stub
	}

	public int getFaqNo() {
		return faqNo;
	}

	public void setFaqNo(int faqNo) {
		this.faqNo = faqNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
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

	public String getFaqDate() {
		return faqDate;
	}

	public void setFaqDate(String faqDate) {
		this.faqDate = faqDate;
	}

	@Override
	public String toString() {
		return "FAQBoardVo [faqNo=" + faqNo + ", memberNo=" + memberNo + ", faqTitle=" + faqTitle + ", faqContent="
				+ faqContent + ", faqDate=" + faqDate + "]";
	}
	
	
}
