<%@page import="com.passionStudy.passion.member.model.vo.MemberVo"%>
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
    </div>

    <section>
      <div id="board">
        <div id="board_main">
          <div id="board_form">
            <form id="board_form_title" action="qna.write.do" method="post">
              <select
              id="board_select"
              name="qna_category"
              title="문의선택"
              class="sel"
            >
              <option value="미선택" style="padding-top">선택해주세요</option>
              <option value="회원문의">회원문의</option>
              <option value="예약문의">예약문의</option>
              <option value="결제문의">결제문의</option>
              <option value="상품문의">상품문의</option>
              <option value="취소문의">취소문의</option>
            </select>
              <input
                type="text"
                name="qna_title"
                class="form-control mt-4 mb-2"
                placeholder="제목을 입력해주세요."
                required
              />
              <div class="form-group">
                <textarea
                  class="form-control"
                  rows="10"
                  name="qna_content"
                  placeholder="내용을 입력해주세요"
                  required
                ></textarea>
              </div>
              <div class="board_write_btn">
                  <button type="submit" name="qna_writer" value="qna_writer" class="write_btn yb">
               등록
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