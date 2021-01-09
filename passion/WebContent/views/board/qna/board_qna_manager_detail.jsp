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
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet result = null;
	
	// 메인페이지에서 get 방식으로 idx값을 보냈던 그 변수가 getParameter("idx") 이곳에 들어간거고
	// 그 값을 idx에 대입한것 get방식이든 post방식이든 넘어오게 되면 데이터타입이 String이 된다
	// 그래서 형변환으로 Integer.parseInt를 사용한것
	int idx = Integer.parseInt(request.getParameter("idx"));
	
	try {
		Class.forName(driver); // JDBC드라이버 로딩
		conn = DriverManager.getConnection(url,id,pw); // DB서버연결
		stmt = conn.createStatement(); //Statment타입의 객체 생성
		String sql = "SELECT QNA_TITLE, QNA_WRITER, QNA_CONTENT, QNA_DATE, ANSWER_TITLE, ANSWER_CONTENT, BOARD_ANSWER FROM QNA_BOARD WHERE QNA_NO=" + idx; // board테이블에 있는 no,title,writer,date 값을 가져오되 
		result = stmt.executeQuery(sql); // SQL실행
		if(result.next()); {
			String title = result.getString(1);
			String writer = result.getString(2);
			String content = result.getString(3);		
			String date = result.getString(4);		
			String answerTitle = result.getString(5); //answer_title
			String answerContent = result.getString(6); //answer_content
			int boardAnswer = result.getInt(7); // board_answer
%>

	<div class="cont_header">
      <div class="cont_wrapper">
        <h1>커뮤니티</h1>
      </div>
    </div>

    <div class="tabtype">
    </div>

    <section>
      <div id="board">
        <div id="board_main">
            <div id="another_buttons">
				<input type="button" value="목록" class="write_btn yb" style="float: none" OnClick="window.location='member.manager.check.do'">
              </div>
          <table class="table" id="table_title">
            <tr>
              <th>제　목</th>
              <td><%=answerTitle %></td>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <!-- 첫번째 줄 시작-->
              <th>작성자</th>
              <td>관리자</td>
              <td></td>
              <td></td>
            </tr>
            <!-- 첫번째 줄 끝-->
            <tr>
              <!-- 두번째 줄 시작-->
              <th>작성일</th>
              <td><%=date %></td>
              <td></td>
              <td></td>
            </tr>
            <!-- 두번째 줄 끝-->
            <tr>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
            </tr>
          </table>
          <div class="table_inner">
            <p>
              <%=answerContent %>
            </p>
          </div>
          </table>
        </div>
      </div>
    </section>
<%
	result.close();
	stmt.close();
	conn.close();
		}
		
	} catch(SQLException e) {
		out.println(e.toString());
	}
%>
</body>
</html>