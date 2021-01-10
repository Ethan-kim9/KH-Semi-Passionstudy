<%@page import="com.passionStudy.passion.board.faqboard.model.dao.FAQBoardDao"%>
<%@page import="com.passionStudy.passion.board.faqboard.model.vo.FAQBoardVo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.passionStudy.passion.board.faqboard.model.*" %>
<jsp:useBean id="dao" class="com.passionStudy.passion.board.faqboard.model.dao.FAQBoardDao"/>

<%
	final int ROWSIZE = 8;
	final int BLOCK = 5;

	int pg = 1;
	
	if(request.getParameter("pg")!=null) {
		pg = Integer.parseInt(request.getParameter("pg"));
	}
	
	int start = (pg*ROWSIZE) - (ROWSIZE-1);
	int end = (pg*ROWSIZE);
	
	int allPage = 0;
	
	int startPage = ((pg-1)/BLOCK*BLOCK)+1;
	int endPage = ((pg-1)/BLOCK*BLOCK)+BLOCK;

%>	
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
  </head>
  <body>
  <%
	final String nonMemberCheck = "비회원";
	final String managerCheck = "관리자";
	final String userCheck = "회원";

	
	String nonMember = (String)request.getAttribute("nonMember");
	String manager = (String)request.getAttribute("manager");
	String user = (String)request.getAttribute("user");
	
	
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
		Statement stmt1 = conn.createStatement();
		String sql = "";
		
		String sqlCount = "SELECT COUNT(*) FROM FAQ_BOARD"; //DB내의 자료개수를 찾는 SQL문
		result = stmt.executeQuery(sqlCount); // SQL실행
		
		if(result.next()) { //result.next()의 반환 값은 true or false이다 찾는결과가 있으면 ture
			total = result.getInt(1); //자료의 개수를 total에 대입한다
		}
		
		int sort = 1;
		String sqlSort = "SELECT FAQ_NO FROM FAQ_BOARD ORDER BY FAQ_NO DESC";
		result = stmt.executeQuery(sqlSort);

		while(result.next()){
			int stepNum = result.getInt(1);
			sql= "UPDATE FAQ_BOARD SET PAGING_STACK=" + sort + " WHERE FAQ_NO=" + stepNum;
		 	stmt1.executeUpdate(sql);
		 	sort++;
		} 

		
		allPage = (int)Math.ceil(total/(double)ROWSIZE);
		
		if(endPage > allPage) {
			endPage = allPage;
		}
		
		String sqlList = "SELECT FAQ_NO,FAQ_CATEGORY, FAQ_TITLE, FAQ_CONTENT, FAQ_DATE FROM FAQ_BOARD WHERE PAGING_STACK >="+start+" AND PAGING_STACK <="+end+" ORDER BY PAGING_STACK ASC";
		result = stmt.executeQuery(sqlList);

%>
	<div class="cont_header">
		<div class="cont_wrapper">
			<h1>커뮤니티</h1>
		</div>
	</div>

	<jsp:include page="../inc/board_head.jsp"/>

	<section>
		<div id="board">
			<div id="board_main">
<%
	//유저나 비회원나 관리자에게 보이는 화면
	if(nonMemberCheck.equals(nonMember) || userCheck.equals(user) || managerCheck.equals(manager)){
%>  				
				<div id="buttons" style="float:left; ">
					<select id="board_select" name="board_select" title="문의선택"
						class="sel">
						<option value="회원문의">회원문의</option>
						<option value="예약문의">예약문의</option>
						<option value="결제문의">결제문의</option>
						<option value="상품문의">상품문의</option>
						<option value="취소문의">취소문의</option>
					</select>
				</div>
				<div class="search_bar" style="margin-bottom: 15px;">
					<select name="f">
						<option value="noticeTitle">제목</option>
						<option value="noticeContent">내용</option>
					</select> 
					<input type="text" name="q" value="${param.q}" id="search-box" />
					<button type="button" class="search-btn yb" style="float: none;">검색</button>
				</div>
<%
	}
%>	
<%
    //유저나 비회원에게 보이는 화면
	if(nonMemberCheck.equals(nonMember) || userCheck.equals(user)){
%> 			
				<table class="table" id="main_table" width="50%">
					<tr>
						<th>NO</th>
						<th>카테고리</th>
						<th>제목</th>
						<th>작성일</th>
					</tr>
<%
	}
%>
<%
    //관리자에게 보이는 화면
	if(managerCheck.equals(manager)){
%> 			
				<table class="table" id="main_table" width="50%">
					<tr>
						<th><input type="checkbox" class="check_all" id="check_all" /></th>
						<th>카테고리</th>
						<th>제목</th>
						<th>작성일</th>
					</tr>
<%
	}
