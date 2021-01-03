<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	final int ROWSIZE = 4;
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
		
		String sqlCount = "SELECT COUNT(*) FROM QNA_BOARD"; //DB내의 자료개수를 찾는 SQL문
		result = stmt.executeQuery(sqlCount); // SQL실행
		
		if(result.next()) { //result.next()의 반환 값은 true or false이다 찾는결과가 있으면 ture
			total = result.getInt(1); //자료의 개수를 total에 대입한다
		}
		
		int sort = 1;
		String sqlSort = "SELECT QNA_NO FROM QNA_BOARD ORDER BY QNA_NO DESC";
		result = stmt.executeQuery(sqlSort);

		while(result.next()){
			int stepNum = result.getInt(1);
			sql= "UPDATE QNA_BOARD SET PAGING_STACK=" + sort + " WHERE QNA_NO=" + stepNum;
		 	stmt1.executeUpdate(sql);
		 	sort++;
		} 

		
		allPage = (int)Math.ceil(total/(double)ROWSIZE);
		
		if(endPage > allPage) {
			endPage = allPage;
		}
		
		String sqlList = "SELECT QNA_NO, QNA_TITLE, QNA_WRITER, QNA_DATE, ANSWER_TITLE, ANSWER_CONTENT, BOARD_ANSWER FROM QNA_BOARD WHERE PAGING_STACK >="+start+" AND PAGING_STACK <="+end+" ORDER BY PAGING_STACK ASC";
		result = stmt.executeQuery(sqlList);
%>

    <div class="cont_header">
      <div class="cont_wrapper">
        <h1>커뮤니티</h1>
      </div>
    </div>

    <div class="tabtype">
	<div class="tabtype_wrapper" style="text-align: center;">
        <ul>
          <li>
            <a href="index.jsp?inc=./views/board/notice/board_notice_manager.jsp"><button class="btn1">공지사항</button></a>
          </li>
          <li>
            <a href="index.jsp?inc=./views/board/faq/board_faq_manager.jsp"><button class="btn2">자주하는 질문</button></a>
          </li>
          <li>
            <a href="index.jsp?inc=./views/board/1on1/board_1on1.jsp"><button class="btn3 on">1:1문의</button></a>
          </li>
        </ul>
      </div>
    </div>

    <section>
      <div id="board">
        <div id="board_main">
          <div id="buttons">
            <a href="index.jsp?inc=./views/board/1on1/board_1on1_member_write.jsp">
              <button type="button" class="write_btn yb" style="float: none">
                문의하기
              </button></a
            >
          </div>
          <table class="table" id="main_table" width="50%">
            <tr>
	            <th>NO</th>
	            <th>제목</th>
	            <th>작성자</th>
	            <th>작성일</th>
            </tr>
<%
	if(total == 0) { // total 즉 , 자료가 없다면
%>
			<tr align="center" bgcolor="#FFFFFF" height="30">
				<td colspan="4">등록된 글이 없습니다</td>
			</tr>
<%
	} else { // total이 0이 아닌 즉, 자료가 1개이상 있다면

			while(result.next()) {
				int no = result.getInt(1); //1은 첫번째 즉 qna_no값을 no라는 변수에 대입
				String title = result.getString(2); // qna_title
				String writer = result.getString(3); // qna_writer
				String date = result.getString(4); // qna_date
				String answerTitle = result.getString(5); //answer_title
				String answerContent = result.getString(6); //answer_content
				int boardAnswer = result.getInt(7); // board_answer
%>
			<tr>
				<td><%=no %></td>
				<td><a style="text-decoration: none; color: black;" href="index.jsp?inc=./views/board/1on1/board_1on1_detail.jsp?idx=<%=no %>"><%=title %></a></td>
				<td><%=writer %></td>
				<td><%=date %></td>
			</tr>	
<%
				if(boardAnswer != 0){
%>

			<tr align="left">
				<td colspan="4"><img src="resources/images/icon/1on1_answer.gif"/><a style="text-decoration: none;" href="index.jsp?inc=./views/board/1on1/board_1on1_manager_detail.jsp?idx=<%=no %>">
				<%=answerTitle %>
				</a>
				</td>
			</tr>

<%					
				}
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
				<td align="center" colspan="4">
					<%
						if(pg>BLOCK) {
					%>
						[<a href="index.jsp?inc=./views/board/1on1/board_1on1.jsp?pg=1">◀◀</a>]
						[<a href="index.jsp?inc=./views/board/1on1/board_1on1.jsp?pg=<%=startPage-1%>">◀</a>]
					<%
						}
					%>
		
					<%
						for(int i=startPage; i<= endPage; i++){
							if(i==pg){
					%>
								<u><b>[<%=i %>]</b></u>
					<%
							}else{
					%>
								[<a href="index.jsp?inc=./views/board/1on1/board_1on1.jsp?pg=<%=i %>"><%=i %></a>]
					<%
							}
						}
					%>
		
					<%
						if(endPage<allPage){
					%>
						[<a href="index.jsp?inc=./views/board/1on1/board_1on1.jsp?pg=<%=endPage+1%>">▶</a>]
						[<a href="index.jsp?inc=./views/board/1on1/board_1on1.jsp?pg=<%=allPage%>">▶▶</a>]
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