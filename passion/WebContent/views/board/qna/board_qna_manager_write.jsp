<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
  </head>
  <body>

<%
int idx = Integer.parseInt(request.getParameter("idx"));
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
          <div id="board_form">
            <form id="board_form_title" action="index.jsp?inc=./views/board/qna/answer.jsp?idx=<%=idx %>" method="post">
              <input
                type="text"
                name="answer_title"
                class="form-control mt-4 mb-2"
                placeholder="제목을 입력해주세요."
                required
              />
              <div class="form-group">
                <textarea
                  class="form-control"
                  rows="10"
                  name="answer_content"
                  placeholder="내용을 입력해주세요"
                  required
                ></textarea>
              </div>
              <div class="board_write_btn">
                  <button type="submit" class="write_btn yb">
                    등록하기
                  </button>
                       <input type="button" value="취소" class="write_btn yb" OnClick="window.location='member.manager.check.do'">

              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
  </body>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>