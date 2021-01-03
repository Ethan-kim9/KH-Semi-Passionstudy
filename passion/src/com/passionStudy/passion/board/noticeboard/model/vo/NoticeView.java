package com.passionStudy.passion.board.noticeboard.model.vo;

import java.util.Date;

public class NoticeView extends NoticeVo {


	public NoticeView() {
		// TODO Auto-generated constructor stub
	}
	
	public NoticeView(int noticeNo, int memberNo, String noticeTitle, String noticeContent, int noticeCount, Date regdate) {
		super(noticeNo, memberNo, noticeTitle, noticeContent, noticeCount, regdate);
	}

}