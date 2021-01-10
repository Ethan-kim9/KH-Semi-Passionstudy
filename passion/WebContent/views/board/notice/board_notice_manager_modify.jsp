<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
          <div id="board_form">
            <form id="board_form_title" action="board_notice_manager_modify?nno=${n.nno}" method="post">
              <input
                type="text"
                name="title"
                class="form-control mt-4 mb-2"
                required
              	value="${n.ntitle}"
              />
				
              <div class="form-group">
                <textarea
                  class="form-control"
                  rows="10"
                  name="content"
                  required
                >${n.ncontent }</textarea>
              </div>
              <div class="board_write_btn">
                <input type="submit" class="write_btn yb" value="수정"/>
                <a href="board_notice_manager" class="remove_btn yb">취소</a>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>

  </body>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>
