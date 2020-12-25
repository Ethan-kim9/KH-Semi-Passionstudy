<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="../../../css/styles.css" />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <title>예약-상세조회</title>
    <script
      src="https://code.jquery.com/jquery-3.5.1.js"
      integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
      crossorigin="anonymous"
    ></script>
    <style>
      .cont_header {
        background: #202020;
        line-height: 7;
      }
      .cont_header .cont_wrapper {
        width: 1200px;
        margin: 0 auto;
        font-family: "Montserrat", Noto Sans KR, sans-serif;
        text-align: center;
        color: #fff;
      }

      /* --------------------------------탭 설정 임의로 변경----------------------------------------- */
      .tabtype {
        /* margin: 50px 0 50px 0; */
        margin: 50px 0 30px 0;
      }
      .tabtype_wrapper {
        width: 1000px;
        margin: 0 auto;
      }
      /*나의정보 ~ 설정 버튼 */
      .tabtype .tabtype_wrapper li {
        display: inline-block;
        width: 24.5%;
      }
      .tabtype .tabtype_wrapper button {
        width: 100%;
        height: 40px;
        /* box-shadow: 0 20px 40px rgba(17, 20, 39, 0.10); */
        background-color: rgb(190, 190, 190);
        border: 0;
        font-weight: 900;
        font-family: "Montserrat", Noto Sans KR, sans-serif;
        cursor: pointer;
        font-size: 20px;
      }
      .tabtype .tabtype_wrapper li a {
        text-decoration: none;
      }
      .tabtype .tabtype_wrapper button:hover {
        background-color: #ffcc00;
        color: white;
      }
      .tabtype button.on {
        background-color: #202020;
        color: #ffffff;
      }

      .section {
        width: 1000px;
        margin: 0 auto;
      }
      .container {
        padding: 0; /*변경 4*/
        margin: 30px 0 50px 0;
      }
      /*------------------------두 번째 탭 감싸는 ul------------------------*/
      .container .container_reservation-management ul {
        margin: 0 0 55px 0; /*변경2*/
      }
      /*-----------------------------두 번째 탭 사이즈 조절하는 코드----------*/
      .container .container_reservation-management li {
        display: inline-block;
        width: 1000px; /*변경1*/
      }
      .container .container_reservation-management button {
        width: 100%;
        height: 35px; /*변경3*/
        border: 0;
        font-weight: 900;
        font-family: "Montserrat", Noto Sans KR, sans-serif;
        cursor: pointer;
        font-size: 15px;
      }
      .container .container_reservation-management li a {
        text-decoration: none;
      }
      .container .container_reservation-management button a {
        color: black;
      }
      .container .container_reservation-management button:hover {
        background-color: #ffcc00;
        color: white;
      }

      /* 부 탭메뉴버튼과 그 아래 버튼에 on 설정 했을 때  */
      .container button.on {
        background-color: #202020;
        color: #ffffff;
      }

      /* --------------------------------스타일 먹이기 시작-------- */
      .reservation-lookup-button {
        background-color: #202020;
        color: #ffffff;
      }

      .reservation-confirm-tool_container {
        display: flex;
        background-color: #eeecec;
        margin: 0 0 55px 0;
      }
      .reservation-confirm-tool_container > div:nth-child(1) {
        flex-basis: 100px;
        /* flex-grow: 1; */
      }
      .reservation-confirm-tool_container > div:nth-child(2) {
        flex-basis: 800px;
        /* flex-grow: 2.5; */
      }
      .reservation-confirm-tool_container > div:nth-child(3) {
        flex-basis: 70px;
        /* flex-grow: 0.5; */
      }
      .reservation-confirm-tool-title {
        text-align: center;
        margin: 33px 0 0 0;
        font-weight: bold;
      }

      .reservation-state_table {
        width: 1000px;
        text-align: center;
        border-collapse: collapse;
      }
      .reservation-state_table th {
        height: 40px;
        background-color: #e4e4e4;
        margin: 30px 0;
        border-top: 1px solid #bbbbbb;
        border-bottom: 1px solid #bbbbbb;
      }
      .reservation-state_table td {
        height: 40px;
        padding: 5px;
        border-bottom: 1px solid #bbbbbb;
        font-weight: bold;
        color: #363636;
      }
      .reservation-state_table td:nth-child(5) {
        width: 90px;
        color: tomato;
      }
      .reservation-state_table img {
        width: 200px;
        height: 160px;
      }
      .reservation-state_table p {
        display: inline;
      }
      .reservation-state_table .table-body-title,
      .table-body-explanation {
        border-bottom: none;
        padding: 0;
        text-align: left;
        font-weight: bold;
        color: #363636;
      }

      .table-check-details-information {
        color: #3a3939;
        width: 80px;
        height: 33px;
        line-height: 32px;
        border: none;
        font-weight: bold;
      }
      /* 주문정보테이블 css */
      .reservation-order-information {
        font-size: 1.5rem;
        height: 50px;
        line-height: 60px;
        margin: 20px 0 10px;
        color: #464545;
      }
      .reservation-order_table {
        width: 1000px;
        text-align: center;
        border-collapse: collapse;
      }

      .reservation-order_table th {
        height: 40px;
        background-color: #e4e4e4;
        margin: 30px 0;
        border-top: 1px solid #bbbbbb;
        border-bottom: 1px solid #bbbbbb;
      }
      .reservation-order_table td {
        height: 40px;
        padding: 5px;
        border-bottom: 1px solid #bbbbbb;
        font-weight: bold;
        color: #363636;
      }
      /* 결제 정보 테이블 css */
      .reservation-payment-information {
        font-size: 1.5rem;
        height: 50px;
        line-height: 60px;
        margin: 20px 0 10px;
        color: #464545;
      }
      .reservation-payment_table {
        width: 1000px;
        text-align: center;
        border-collapse: collapse;
      }

      .reservation-payment_table th {
        height: 40px;
        background-color: #e4e4e4;
        margin: 30px 0;
        border-top: 1px solid #bbbbbb;
        border-bottom: 1px solid #bbbbbb;
      }
      .reservation-payment_table td {
        height: 40px;
        padding: 5px;
        border-bottom: 1px solid #bbbbbb;
        font-weight: bold;
        color: tomato;
      }
      .reservation-payment_table td:nth-child(4),
      .reservation-payment_table td:nth-child(4) p {
        color: #e42706;
      }
      .reservation-payment_table td:nth-child(5) {
        color: #535353;
      }
      .reservation-payment_table p {
        display: inline;
      }
      .reservation-get-point {
        text-align: right;
        background-color: #f1f1f1;
        height: 50px;
        line-height: 50px;
        color: #5f5f5f;
        border-bottom: 1px solid #bbbbbb;
      }
      .reservation-get-point p,
      h4 {
        display: inline;
        font-size: 14px;
      }
      .reservation-get-point span,
      p {
        color: tomato;
      }
      .reservation-get-point span {
        margin: 0 10px 0 0;
      }
      .reservation-management-list {
        width: 125px;
        height: 50px;
        line-height: 50px;
        text-align: center;
        margin: 60px auto;
        background-color: #444444;
        border-radius: 6px;
        cursor: pointer;
      }
      .reservation-management-list .list-button {
        text-decoration: none;
        color: white;
        font-weight: bold;
      }

      /* footer야 제발 정신 좀 차려. 바닥에 붙어 있어라. */
      /* .pc {
          position: absolute;
          bottom: 0;
          width: 100%;
        } */
    </style>
  </head>

  <body>
    <div class="cont_header">
      <div class="cont_wrapper">
        <h1>예약 상세 조회</h1>
      </div>
    </div>

    <section class="section">
      <div class="container">
        <!--------------------------- 예약확인, 취소내역 감싸는 div ----------------------------->
        <div class="container_reservation-management">
          <ul>
            <li>
              <a href="../mypage_reservation.html"
                ><button class="reservation-lookup-button">돌아가기</button>
              </a>
            </li>
          </ul>
        </div>
        <!-- -------------------------------채워 넣어야 할 바디 시작 ------------------------------------->

        <!------------- 예약 보여주는 테이블 만들기------밤샘 각이다~~~신난다 ^_^ ----------->
        <!-- 예약 확인 테이블 (상태: 1.예약, 2.취소, 3.결제) / DB에서 자료 꺼내오기 --------->
        <div class="reservation-state_container">
          <table class="reservation-state_table">
            <thead>
              <tr>
                <th colspan="3" class="table-room">스터디룸명</th>
                <th class="table-date">예약일</th>
                <th class="table-time">이용시간</th>
                <th class="table-price">판매가</th>
                <th class="table-state">진행현황</th>
                <!--상태: 취소인 경우 red;-->
              </tr>
            </thead>
            <tbody>
              <tr>
                <!-- 아현님 img: 6-8_Room01.jpg로 대체할 예정 -->
                <td rowspan="2">
                  <img src="../../../images/rooms/12_Room01.jpg" />
                </td>
                <td colspan="2" class="table-body-title">열정과다</td>
                <td rowspan="2">2020-10-24</td>
                <td rowspan="2">10:00 ~ 15:00</td>
                <td rowspan="2">
                  70,000
                  <p>원</p>
                </td>
                <td rowspan="2" class="table-check-details-information">
                  결제
                </td>
              </tr>
              <tr>
                <td colspan="2" class="table-body-explanation">
                  스페이스(개인실), 허브티 무료
                </td>
              </tr>
            </tbody>
          </table>
        </div>
        <!---------------------------주문 정보 테이블-------------------------------------------------->
        <div class="reservation-order-information">
          <h3 class="reservation-order-information title">주문 정보</h3>
        </div>
        <table class="reservation-order_table">
          <thead>
            <tr>
              <th class="table-order-num">주문번호</th>
              <th class="table-order-date">주문일자</th>
              <th class="table-order-customer">주문자</th>
              <th class="table-order-phone">연락처</th>
              <th class="table-order-email">이메일</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>1234567</td>
              <td>2020-10-12</td>
              <td>강미선</td>
              <td>010-1234-5678</td>
              <td>tired@abc.com</td>
            </tr>
          </tbody>
        </table>
        <!-- -------------------------------결제 정보 테이블-------------------------------------------- -->
        <div class="reservation-payment-information">
          <h3 class="reservation-payment-information title">결제 정보</h3>
        </div>
        <table class="reservation-payment_table">
          <thead>
            <tr>
              <th class="table-payment-price">상품금액</th>
              <th class="table-payment-discount">할인금액</th>
              <th class="table-payment-point">포인트 및 기타결제</th>
              <th class="table-payment-total">총 결제금액</th>
              <th class="table-payment-how">결제 방법</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>
                70,000
                <p>원</p>
              </td>
              <td>
                -5,000
                <p>원</p>
              </td>
              <td>
                -2,500
                <p>원</p>
              </td>
              <td>
                62,500
                <p>원</p>
              </td>
              <td>신용카드</td>
            </tr>
          </tbody>
        </table>
        <div class="reservation-get-point">
          <h4>열정스터디카페 포인트 예상 적립:</h4>
          <span
            >500
            <p>P</p></span
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
</html>