<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <a href="../Notice/board_notice.html"><button class="btn1 on">공지사항</button></a>
          </li>
          <li>
            <a href="board_faq.html"><button class="btn2">자주하는 질문</button></a>
          </li>
          <li>
            <a href="../1on1/board_1on1.html"><button class="btn3">1:1문의</button></a>
          </li>
        </ul>
      </div>
    </div>

    <section>
      <div id="board">
        <div id="board_main">
          <table class="table" id="table_title">
            <tr>
              <th>제　목</th>
              <td>${n.nTitle}</td>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <!-- 첫번째 줄 시작-->
              <th>작성자</th>
              <td>${n.nWriter}</td>
              <td></td>
              <td></td>
            </tr>
            <!-- 첫번째 줄 끝-->
            <tr>
              <!-- 두번째 줄 시작-->
              <th>작성일</th>
              <td><fmt:formatDate pattern="yyyy-MM-dd" value="${n.nDate}"/></td>
              <th>조회수</th>
              <td><fmt:formatNumber value="${n.nHit}"/></td>
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
            ${n.nContent}
            </p>
          </div>
        </div>
      </div>
    </section>

</body>
</html>
