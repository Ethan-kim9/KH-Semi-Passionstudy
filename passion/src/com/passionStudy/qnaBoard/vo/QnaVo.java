package com.passionStudy.qnaBoard.vo;

public class QnaVo {
	private int qnaNo; // QNA 번호
	private String qnaWriter; // QNA 작성자
	private String qnaTitle; // QNA 제목
	private String qnaContent; // QNA 내용
	private String qnaDate; // QNA 작성날짜
	private String answerTitle; // QNA 답변제목
	private String answerContent; // QNA 답변내용
	private int boardAnswer; // QNA 답변여부
	private int pagingStack; // 페이징처리를 위한 스택
	private String category;



public QnaVo() {
	
}

public QnaVo(int qnaNo, String qnaWriter, String qnaTitle, String qnaContent, String qnaDate, String answerTitle, String answerContent, int boardAnswer, int pagingStack, String category) {
	this.qnaNo = qnaNo;
	this.qnaWriter = qnaWriter;
	this.qnaTitle = qnaTitle;
	this.qnaContent = qnaContent;
	this.qnaDate = qnaDate;
	this.answerTitle = answerTitle;
	this.answerContent = answerContent;
	this.boardAnswer = boardAnswer;
	this.pagingStack = pagingStack;
	this.category = category;
}

public String getCategory() {
	return category;
}

public void setCategory(String category) {
	this.category = category;
}

public int getQnaNo() {
	return qnaNo;
}

public void setQnaNo(int qnaNo) {
	this.qnaNo = qnaNo;
}

public String getQnaWriter() {
	return qnaWriter;
}

public void setQnaWriter(String qnaWriter) {
	this.qnaWriter = qnaWriter;
}

public String getQnaTitle() {
	return qnaTitle;
}

public void setQnaTitle(String qnaTitle) {
	this.qnaTitle = qnaTitle;
}

public String getQnaContent() {
	return qnaContent;
}

public void setQnaContent(String qnaContent) {
	this.qnaContent = qnaContent;
}

public String getQnaDate() {
	return qnaDate;
}

public void setQnaDate(String qnaDate) {
	this.qnaDate = qnaDate;
}

public String getAnswerTitle() {
	return answerTitle;
}

public void setAnswerTitle(String answerTitle) {
	this.answerTitle = answerTitle;
}

public String getAnswerContent() {
	return answerContent;
}

public void setAnswerContent(String answerContent) {
	this.answerContent = answerContent;
}

public int getBoardAnswer() {
	return boardAnswer;
}

public void setBoardAnswer(int boardAnswer) {
	this.boardAnswer = boardAnswer;
}

public int getPagingStack() {
	return pagingStack;
}

public void setPagingStack(int pagingStack) {
	this.pagingStack = pagingStack;
}

@Override
public String toString() {
	return "QnaVo [qnaNo=" + qnaNo + ", qnaWriter=" + qnaWriter + ", qnaTitle=" + qnaTitle + ", qnaContent="
			+ qnaContent + ", qnaDate=" + qnaDate + ", answerTitle=" + answerTitle + ", answerContent=" + answerContent
			+ ", boardAnswer=" + boardAnswer + ", pagingStack=" + pagingStack + ", category=" + category + "]";
}

}