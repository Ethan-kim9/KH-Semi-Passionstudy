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
              ><button class="btn1 on">공지사항</button></a
            >
          </li>
          <li>
            <a href="board_faq.html"
              ><button class="btn2">자주하는 질문</button></a
            >
          </li>
          <li>
            <a href="../1on1/board_1on1.html"
              ><button class="btn3">1:1문의</button></a
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
              <td>개인정보처리방침 개정 내용 사전안내</td>
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
              <th>조회수</th>
              <td>123</td>
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
              일부 서비스에서는 특화된 여러 기능들을 제공하기 위해 ‘카카오계정’에서 공통으로 수집하는 정보 이외에 이용자에게 동의를 받고
추가적인 개인정보를 수집할 수 있습니다.<br/>
필수정보란? : 해당 서비스의 본질적 기능을 수행하기 위한 정보<br/>
선택정보란? : 보다 특화된 서비스를 제공하기 위해 추가 수집하는 정보 <br/>
(선택 정보를 입력하지 않은 경우에도 서비스 이용 제한은 없습니다.)
            </p>
          </div>
        </div>
      </div>
    </section>

</body>
</html>