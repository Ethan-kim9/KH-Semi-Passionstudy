

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	int idx = Integer.parseInt(request.getParameter("idx"));
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
<form action="qna_delete.do?idx=<%=idx %>" method="post">
    <section>
      <div id="board">
        <div id="board_main">
            <div id="another_buttons">
                <input type="button" value="수정" class="write_btn yb" style="float: none" OnClick="window.location='qna.modify.detail.do?idx=<%=idx %>'">
                <input type="button" value="삭제" class="write_btn yb" style="float: none" OnClick="window.location='qna_delete.do?idx=<%=idx %>'">
              </div>
          <table class="table" id="table_title">
            <tr>
            <tr>
              <th>제　목</th>
              <td>${qnaVo.qnaTitle }</td>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <!-- 첫번째 줄 시작-->
              <th>작성자</th>
              <td>${qnaVo.qnaWriter }</td>
              <td></td>
              <td></td>
            </tr>
            <!-- 첫번째 줄 끝-->
            <tr>
              <!-- 두번째 줄 시작-->
              <th>작성일</th>
              <td>${qnaVo.qnaDate }</td>
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
             ${qnaVo.qnaContent }
            </p>
          </div>

          <table>

            

            <tr>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
            </tr>

          </table>
        </div>
      </div>
    </section>
</form>

</body>
</html>