<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
  </head>
<%
	int qna_no = 1;
	String qna_title = request.getParameter("qna_title");
	String qna_writer = request.getParameter("qna_writer");
	String qna_content = request.getParameter("qna_content");
	String qna_date = "2021-01-02";
%>
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
            <a href="index.jsp?inc=./views/board/notice/board_notice.jsp"><button class="btn1">공지사항</button></a>
          </li>
          <li>
            <a href="index.jsp?inc=./views/board/faq/board_faq.jsp"><button class="btn2">자주하는 질문</button></a>
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
            <tr>
              <!-- 첫번째 줄 시작-->
              <td><%=qna_no %></td>
              <td><%=qna_title %></td>
              <td><%=qna_writer %></td>
              <td><%=qna_date %></td>
            </tr>
            <!-- 첫번째 줄 끝-->
            <tr>
              <!-- 두번째 줄 시작-->
              <td>1</td>
              <td>
                <img src="resources/images/icon/1on1_answer.gif"/> 안녕하세요 고객님, 답변드립니다.
              </td>
              <td>관리자</td>
              <td>2020-12-25</td>
            </tr>
            <!-- 두번째 줄 끝-->
          </table>
        </div>
      </div>
    </section>
  </body>

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>