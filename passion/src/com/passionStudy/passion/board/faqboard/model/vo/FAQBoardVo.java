package com.passionStudy.passion.board.faqboard.model.vo;

import java.util.Date;

public class FAQBoardVo {
	private int faqNo;  //게시글번호
	private int memberNo; //멤버 번호
	private String faqCategory; //게시글 카테고리
	private String faqTitle; //게시글 제목
	private String faqContent; //게시글 내용
	private Date faqDate; //게시글 작성일자
	private String show;  //게시글 삭제 상태 유무
	private int pagingStack; //페이징처리를 위한 스택
	
	public FAQBoardVo(int faqNo, int memberNo, String faqCategory, String faqTitle, String faqContent,Date faqDate,String show, int pagingStack) {
		super();
		this.faqNo = faqNo;
		this.memberNo = memberNo;
		this.faqCategory = faqCategory;
		this.faqTitle = faqTitle;
		this.faqContent = faqContent;
		this.faqDate = faqDate;
		this.show = show;
		this.pagingStack = pagingStack;
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

	public Date getFaqDate() {
		return faqDate;
	}

	public void setFaqDate(Date faqDate) {
		this.faqDate = faqDate;
	}

	public String getShow() {
		return show;
	}

	public void setShow(String show) {
		this.show = show;
	}
	public int getPagingStack() {
		return pagingStack;
	}

	public void setPagingStack(int pagingStack) {
		this.pagingStack = pagingStack;
	}
	
	@Override
	public String toString() {
		return "FAQBoardVo [faqNo=" + faqNo + ", memberNo=" + memberNo + ", faqCategory=" + faqCategory + ", faqTitle="
				+ faqTitle + ", faqContent=" + faqContent + ", faqDate=" + faqDate + ", show=" + show + ", pagingStack=" + pagingStack + "]";
	}

	
}