%>
					<%
						if(total == 0) { 
					%>
					<tr align="center" bgcolor="#FFFFFF" height="30">
						<td colspan="4">등록된 글이 없습니다</td>
					</tr>
					<%
					 	} else {
					 		while(result.next()) {
								int no = result.getInt(1); //faq_no
								String category = result.getString(2); // faq_category
								String title = result.getString(3); // faq_title
								String content = result.getString(4); // faq_content
								String date = result.getString(4); // faq_date	
					%>
<%
			//유저나 비회원에게 보이는 화면
			if(nonMemberCheck.equals(nonMember) || userCheck.equals(user)) {
%>					
					<tr>
						<td><a style="text-decoration: none; color: black;" href="faq.FAQManagerDetail?idx=<%=no%>&pg=<%=pg%>"><%=no %></td>
						<td><%=category%></a></td>
						<td><%=title %></td>
						<td><%=date%></td>
						
					</tr>
<%
	}
%>	
<%
			//관리자에게 보이는 화면
			if(managerCheck.equals(manager)) {
%>					
					<tr>
						<td><input type="checkbox" class="checkbox" data-faqNo="${vo.faqNo }"/></td>
						<td><a style="text-decoration: none; color: black;" href="faq.FAQManagerDetail?idx=<%=no%>&pg=<%=pg%>"><%=category %></a></td>
						<td><%=title %></td>
						<td><%=date %></td>
						
					</tr>
<%
	}
%>					
<%			
		} //while
	} // else
	result.close();
	stmt.close();
	conn.close();
	} catch(SQLException e) {
		out.println(e.toString()); // 에러 날 경우 에러출력
	}
%>
					<tr>	
						<td align="center" colspan="4" style="border-style: none">
							<%
								if(pg>BLOCK)
									{
							%> [<a
							href="faq.ManagerOrUser?pg=1">◀◀</a>]
							[<a
							href="faq.ManagerOrUser?pg=<%=startPage - 1%>">◀</a>]
							<%
								}
							%> <%
							 	for(int i = startPage;i<=endPage;i++){
							 		if (i == pg) {
							 %> <u><b>[<%=i%>]
							</b></u> <%
							 		} else {
							 %> [<a
							href="faq.ManagerOrUser?pg=<%=i%>"><%=i%></a>]
							<%
							 		}
							 	}
							 %> <%
							 	if(endPage<allPage){
							 %> [<a
							href="faq.ManagerOrUser?pg=<%=endPage + 1%>">▶</a>]
							[<a
							href="faq.ManagerOrUser?pg=<%=allPage%>">▶▶</a>]
							<%
							 	}
							 %>
						</td>
					</tr>
				</table>
<%
			//관리자에게 보이는 화면
			if(managerCheck.equals(manager)) {
%>				
				<div>
					<!-- <a href="index.jsp?inc=./views/board/faq/board_faq_write.jsp"> -->
					<input type="button" class="write_btn yb" style="float: none; margin-left: 550px;"
						value="글쓰기"
						onClick="window.location='index.jsp?inc=./views/board/faq/board_faq_manager_write.jsp'">
					</input>
					<!-- </a> -->
					<button type="button" class="remove_btn yb"
						style="float: right;" data-faqNo="${vo.faqNo }">삭제</button>
				</div>
<%
			}
%>				
			</div>
		</div>
	</section>
</body>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script>
  	 //전체 선택 해제
	  $(".table").on("click",".check_all", function() {
	      var checked = $(this).is(":checked");
	
	      if(checked){
	        $(this).parents(".table").find('input').prop("checked",true);
	      } else {
	        $(this).parents(".table").find('input').prop("checked",false);
	      }
	  });
	 //개별 체크박스가 선택되거나 선택해제되면 모두 선택 체크박스가 해제
	  $(".checkbox").click(function(){
			$(".check_all").prop("checked",false);
	  });
	//선택 삭제 버튼
	$(".remove_btn yb").click(function(){
		var confirm_val = confirm("정말 삭제하시겠습니까?");

		if(confirm_val) {
			var checkArr = new Array();

			$("input[class="checkbox"]:checked").each(function(){
				checkArr.push($(this).attr("data-faqNo"));
			});

			$.ajax({
			    url : "/shop/deleteCart",
			    type : "post",
			    data : { chbox : checkArr },
			    success : function(){
			     location.href = "/faq/board_faq_manager";
			    }
			});

			}
		});
		 
  </script>
</html>