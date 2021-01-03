<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
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
		String sqlCount = "SELECT COUNT(*) FROM QNA_BOARD"; //DB내의 자료개수를 찾는 SQL문
		String sqlList = "SELECT QNA_NO, QNA_TITLE, QNA_WRITER, QNA_DATE FROM QNA_BOARD ORDER BY QNA_NO DESC"; // board테이블에 있는 no,title,writer,date 값을 가져오되 no 기준으로 내림차순 정렬
		result = stmt.executeQuery(sqlCount); // SQL실행
		
		if(result.next()) { //result.next()의 반환 값은 true or false이다 찾는결과가 있으면 ture
			total = result.getInt(1); //자료의 개수를 total에 대입한다
		}
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
<form action="" method="post">
    <section>
      <div id="board">
        <div id="board_main">
          <div id="buttons">
            <input type="submit" value="답변작성" class="write_btn yb" style="float: none" OnClick="window.location='index.jsp?inc=./views/board/1on1/delete.jsp?idx='">
            <input type="submit" value="삭제" class="write_btn yb" style="float: none">
          </div>
          <table class="table" id="main_table" width="50%">
            <tr>
				<td></td>
	            <th>NO</th>
	            <th>제목</th>
	            <th>작성자</th>
	            <th>작성일</th>
            </tr>
<%
	if(total == 0) { // total 즉 , 자료가 없다면
%>
			<tr align="center" bgcolor="#FFFFFF" height="30">
				<td colspan="5">등록된 글이 없습니다</td>
			</tr>
<%
		
			while(result.next()) {
				int no = result.getInt(1); //1은 첫번째 즉 qna_num값을 no라는 변수에 대입
				String title = result.getString(2); // qna_title
				String writer = result.getString(3); // qna_writer
				String date = result.getString(4); // qna_date

%>
			<tr>
				<td><input name="lang" type="checkbox" class="checkbox" value="<%=no %>" /></td>
				<td><%=no %></td>
				<td><a href="index.jsp?inc=./views/board/1on1/board_1on1_detail.jsp?idx=<%=no %>"><%=title %></a></td>
				<td><%=writer %></td>
				<td><%=date %></td>
			</tr>
	
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
<%
	String[] value = request.getParameterValues("lang");

%>

            <tr>
              <!-- 첫번째 줄 시작-->
              <td><input type="checkbox" class="checkbox" /></td>
              <td>2</td>
              <td>단체예약 문의드립니다.</td>
              <td>김열정</td>
              <td>2020-12-25</td>
            </tr>
            <!-- 첫번째 줄 끝-->
            <tr>
              <!-- 두번째 줄 시작-->
              <td><input type="checkbox" class="checkkbox" /></td>
              <td>1</td>
              <td>
                <img src="../../../images/icon/1on1_answer.gif"/>
                안녕하세요 고객님, 답변드립니다.
              </td>
              <td>관리자</td>
              <td>2020-12-25</td>
            </tr>
            <!-- 두번째 줄 끝-->
          </table>
        </div>
      </div>
    </section>
  </form>
  </body>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>
