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
		String sqlCount = "SELECT COUNT(*) FROM FAQ_BOARD"; //DB내의 자료개수를 찾는 SQL문
		String sqlList = "SELECT FAQ_NO, FAQ_TITLE, FAQ_CONTENT,FAQ_DATE FROM FAQ_BOARD ORDER BY FAQ_NO DESC"; 
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
            <a href="index.jsp?inc=./views/board/faq/board_faq_manager.jsp"><button class="btn2 on">자주하는 질문</button></a>
          </li>
          <li>
            <a href="index.jsp?inc=./views/board/1on1/board_1on1.jsp"><button class="btn3">1:1문의</button></a>
          </li>
        </ul>
      </div>
    </div>

    <section>
      <h4>${result }</h4>
      <div id="board">
        <div id="board_main">
          <div id="buttons">
            
            <select
              id="board_select"
              name="board_select"
              title="문의선택"
              class="sel"
            >
              <option value="member_inquiry">회원문의</option>
              <option value="reservation_inquiry">예약문의</option>
              <option value="payment_inquiry">결제문의</option>
              <option value="product_inquiry">상품문의</option>
              <option value="cancel_inquiry">취소문의</option>
            </select>
          </div>
          <table class="table" id="main_table" width="50%">
            <tr>
	            <th><input type="checkbox" class="checkbox" /></th>
	            <th>카테고리</th>
	            <th>제목</th>
	            <th>내용</th>
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
							
							String title = result.getString(2); // FAQ_TITLE
							String content = result.getString(3); //FAQ_CONTENT
							String date = result.getString(4); // FAQ_DATE
			%>
						<tr>
							<td><input type="checkbox" class="checkbox" /></td>
							<td></td>
							<td><a style="text-decoration: none; color: black;" href="index.jsp?inc=./views/board/faq/board_faq_manager_detail.jsp?idx=<%=no %>"><%=title %></a></td>
							<td><%=content %></td>
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
           <%--  <tr>
            <!-- 첫번째 줄 시작-->
              <td><input type="checkbox" class="checkbox" /></td>
              <td>회원문의</td>
              <td>아이디와 비밀번호는 어떻게 찾을 수 있나요?</td>
              <td><%=date %></td>
            </tr>
            <!-- 첫번째 줄 끝-->
            <tr>
              <!-- 두번째 줄 시작-->
              <td><input type="checkbox" class="checkbox" /></td>
              <td>서비스 이용 및 기타</td>
              <td>결제내역을 어떻게 확인하나요?</td>
              <td><%=date %></td>
            </tr>
            <!-- 두번째 줄 끝-->
            <tr>
              <!-- 세번째 줄 시작-->
              <td><input type="checkbox" class="checkbox" /></td>
              <td>쿠폰/적립금</td>
              <td>적립금은 유효기간이 있나요?</td>
              <td><%=date %></td>
            </tr>
          	<!-- 세번째 줄 끝 --> --%>
         
		</table>
		  <div>
		  	<a href="index.jsp?inc=./views/board/faq/board_faq_write.jsp">
              <button type="button" class="write_btn yb" style="float: none">
                글쓰기
              </button>
            </a>
            <button type="button" class="remove_btn yb" style="float: none; margin-right:500px">
              삭제
            </button>
		  </div>
          <div class="search_bar">
            <select name="f">
              <option ${(param.f == "title")?"selected":""} value="noticeTitle">제목</option>
              <option ${(param.f == "title")?"selected":""} value="noticeContent">내용</option>
            </select>
          <input type="text" name="q" value="${param.q}" id="search-box" />
          <button type="button" class="search-btn yb" style="float: none;">
            검색
          </button>
          </div>
        </div>
      </div>
    </section>
  </body>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>