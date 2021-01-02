package com.passionStudy.passion.board.mtomboard.model.vo;

import java.util.Date;

public class MtoMBoardVo {
		private int boardNo; //게시판 식별자
		private int memberNo; //회원 식별자
		private String boardTitle; //게시글 제목
		private String boardContent; //게시글 내용
		private String boardAnswer; //답변 여부
		private Date boardDate; //작성일
		private String answerContent; //답변내용
		private String memberName; //작성자
		
		public MtoMBoardVo() {
			
		}

		public MtoMBoardVo(int boardNo, int memberNo, String boardTitle, String boardContent, String boardAnswer,
				Date boardDate, String answerContent, String memberName) {
			super();
			this.boardNo = boardNo;
			this.memberNo = memberNo;
			this.boardTitle = boardTitle;
			this.boardContent = boardContent;
			this.boardAnswer = boardAnswer;
			this.boardDate = boardDate;
			this.answerContent = answerContent;
			this.memberName = memberName;
		}

		public int getBoardNo() {
			return boardNo;
		}

		public void setBoardNo(int boardNo) {
			this.boardNo = boardNo;
		}

		public int getMemberNo() {
			return memberNo;
		}

		public void setMemberNo(int memberNo) {
			this.memberNo = memberNo;
		}

		public String getBoardTitle() {
			return boardTitle;
		}

		public void setBoardTitle(String boardTitle) {
			this.boardTitle = boardTitle;
		}

		public String getBoardContent() {
			return boardContent;
		}

		public void setBoardContent(String boardContent) {
			this.boardContent = boardContent;
		}

		public String getBoardAnswer() {
			return boardAnswer;
		}

		public void setBoardAnswer(String boardAnswer) {
			this.boardAnswer = boardAnswer;
		}

		public Date getBoardDate() {
			return boardDate;
		}

		public void setBoardDate(Date boardDate) {
			this.boardDate = boardDate;
		}

		public String getAnswerContent() {
			return answerContent;
		}

		public void setAnswerContent(String answerContent) {
			this.answerContent = answerContent;
		}

		public String getMemberName() {
			return memberName;
		}

		public void setMemberName(String memberName) {
			this.memberName = memberName;
		}

		@Override
		public String toString() {
			return "MtoMBoardVo [boardNo=" + boardNo + ", memberNo=" + memberNo + ", boardTitle=" + boardTitle
					+ ", boardContent=" + boardContent + ", boardAnswer=" + boardAnswer + ", boardDate=" + boardDate
					+ ", answerContent=" + answerContent + ", memberName=" + memberName + "]";
		}
		
		
		
}
