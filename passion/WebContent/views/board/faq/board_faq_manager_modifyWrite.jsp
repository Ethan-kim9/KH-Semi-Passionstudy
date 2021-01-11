
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
	int idx = Integer.parseInt(request.getParameter("idx"));

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
            <a href="board_notice"><button class="btn1">공지사항</button></a>
          </li>
          <li>
            <a href="faq.ManagerOrUser"><button class="btn2 on">자주하는 질문</button></a>
          </li>
          <li>
            <a href="member.manager.check.do"><button class="btn3">1:1문의</button></a>
          </li>
        </ul>
      </div>
    </div>

    <section>
      <div id="board">
        <div id="board_main">
          <div id="board_form">
          <form id="board_form_title" action="faq.FAQModify?idx=<%=idx%>" method="post">
             <select
              id="board_select"
              name="faqCategory"
              title="문의선택"
              class="sel"
            >
              <option value="회원문의">회원문의</option>
              <option value="예약문의">예약문의</option>
              <option value="결제문의">결제문의</option>
              <option value="상품문의">상품문의</option>
              <option value="취소문의">취소문의</option>
            </select>
            
              <input
                type="text"
                name="faqTitle"
                class="form-control mt-4 mb-2"
                placeholder="제목을 입력해주세요."
                required
                value="${vo.faqTitle}"
              />
              <div class="form-group">
                <textarea
                  class="form-control"
                  rows="10"
                  name="faqContent"
                  placeholder="내용을 입력해주세요"
                  required
                >${vo.faqContent}</textarea>
              </div>
              <div class="board_write_btn">
                  <input type="submit" value="수정" class="write_btn yb" style="margin:10px 10px 0 20px">
                  <input type="button" value="취소" class="write_btn yb" OnClick="window.location='faq.ManagerOrUser'">
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
  </body>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>