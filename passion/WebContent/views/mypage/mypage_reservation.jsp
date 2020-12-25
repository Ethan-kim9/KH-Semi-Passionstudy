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

    <title>mypage-예약관리</title>
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
              ><button class="btn2 on">나의 예약 관리</button></a
            >
          </li>
          <li>
            <a href="mypage_1on1.html"
              ><button class="btn3">나의 활동</button></a
            >
          </li>
          <li>
            <a href="mypage_edit.html"><button class="btn4">설정</button></a>
          </li>
        </ul>
      </div>
    </div>

    <!-- 예약확인, 취소내역 감싸는 div -->
    <section class="mypage-section">
      <div class="mypage-container">
        <!-- 예약확인, 취소내역 감싸는 div -->
        <div class="container_reservation-management">
          <ul>
            <li>
              <button class="reservation_btn1 on">예약 확인</button>
            </li>
            <li>
              <button class="reservation_btn2">취소 내역</button>
            </li>
          </ul>
        </div>
      </div>
    </section>

    <!-- 예약 확인-->
    <section class="section mypage_reservation mypage_reservation1">
      <div class="mypage-container">
        <div class="reservation-state_container">
          <table class="reservation-state_table">
            <thead>
              <tr>
                <th class="table-num">번호</th>
                <th class="table-room">스터디룸명</th>
                <th class="table-type">스터디룸 타입</th>
                <th class="table-date">예약일</th>
                <th class="table-time">이용시간</th>
                <th class="table-state">상태</th>
                <th class="table-lookup">조회</th>
                <!--상태: 취소인 경우 red;-->
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>타오르는 열정</td>
                <td>단체실</td>
                <td>2020-12-10</td>
                <td>16:00 ~ 20:00</td>
                <td>예약</td>
                <td>
                  <button
                    class="table-check-details-information"
                    type="button"
                    onclick="location.href='onclick/mypage_reservation_detail.html'"
                  >
                    상세조회
                  </button>
                </td>
              </tr>
            </tbody>
          </table>

          <div class="reservation-management-pages-count">
            <div>
              <span class="button-prev"><</span>
            </div>
            <ul>
              <li><a class="page-number" href="#">1</a></li>
            </ul>
            <div>
              <span class="button-next">></span>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- 예약 취소-->
    <section class="section mypage_reservation mypage_reservation2">
      <div class="container">
        <!-- 채워 넣어야 할 바디 시작 -->
        <!---------------------- 날짜 선택 하는 폼 완료------------- -->
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

        <!------------- 취소 내역 테이블 : '상태: 취소'만 노출 ------------------->
        <div class="reservation-state_container">
          <table class="reservation-state_table">
            <thead>
              <tr>
                <th class="table-num">번호</th>
                <th class="table-room">스터디룸명</th>
                <th class="table-type">스터디룸 타입</th>
                <th class="table-date">예약일</th>
                <th class="table-time">취소일</th>
                <!--예약 확인과 달라진 탭메뉴-->
                <th class="table-state">상태</th>
                <th class="table-lookup">조회</th>
                <!--상태: 취소인 경우 red;-->
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>열정만수르</td>
                <td>단체실</td>
                <td>2020-12-10</td>
                <td>2020-11-02</td>
                <td class="reservation-state-cancel">취소</td>
                <td>
                  <button
                    class="table-check-details-information"
                    type="button"
                    onclick="location.href='onclick/mypage_reservation_detail.html'"
                  >
                    상세조회
                  </button>
                </td>
              </tr>
            </tbody>
          </table>

          <div class="reservation-management-pages-count">
            <div>
              <span class="button-prev"><</span>
            </div>
            <ul>
              <li><a class="page-number" href="#">1</a></li>
            </ul>
            <div>
              <span class="button-next">></span>
            </div>
          </div>
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
  <script src="../../JS/pagesjs/mypage_reservation_click.js"></script>
  <script src="../../JS/menubar.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>
