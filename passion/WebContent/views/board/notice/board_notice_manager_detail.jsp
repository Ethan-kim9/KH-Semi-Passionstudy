<%@page import="java.util.Date"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

int no = Integer.parseInt(request.getParameter("n_no"));

String url = "jdbc:oracle:thin:@localhost:1521:xe";
String sql = "SELECT * FROM NOTICE_B WHERE N_NO=?";

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection(url,"passion","passion");
PreparedStatement st = con.prepareStatement(sql);
st.setInt(1, no);

ResultSet rs = st.executeQuery();	

rs.next();

String title = rs.getString("N_TITLE");
String writer = rs.getString("N_WRITER");
Date date = rs.getDate("N_DATE");
int hit = rs.getInt("N_HIT");
String content = rs.getString("N_CONTENT");

rs.close();
st.close();
con.close();
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
          <li>
            <a href="index.jsp?inc=./views/board/notice/board_notice_manager.jsp"><button class="btn1 on">공지사항</button></a>
          </li>
          <li>
            <a href="index.jsp?inc=./views/board/faq/board_faq_manager.jsp"><button class="btn2">자주하는 질문</button></a>
          </li>
          <li>
            <a href="index.jsp?inc=./views/board/1on1/board_1on1.jsp"><button class="btn3">1:1문의</button></a>
          </li>
        </ul>
      </div>
    </div>

    <section>
      <div id="board">
        <div id="board_main">
            <div id="another_buttons" style="padding-bottom:10px; text-align:right;">
                <button type="button" class="remove_btn yb" style="float: none">
                    수정
                </button>
                
                <button type="button" class="remove_btn yb" style="float: none">
                  삭제
                </button>
              </div>
          <table class="table" id="table_title">
            <tr>
              <th>제　목</th>
              <td><%=title%></td>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <th>작성자</th>
              <td><%=writer %></td>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <th>작성일</th>
              <td><%=date %></td>
              <th>조회수</th>
              <td><%=hit%></td>
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
            <p style="padding-left:50px;">
             
            </p>
          </div>
        </div>
      </div>
    </section>

</body>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>