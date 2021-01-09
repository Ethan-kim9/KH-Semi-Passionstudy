<%@page import="com.passionStudy.qnaBoard.vo.QnaVo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.passionStudy.qnaBoard.dao.QnaDao"%>
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
QnaDao qnaDao = QnaDao.getInstance();
ArrayList<QnaVo> list = qnaDao.getMemberList();
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
            <a href="index.jsp?inc=./views/board/qna/board_qna_member_write.jsp">
              <button type="button" class="write_btn yb" style="float: none">
                문의하기
              </button></a
            >
          </div>
          <table class="table" id="main_table" width="50%">
            <tr>
	            <th>카테고리</th>
	            <th>NO</th>
	            <th>제목</th>
	            <th>작성자</th>
	            <th>작성일</th>
            </tr>


<%
for (QnaVo vo : list) {
	

%>
			<tr>
				<td><%=vo.getCategory() %></td>
				<td><a href="qna.detail.do?idx=<%=vo.getQnaNo()%>"><%=vo.getQnaNo() %></a></td>
				<td><%=vo.getQnaTitle() %></td>
				<td><%=vo.getQnaWriter() %></td>
				<td><%=vo.getQnaDate() %></td>
			</tr>	 			


<%
}
%>

          </table>
        </div>
      </div>
    </section>
  </body>

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>