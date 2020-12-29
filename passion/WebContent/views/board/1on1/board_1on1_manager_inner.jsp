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
            <a href="../Notice/board_notice.html"
              ><button class="btn1">공지사항</button></a
            >
          </li>
          <li>
            <a href="board_faq.html"
              ><button class="btn2">자주하는 질문</button></a
            >
          </li>
          <li>
            <a href="../1on1/board_1on1.html"
              ><button class="btn3 on">1:1문의</button></a
            >
          </li>
        </ul>
      </div>
    </div>

    <section>
      <div id="board">
        <div id="board_main">
            <div id="another_buttons">
                <button type="button" class="modify_btn yb" style="float: none">
                수정
                </button>           
                <button type="button" class="remove_btn yb" style="float: none">
                  삭제
                </button>
              </div>
          <table class="table" id="table_title">
            <tr>
              <th>제　목</th>
              <td>안녕하세요 고객님, 답변드립니다.</td>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <!-- 첫번째 줄 시작-->
              <th>작성자</th>
              <td>관리자</td>
              <td></td>
              <td></td>
            </tr>
            <!-- 첫번째 줄 끝-->
            <tr>
              <!-- 두번째 줄 시작-->
              <th>작성일</th>
              <td>2020.12.25</td>
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
              전체 예약문의는 010-****-****로 연락부탁드립니다.
            </p>
          </div>
          </table>
        </div>
      </div>
    </section>

</body>
</html>