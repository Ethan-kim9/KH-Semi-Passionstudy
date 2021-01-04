package com.passionStudy.passion.board.noticeboard.model.vo;

import java.util.Date;

public class NoticeVo {
	private int n_no;
	private String nTitle;
	private String nWriter;
	private Date nDate;
	private int nHit;
	private String nContent;
	
	public NoticeVo() {}

	public NoticeVo(int n_no, String nTitle, String nWriter, Date nDate, int nHit, String nContent) {
		super();
		this.n_no = n_no;
		this.nTitle = nTitle;
		this.nWriter = nWriter;
		this.nDate = nDate;
		this.nHit = nHit;
		this.nContent = nContent;
	}

	public int getN_no() {
		return n_no;
	}

	public void setN_no(int n_no) {
		this.n_no = n_no;
	}

	public String getnTitle() {
		return nTitle;
	}

	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}

	public String getnWriter() {
		return nWriter;
	}

	public void setnWriter(String nWriter) {
		this.nWriter = nWriter;
	}

	public Date getnDate() {
		return nDate;
	}

	public void setnDate(Date nDate) {
		this.nDate = nDate;
	}

	public int getnHit() {
		return nHit;
	}

	public void setnHit(int nHit) {
		this.nHit = nHit;
	}

	public String getnContent() {
		return nContent;
	}

	public void setnContent(String nContent) {
		this.nContent = nContent;
	}

	@Override
	public String toString() {
		return "NoticeVo [n_no=" + n_no + ", nTitle=" + nTitle + ", nWriter=" + nWriter + ", nDate=" + nDate + ", nHit="
				+ nHit + ", nContent=" + nContent + "]";
	}
	
	
}