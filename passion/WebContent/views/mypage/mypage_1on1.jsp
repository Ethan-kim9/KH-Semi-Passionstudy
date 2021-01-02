<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
      <title>mypage- 1대1 문의</title>
  </head>
  <body>

    <div class="cont_header">
      <div class="cont_wrapper">
        <h1>마이 페이지</h1>
      </div>
    </div>

    <div class="tabtype">
      <div class="tabtype_wrapper mypage_tabtype_wrapper">
          <ul>
            <li>
                <a href="index.jsp?inc=./views/mypage/mypage.jsp"><button class="btn1">나의 정보</button></a>
            </li>
            <li>
                <a href="index.jsp?inc=./views/mypage/mypage_reservation.jsp"><button class="btn2">나의 예약 관리</button></a>
            </li>
            <li>
                <a href="index.jsp?inc=./views/mypage/mypage_1on1.jsp"><button class="btn3 on">나의 활동</button></a>
            </li>
            <li>
              <a href="index.jsp?inc=./views/mypage/mypage_edit.jsp"><button class="btn4">설정</button></a>
          </li>
          </ul>
      </div>
  </div>  

    <!-- 나의 활동 1대1 문의 내역 없을 경우 (DEFAULT)-->
    <section class="mypage-section myQuestion myQuestion_Default">
      <div class="mypage-container">
        <div class="container_mypage-management container_mypage-1on1">
          <ul>
            <li class="mypage-single-menu">
              <button class="first-teb-button on" style="cursor:not-allowed; pointer-events:none;">1:1 문의 내역</button>
            </li>
          </ul>
        </div>
       
        <div class="mypage-inquery-nothing">
          <svg
            id="Capa_1"
            enable-background="new 0 0 551.13 551.13"
            height="120"
            viewBox="0 0 551.13 551.13"
            width="120"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              d="m275.565 0c-151.944 0-275.565 123.621-275.565 275.565s123.621 275.565 275.565 275.565 275.565-123.621 275.565-275.565-123.621-275.565-275.565-275.565zm0 516.685c-132.955 0-241.119-108.164-241.119-241.119s108.164-241.12 241.119-241.12 241.12 108.164 241.12 241.119-108.165 241.12-241.12 241.12z"
            />
            <path d="m258.342 378.902h34.446v34.446h-34.446z" />
            <path d="m258.344 137.783h34.444v206.674h-34.444z" />
          </svg>
          <p>작성하신 문의 내역이 없습니다.</p>
        </div>
        <div class="go-inquery">
          <a href="views/board/1on1/board_1on1.jsp" class="go-inquery_button">
            1:1문의하기
          </a>
        </div>
      </div>
    </section>

    <!-- 나의 활동 1대1 문의 내역 있을 경우 (Form)-->

    <section class="mypage-section myQuestion myQuestion_has_Question">
      <div class="mypage-container">
        <div class="container_mypage-management">
          <ul>
            <li class="mypage-single-menu">
              <button class="first-teb-button on">1:1 문의 내역</button>
            </li>
          </ul>
        </div>
        
        <div class="mypage-inquery">
          <ul>
            <!--li 1개당 답변완료 틀 1개-->
            <li id="12345">
              <!--클릭 했을 때 펼쳐지게 할 것 (+ cursur: pointer;)-->
              <p class="state-complete">
                <strong>답변완료</strong>
                test: 여기엔 1:1 문의 제목이 노출 된다.
                <span class="state-date">2020.12.19</span>
              </p>
              <ul class="expansion">
                <!--사용자가 클릭하지 않는 이상 보이지 않는 블록-->
                <li class="question">
                  <strong>문의</strong>
                  <!-- <ul></ul> -->
                  <p>test: 여기엔 1:1 문의 내용이 노출 된다.</p>
                </li>
                <li class="answer">
                  <strong>
                    답변완료
                    <span class="answer-date">2020.12.20</span>
                  </strong>
                  <p>
                    반갑습니다. 고객님. 열정스터디 카페 담당자 강파이어 입니다.
                    문의하신 내용에 대해 블라블라 답변을 블라블라 디비에서
                    가져온다.
                  </p>
                </li>
              </ul>
            </li>
            <li id="12346"></li>
          </ul>
        </div>

        <div class="go-inquery">
          <a href="views/board/1on1/board_1on1.jsp" class="go-inquery_button">
            1:1문의하기
          </a>
        </div>
      </div>
    </section>

  </body>
  <script src="resources/JS/pagesjs/mypage_1on1_click.js"></script>
</html>
