<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      <div id="board">
        <div id="board_main">
          <div id="board_form">
          	<form name="form">
            <select
              id="board_select"
              name="board_select"
              title="문의선택"
              class="sel"
              onChange="getSelectValue(this.form);"
            >
              <option value="member_inquiry">회원문의</option>
              <option value="reservation_inquiry">예약문의</option>
              <option value="payment_inquiry">결제문의</option>
              <option value="product_inquiry">상품문의</option>
              <option value="cancel_inquiry">취소문의</option>
            </select>
            <input type="text" name="textValue" />
            </form>
            <form id="board_form_title" action="index.jsp?inc=./views/board/faq/insert.jsp" method="post">
              <input
                type="text"
                name="faq_title"
                class="form-control mt-4 mb-2"
                placeholder="제목을 입력해주세요."
                required
              />
              <div class="form-group">
                <textarea
                  class="form-control"
                  rows="10"
                  name="faq_content"
                  placeholder="내용을 입력해주세요"
                  required
                ></textarea>
              </div>
              <div class="board_write_btn">
                <a href="notice.html">
                  <button type="submit" class="write_btn yb">
                    등록하기
                  </button></a>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
  </body>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script>
	function getSelectValue(frm) {
		frm.textValue.value = frm.board_select.options[frm.board_select.selectedIndex].text;
	}
  </script>
</html>