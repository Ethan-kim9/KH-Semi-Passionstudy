package com.passionStudy.passion.board.mtomboard.model.vo;

import java.util.Date;

public class MtoMBoardVo {
		private int qnaNo; //게시판 식별자
		private int memberNo; //회원 식별자
		private String memberId;
		private String memberPw;
		private String qnaTitle; //게시글 제목
		private String qnaContent; //게시글 내용
		private String qnaAnswer; //답변 여부
		private Date qnaDate; //작성일
		private String answerContent; //답변내용
		private String memberName; //작성자
		
		public MtoMBoardVo() {
			
		}

		