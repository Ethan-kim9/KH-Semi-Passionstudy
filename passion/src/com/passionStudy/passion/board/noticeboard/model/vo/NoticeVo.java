package com.passionStudy.passion.board.noticeboard.model.vo;

import java.util.Date;

public class NoticeVo {
   private int nno; //공지사항 식별자
   private int mno; //회원 식별자
   private String ntitle; //공지사항 제목
   private String ncontent; //공지사항 내용
   private int ncount; //조회수
   private Date regdate; //작성일
   
   public NoticeVo() {}
   
   public NoticeVo(int nno, int mno, String ntitle, String ncontent, int ncount, Date regdate) {

		this.nno = nno;
		this.mno = mno;
		this.ntitle = ntitle;
		this.ncontent = ncontent;
		this.ncount = ncount;
		this.regdate = regdate;
	}

	public int getNno() {
		return nno;
	}
	
	public void setNno(int nno) {
		this.nno = nno;
	}
	
	public int getMno() {
		return mno;
	}
	
	public void setMno(int mno) {
		this.mno = mno;
	}
	
	public String getNtitle() {
		return ntitle;
	}
	
	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}
	
	public String getNcontent() {
		return ncontent;
	}
	
	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}
	
	public int getNcount() {
		return ncount;
	}
	
	public void setNcount(int ncount) {
		this.ncount = ncount;
	}
	
	public Date getRegdate() {
		return regdate;
	}
	
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "NoticeVo [nno=" + nno + ", mno=" + mno + ", ntitle=" + ntitle + ", ncontent=" + ncontent + ", ncount="
				+ ncount + ", regdate=" + regdate + "]";
	}
	   
	   
   
}