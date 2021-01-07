<%@page import="com.passionStudy.passion.board.faqboard.model.vo.FAQBoardVo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.passionStudy.passion.board.faqboard.model.*" %>
<jsp:useBean id="dao" class="com.passionStudy.passion.board.faqboard.model.dao.FAQBoardDao"/>
<%	
	int total = dao.count();
	ArrayList<FAQBoardVo> alist = dao.getFaqBoardList();
	int size = alist.size();
	int size2 = size;
	
	final int ROWSIZE = 4; //한페이지에 보일 게시뭏 수
	final int BLOCK = 5; //아래에 보일 페이지 최대개수 1~5 / 6~ 10 / 11 ~ 15 식으로 5개로 고정
	

	int pg = 1; //기본 페이지값
	
	if(request.getParameter("pg")!=null) { //받아온 pg값이 있을 때, 다른 페이지일때
		pg = Integer.parseInt(request.getParameter("pg")); //pg값을 저장
	}
	
	int end = (pg*ROWSIZE); // 해당페이지에서 끝번호(step2) 
	
	int allPage = 0; // 전체 페이지수 
	
	int startPage = ((pg-1)/BLOCK*BLOCK)+1; // 시작블럭숫자 (1~5페이지일경우 1, 6~10일경우 6) 
	int endPage = ((pg-1)/BLOCK*BLOCK)+BLOCK; // 끝 블럭 숫자 (1~5일 경우 5, 6~10일경우 10) 


	allPage = (int)Math.ceil(total/(double)ROWSIZE); 
	if(endPage > allPage){
		endPage = allPage; 
	} 
	size2 -=end; 
	if(size2 < 0) { 
		end = size; 
	}
%>
	
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
  </head>
  <body>
  <div class="cont_header">
		<div class="cont_wrapper">
			<h1>커뮤니티</h1>
		</div>
	</div>

	<div class="tabtype">
		<div class="tabtype_wrapper" style="text-align: center;">
			<ul>
				<li><a
					href="index.jsp?inc=./views/board/notice/board_notice.jsp"><button
							class="btn1">공지사항</button></a></li>
				<li><a
					href="index.jsp?inc=./views/board/faq/board_faq.jsp"><button
							class="btn2 on">자주하는 질문</button></a></li>
				<li><a href="index.jsp?inc=./views/board/1on1/board_1on1.jsp"><button
							class="btn3">1:1문의</button></a></li>
			</ul>
		</div>
	</div>

	<section>
		<div id="board">
			<div id="board_main">
				
				<div id="buttons" style="float:left; ">
					<select id="board_select" name="board_select" title="문의선택"
						class="sel">
						<option value="member_inquiry">회원문의</option>
						<option value="reservation_inquiry">예약문의</option>
						<option value="payment_inquiry">결제문의</option>
						<option value="product_inquiry">상품문의</option>
						<option value="cancel_inquiry">취소문의</option>
					</select>
				</div>
				<div class="search_bar" style="margin-bottom: 15px;">
					<select name="f">
						<option ${(param.f == "title")?"selected":""} value="noticeTitle">제목</option>
						<option ${(param.f == "title")?"selected":""}
							value="noticeContent">내용</option>
					</select> <input type="text" name="q" value="${param.q}" id="search-box" />
					<button type="button" class="search-btn yb" style="float: none;">
						검색</button>
				</div>
				<table class="table" id="main_table" width="50%">
					<tr>
						<th>NO</th>
						<th>제목</th>
						<th>내용</th>
						<th>작성일</th>
					</tr>
					<%
						if(total == 0) { 
					%>
					<tr align="center" bgcolor="#FFFFFF" height="30">
						<td colspan="4">등록된 글이 없습니다</td>
					</tr>
					<%
					 	} else {
					 		for(int i=ROWSIZE*(pg-1); i<end;i++){
					 			FAQBoardVo vo = alist.get(i);
								int idx = vo.getFaqNo();
					%>
					<tr>
						<td><%=vo.getFaqNo() %></td>
						<td><a style="text-decoration: none; color: black;" href="index.jsp?inc=./views/board/faq/board_faq_detail.jsp?idx=<%=idx%>&pg=<%=pg%>"><%=vo.getFaqTitle() %></a>
						</td>
						<td><%=vo.getFaqContent() %></td>
						<td><%=vo.getFaqDate() %></td>
						
					</tr>
				<% }} %>
				
					<tr>	
						<td align="center" colspan="4" style="border-style: none">
							<%
								if(pg>BLOCK)
									{
							%> [<a
							href="index.jsp?inc=./views/board/faq/board_faq.jsp?pg=1">◀◀</a>]
							[<a
							href="index.jsp?inc=./views/board/faq/board_faq.jsp?pg=<%=startPage - 1%>">◀</a>]
							<%
								}
							%> <%
							 	for(int i = startPage;i<=endPage;i++){
							 		if (i == pg) {
							 %> <u><b>[<%=i%>]
							</b></u> <%
							 		} else {
							 %> [<a
							href="index.jsp?inc=./views/board/faq/board_faq.jsp?pg=<%=i%>"><%=i%></a>]
							<%
							 		}
							 	}
							 %> <%
							 	if(endPage<allPage){
							 %> [<a
							href="index.jsp?inc=./views/board/faq/board_faq.jsp?pg=<%=endPage + 1%>">▶</a>]
							[<a
							href="index.jsp?inc=./views/board/faq/board_faq.jsp?pg=<%=allPage%>">▶▶</a>]
							<%
							 	}
							 %>
						</td>
					</tr>

				</table>
			</div>
		</div>
	</section>
</body>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>