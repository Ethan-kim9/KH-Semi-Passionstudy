package com.passionStudy.passion.board.noticeboard.model.vo;

import java.util.Date;

public class NoticeVo {
	private int noticeNo; //공지사항 식별자
	private int memberNo; //회원 식별자
	private String noticeTitle; //공지사항 제목
	private String noticeContent; //공지사항 내용
	private int noticeCount; //조회수
	private Date regdate; //작성일 
	
	public NoticeVo() {}

	public NoticeVo(int noticeNo, int memberNo, String noticeTitle, String noticeContent, int noticeCount,
			Date regdate) {
		super();
		this.noticeNo = noticeNo;
		this.memberNo = memberNo;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.noticeCount = noticeCount;
		this.regdate = regdate;
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public int getNoticeCount() {
		return noticeCount;
	}

	public void setNoticeCount(int noticeCount) {
		this.noticeCount = noticeCount;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "NoticeBoardVo [noticeNo=" + noticeNo + ", memberNo=" + memberNo + ", noticeTitle=" + noticeTitle
				+ ", noticeContent=" + noticeContent + ", noticeCount=" + noticeCount + ", regdate=" + regdate + "]";
	}

	
}
