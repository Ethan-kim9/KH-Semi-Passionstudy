<%@page import="com.passionStudy.passion.board.noticeboard.model.vo.MemberVo"%>
<%@page import="com.passionStudy.passion.board.faqboard.model.vo.FAQBoardVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.passionStudy.passion.board.faqboard.model.*" %>
<jsp:useBean id="dao" class="com.passionStudy.passion.board.faqboard.model.dao.FAQBoardDao"/>
<%-- <%
	MemberVo loginMember 	= (MemberVo)session.getAttribute("loginMember");
%> --%>
<%
	int idx = Integer.parseInt(request.getParameter("idx"));
	int pg = Integer.parseInt(request.getParameter("pg"));
	FAQBoardVo vo = dao.getView(idx);	
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
		String sql = "SELECT FAQ_TITLE, FAQ_CONTENT, FAQ_DATE FROM FAQ_BOARD WHERE FAQ_NO=" + idx; 
		result = stmt.executeQuery(sql); // SQL실행
		if(result.next()); {
			String title = result.getString(1);
			String content = result.getString(2);		
			String date = result.getString(3);		
%> --%>

<div class="cont_header">
      <div class="cont_wrapper">
        <h1>커뮤니티</h1>
      </div>
    </div>

    <div class="tabtype">
    </div>
	<form action="faq.FAQDelete?idx=<%=idx %>" method="post">
    <section>
      <div id="board">
        <div id="board_main">
            
          <table class="table" id="table_title">
            <tr>
              <th>카테고리</th>
              <td>회원문의</td>
              <td></td>
              <td></td>
            </tr>
            <!-- 첫번째 줄 끝-->
            <tr>
              <!-- 두번째 줄 시작-->
              <th>제　목</th>
              <td><%=vo.getFaqTitle() %></td>
              <td></td>
              <td></td>
            </tr>
            <!-- 두번째 줄 끝-->
            <tr>
              <th>작성일</th>
              <td><%=vo.getFaqDate() %></td>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <th class="content" style="height: 150px">내용</th>
              <td class="content" style="height: 150px"><%=vo.getFaqContent() %></td>
              <td></td>
              <td></td>
            </tr>
          </table>
          
          <%-- <div class="table_inner">
            <p>
              <%=content %>
            </p>
          </div> --%>
          <div id="another_buttons">
              <input type="button" value="수정" class="write_btn yb"  style="float: none; margin:20px 10px 0 270px"  OnClick="window.location='faq.FAQModifyWrite?idx=<%=idx%>&pg=<%=pg%>'">
              <input type="submit" value="삭제" class="write_btn yb" style="float: none" >
          </div>
        </div>
      </div>
    </section>
    </form>
<%-- <%
	result.close();
	stmt.close();
	conn.close();
		}
		
	} catch(SQLException e) {
		out.println(e.toString());
	}
%> --%>
</body>
</html>