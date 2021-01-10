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
    
	<form action="faq.FAQDelete?idx=<%=idx %>" method="post">
    <section>
      <div id="board">
        <div id="board_main">
            
          <table class="table" id="table_title">
            <tr>
              <th>카테고리</th>
              <td>${vo.faqCategory }</td>
              <td></td>
              <td></td>
            </tr>
            <!-- 첫번째 줄 끝-->
            <tr>
              <!-- 두번째 줄 시작-->
              <th>제　목</th>
              <td>${vo.faqTitle }</td>
              <td></td>
              <td></td>
            </tr>
            <!-- 두번째 줄 끝-->
            <tr>
              <th>작성일</th>
              <td>${vo.faqDate }</td>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <th class="content" style="height: 150px">내용</th>
              <td class="content" style="height: 150px">${vo.faqContent }</td>
              <td></td>
              <td></td>
            </tr>
          </table>
          <div id="another_buttons">
              <input type="button" value="수정" class="write_btn yb"  style="float: none; margin:20px 10px 0 270px"  OnClick="window.location='faq.FAQModifyWrite?idx=<%=idx%>'">
              <input type="button" value="삭제" class="write_btn yb" style="float: none" OnClick="window.location='faq.FAQDelete?idx=<%=idx%>'">
          </div>
        </div>
      </div>
    </section>
    </form>
</body>
</html>