<%@page import="com.passionStudy.passion.board.faqboard.model.vo.FAQBoardVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.passionStudy.passion.board.faqboard.model.*" %>
<jsp:useBean id="dao" class="com.passionStudy.passion.board.faqboard.model.dao.FAQBoardDao"/>
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
<div class="cont_header">
      <div class="cont_wrapper">
        <h1>커뮤니티</h1>
      </div>
    </div>

    <div class="tabtype">
    </div>
	<form action="delete.do" method="post">
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
          <div id="another_buttons">
              <input type="button" value="목록으로" class="write_btn yb" style="float: none" OnClick="window.location='index.jsp?inc=./views/board/faq/board_faq.jsp'">
          </div>
        </div>
      </div>
    </section>
    </form>
</body>
</html>