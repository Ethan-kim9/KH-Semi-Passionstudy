<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="../../CSS/styles.css" />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    />

    <title>mypage-메인페이지</title>
    <script
      src="https://code.jquery.com/jquery-3.5.1.js"
      integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
      crossorigin="anonymous"
    ></script>
  </head>

  <body>
    <header class="PassionStudy_header">
      <div class="header_inner">
        <div class="logo_img">
          <a href="">🔥 열정 스터디</a>
        </div>

        <div class="menu_wrapper">
          <nav id="PassionStudy_header_menu">
            <ul id="menu-main" class="menu menu-main">
              <li class="main">
                <a href="../index.html"><span>메인</span></a>
              </li>
              <li class="roomlist">
                <a href="../Facilities/facility_lounge.html"
                  ><span>시설소개</span></a
                >
              </li>
              <li class="guide">
                <a href="../Facilities/facility_cafe.html"
                  ><span>이용안내</span></a
                >
              </li>
              <li class="reserve">
                <a href="../reservation/reservation.html"
                  ><span>예약/결제</span></a
                >
              </li>
              <li class="community">
                <a href="../board/Notice/board_notice.html"
                  ><span>커뮤니티</span></a
                >
              </li>
              <li class="mypage on">
                <a href="manager_memberpage.html"><span>마이페이지</span></a>
                <!-- 자바스크립트를 통해, 관리자가 로그인일 경우에만 tag를 바꿔줘야하는 부분-->
              </li>
              <li class="login">
                <a href=""><span>로그아웃</span></a>
                <!--로그인으로 되어있으므로 로그아웃 처리해줘야한다.-->
              </li>
              <div class="floting_bar" style="left: 400px"></div>
            </ul>
          </nav>
        </div>
      </div>
    </header>

    <div class="cont_header">
      <div class="cont_wrapper">
        <h1>마이 페이지</h1>
      </div>
    </div>

    <div class="tabtype">
      <div class="tabtype_wrapper mypage_tabtype_wrapper">
        <ul>
          <li>
            <a href="mypage.html"><button class="btn1">나의 정보</button></a>
          </li>
          <li>
            <a href="mypage_reservation.html"
              ><button class="btn2">나의 예약 관리</button></a
            >
          </li>
          <li>
            <a href="mypage_1on1.html"
              ><button class="btn3 on">나의 활동</button></a
            >
          </li>
          <li>
            <a href="mypage_edit.html"><button class="btn4">설정</button></a>
          </li>
        </ul>
      </div>
    </div>

    <!-- 나의 활동 1대1 문의 내역 없을 경우 (DEFAULT)-->
    <section class="section myQuestion myQuestion_Default">
      <div class="container">
        <div class="container_mypage-management">
          <ul>
            <li>
              <button class="first-teb-button on">1:1 문의 내역</button>
            </li>
          </ul>
        </div>
        <!---------------------- 날짜 선택 하는 폼 시작------------- -->
        <div class="reservation-confirm-tool_container">
          <div class="reservation-confirm-tool-title">구매 기간</div>
          <div class="reservation-confirm-tool-period">
            <div class="selected-month">
              <!-- 달 선택 -->
              <button class="on" type="button">1개월</button>
              <button type="button">3개월</button>
              <button type="button">6개월</button>
              <button type="button">12개월</button>
            </div>
            <div class="selected-ymd">
              <select id="selected-ymd-year">
                <option value="2016">2016</option>
                <option value="2017">2017</option>
                <option value="2018">2018</option>
                <option value="2019">2019</option>
                <option value="2020" selected="selected">2020</option>
              </select>
              <label for="selected-ymd-year">년</label>

              <select id="selected-ymd-month">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
                <option value="11" selected="selected">11</option>
                <option value="12">12</option>
              </select>
              <label for="selected-ymd-month">월</label>

              <select id="selected-ymd-day">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10" selected="selected">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
                <option value="17">17</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
                <option value="20">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
                <option value="26">26</option>
                <option value="27">27</option>
                <option value="28">28</option>
                <option value="29">29</option>
                <option value="30">30</option>
                <option value="31">31</option>
              </select>
              <label for="selected-ymd">일</label>

              <span class="until">~</span>

              <select id="selected-ymd-end-year">
                <option value="2016">2016</option>
                <option value="2017">2017</option>
                <option value="2018">2018</option>
                <option value="2019">2019</option>
                <option value="2020" selected="selected">2020</option>
              </select>
              <label for="selected-ymd-end-year">년</label>

              <select id="selected-ymd-end-month">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12" selected="selected">12</option>
              </select>
              <label for="selected-ymd-end-month">월</label>

              <select id="selected-ymd-end-day">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10" selected="selected">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
                <option value="17">17</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
                <option value="20">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
                <option value="26">26</option>
                <option value="27">27</option>
                <option value="28">28</option>
                <option value="29">29</option>
                <option value="30">30</option>
                <option value="31">31</option>
              </select>
              <label for="selected-ymd-end-day">일</label>
            </div>
          </div>
          <div class="reservation-confirm-tool-lookup">조회</div>
        </div>
        <!---------------------- 날짜 선택 하는 폼 완료------------- -->
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
      </div>
    </section>

    <!-- 나의 활동 1대1 문의 내역 있을 경우 (Form)-->

    <section class="section myQuestion myQuestion_has_Question">
      <div class="container">
        <div class="container_mypage-management">
          <ul>
            <li>
              <button class="first-teb-button on">1:1 문의 내역</button>
            </li>
          </ul>
        </div>
        <!---------------------- 날짜 선택 하는 폼 시작------------- -->
        <div class="reservation-confirm-tool_container">
          <div class="reservation-confirm-tool-title">구매 기간</div>
          <div class="reservation-confirm-tool-period">
            <div class="selected-month">
              <!-- 달 선택 -->
              <button class="on" type="button">1개월</button>
              <button type="button">3개월</button>
              <button type="button">6개월</button>
              <button type="button">12개월</button>
            </div>
            <div class="selected-ymd">
              <select id="selected-ymd-year">
                <option value="2016">2016</option>
                <option value="2017">2017</option>
                <option value="2018">2018</option>
                <option value="2019">2019</option>
                <option value="2020" selected="selected">2020</option>
              </select>
              <label for="selected-ymd-year">년</label>

              <select id="selected-ymd-month">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
                <option value="11" selected="selected">11</option>
                <option value="12">12</option>
              </select>
              <label for="selected-ymd-month">월</label>

              <select id="selected-ymd-day">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10" selected="selected">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
                <option value="17">17</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
                <option value="20">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
                <option value="26">26</option>
                <option value="27">27</option>
                <option value="28">28</option>
                <option value="29">29</option>
                <option value="30">30</option>
                <option value="31">31</option>
              </select>
              <label for="selected-ymd">일</label>

              <span class="until">~</span>

              <select id="selected-ymd-end-year">
                <option value="2016">2016</option>
                <option value="2017">2017</option>
                <option value="2018">2018</option>
                <option value="2019">2019</option>
                <option value="2020" selected="selected">2020</option>
              </select>
              <label for="selected-ymd-end-year">년</label>

              <select id="selected-ymd-end-month">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12" selected="selected">12</option>
              </select>
              <label for="selected-ymd-end-month">월</label>

              <select id="selected-ymd-end-day">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10" selected="selected">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
                <option value="17">17</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
                <option value="20">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
                <option value="26">26</option>
                <option value="27">27</option>
                <option value="28">28</option>
                <option value="29">29</option>
                <option value="30">30</option>
                <option value="31">31</option>
              </select>
              <label for="selected-ymd-end-day">일</label>
            </div>
          </div>
          <div class="reservation-confirm-tool-lookup">조회</div>
        </div>
        <!---------------------- 날짜 선택 하는 폼 완료------------- -->

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
          <a href="민진님1:1문의페이지.html" class="go-inquery_button"
            >1:1문의하기</a
          >
        </div>
      </div>
    </section>

    <footer class="pc">
      <div class="wrapper">
        <div class="left-section">
          <div>
            <span class="normal">상호명 :</span>
            <span class="bold">열정스터디</span>
            <span class="divide">|</span>
            <span class="normal">대표 :</span>
            <span class="bold">최주영</span>
            <span class="dovide">|</span>
            <span class="normal">Tel :</span>
            <span class="bold">010-****-****</span>
          </div>
          <div>
            <span class="normal">사업자등록번호 :</span>
            <span class="bold">123-45-67890</span>
            <span class="divide">|</span>
            <span class="normal">통신판매업 신고번호 :</span>
            <span class="bold">제 2017-서울종로-0105호</span>
          </div>
          <div>
            <span class="normal">개인정보관리처리자 :</span>
            <span class="bold">최주빵</span>
            <span class="divide">|</span>
            <span class="normal">Email</span>
            <span class="bold">wndud0159@naver.com</span>
          </div>
          <div>
            <span class="normal">직업정보제공사업 신고번호 :</span>
            <span class="bold">서울청 제2017-1호</span>
          </div>
          <div>
            <span class="normal">Address :</span>
            <span class="bold address"
              >서울특별시 영등포구 선유동2로 57 이레빌딩(구관) 19F
              열정스터디</span
            >
          </div>
          <div>
            <p>.</p>
            <p>.</p>
          </div>
          <div>
            <span class="copyright"
              >copyright 2019 PASSIONSTUDY. ALL Rights Reserved.</span
            >
          </div>
        </div>

        <div class="right-section">
          <ul class="menu">
            <li class="product">
              <a href="">Space</a>
              <ul class="sub-depth">
                <li>
                  <a href="">여기</a>
                </li>
                <li>
                  <a href="">에</a>
                </li>
              </ul>
            </li>

            <li>
              <a href="">Mentoring</a>
              <ul class="sub-depth">
                <li>
                  <a href="">무</a>
                </li>
                <li>
                  <a href="">엇</a>
                </li>
                <li>
                  <a href="">을</a>
                </li>
                <li>
                  <a href="">?</a>
                </li>
              </ul>
            </li>

            <li>
              <a href="">Connect</a>
              <ul class="sub-depth">
                <li>
                  <a href="">넣</a>
                </li>
                <li>
                  <a href="">을</a>
                </li>
                <li>
                  <a href="">까</a>
                </li>
                <li>
                  <a href="">요</a>
                </li>
              </ul>
            </li>
          </ul>

          <div class="family_site">
            <select class="passionstudy_site">
              <option>Passion Family</option>
              <option value="">강미선, 김민진</option>
              <option value="">김종구, 정우혁</option>
              <option value="">차예진, 최주영, 한아현</option>
            </select>
          </div>
        </div>
      </div>
    </footer>
  </body>
  <script src="../../JS/pagesjs/mypage_1on1_click.js"></script>
  <script src="../../JS/menubar.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>