<%@page import="com.passionStudy.passion.board.noticeboard.model.vo.MemberVo"%>
<%@page import="com.passionStudy.passion.board.faqboard.model.vo.FAQBoardVo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.passionStudy.passion.board.faqboard.model.*" %>
<jsp:useBean id="dao" class="com.passionStudy.passion.board.faqboard.model.dao.FAQBoardDao"/>
<%-- <%

	MemberVo loginMember 	= (MemberVo)session.getAttribute("loginMember");
%> --%>
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
 <%-- <%
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "passion";
	String pw = "passion";
	int total = 0;
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet result = null;
	
	try {
		Class.forName(driver); // JDBC드라이버 로딩
		conn = DriverManager.getConnection(url,id,pw); // DB서버연결
		stmt = conn.createStatement(); //Statment타입의 객체 생성
		String sqlCount = "SELECT COUNT(*) FROM FAQ_BOARD"; //DB내의 자료개수를 찾는 SQL문
		String sqlList = "SELECT FAQ_NO, FAQ_TITLE, FAQ_CONTENT,FAQ_DATE FROM FAQ_BOARD ORDER BY FAQ_NO DESC"; 
		result = stmt.executeQuery(sqlCount); // SQL실행
		
		if(result.next()) { //result.next()의 반환 값은 true or false이다 찾는결과가 있으면 ture
			total = result.getInt(1); //자료의 개수를 total에 대입한다
		}
		result = stmt.executeQuery(sqlList);

%>  --%>
	

	<div class="cont_header">
		<div class="cont_wrapper">
			<h1>커뮤니티</h1>
		</div>
	</div>

	<div class="tabtype">
		<div class="tabtype_wrapper" style="text-align: center;">
			<ul>
				<li><a
					href="index.jsp?inc=./views/board/notice/board_notice_manager.jsp"><button
							class="btn1">공지사항</button></a></li>
				<li><a
					href="faq.FAQManagerList"><button
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
						<th><input type="checkbox" class="checkbox" id="check_all" /></th>
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
						<td><input type="checkbox" class="checkbox" /></td>
						<td><a style="text-decoration: none; color: black;" href="faq.FAQManagerDetail?idx=<%=idx%>&pg=<%=pg%>"><%=vo.getFaqTitle() %></a>
						</td>
						<td><%=vo.getFaqContent() %></td>
						<td><%=vo.getFaqDate() %></td>
						
					</tr>
				<% }} %>
				

						<%-- <%
				} else { // total이 0이 아닌 즉, 자료가 1개이상 있다면
					
						while(result.next()) {
							int no = result.getInt(1); //1은 첫번째 즉 FAQ_no값을 no라는 변수에 대입
							String title = result.getString(2); // FAQ_TITLE
							String content = result.getString(3); //FAQ_CONTENT
							String date = result.getString(4); // FAQ_DATE
			%> --%>
						
						
					<%-- <%					
							
						} //while
				} // else
				result.close();
				stmt.close();
				conn.close();
				} catch(SQLException e) {
					out.println(e.toString()); // 에러 날 경우 에러출력
				}
			
			%> --%>
	
					<tr>	
						<td align="center" colspan="4" style="border-style: none">
							<%
								if(pg>BLOCK)
									{
							%> [<a
							href="faq.FAQManagerList?pg=1">◀◀</a>]
							[<a
							href="faq.FAQManagerList?pg=<%=startPage - 1%>">◀</a>]
							<%
								}
							%> <%
							 	for(int i = startPage;i<=endPage;i++){
							 		if (i == pg) {
							 %> <u><b>[<%=i%>]
							</b></u> <%
							 		} else {
							 %> [<a
							href="faq.FAQManagerList?pg=<%=i%>"><%=i%></a>]
							<%
							 		}
							 	}
							 %> <%
							 	if(endPage<allPage){
							 %> [<a
							href="faq.FAQManagerList?pg=<%=endPage + 1%>">▶</a>]
							[<a
							href="faq.FAQManagerList?pg=<%=allPage%>">▶▶</a>]
							<%
							 	}
							 %>
						</td>
					</tr>

				</table>
				<div>
					<!-- <a href="index.jsp?inc=./views/board/faq/board_faq_write.jsp"> -->
					<input type="button" class="write_btn yb" style="float: none; margin-left: 550px;"
						value="글쓰기"
						onClick="window.location='index.jsp?inc=./views/board/faq/board_faq_manager_write.jsp'">
					</input>
					<!-- </a> -->
					<button type="button" class="remove_btn yb"
						style="float: right;">삭제</button>
				</div>
				
			</div>
		</div>
	</section>
</body>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script>
	  $(".table").on("click","#check_all", function() {
	      var checked = $(this).is(":checked");
	
	      if(checked){
	        $(this).parents(".table").find('input').prop("checked",true);
	      } else {
	        $(this).parents(".table").find('input').prop("checked",false);
	      }
	  });
  </script>
</html>