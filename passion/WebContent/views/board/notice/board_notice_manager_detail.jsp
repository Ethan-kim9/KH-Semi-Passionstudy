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

    <section>
      <div id="board">
        <div id="board_main">
        <form action="board_notice_manager_detail" method="post">
            <div id="another_buttons" style="padding-bottom:10px; padding-top:20px; text-align:right;">
                <a href="board_notice_manager_modify?nno=${n.nno}" class="write_btn">수정</a>
                <input type="submit" class="remove_btn yb" name="cmd" value="삭제" style="float: none"
                OnClick="window.location='board_notice_manager_detail?'nno=${n.nno}"/>
              </div>
          <table class="table" id="table_title">
            <tr>
              <th>제　목</th>
              <td>${n.ntitle}</td>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <th>작성자</th>
              <td>${n.mno}</td>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <th>작성일</th>
              <td>${n.regdate}</td>
              <th>조회수</th>
              <td><fmt:formatNumber value="${n.ncount}"/></td>
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
            <p style="padding-left:50px;"><!-- 내용content -->
             ${n.ncontent}
            </p>
          </div>
          </form>
        </div>
      </div>
    </section>

</body>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>