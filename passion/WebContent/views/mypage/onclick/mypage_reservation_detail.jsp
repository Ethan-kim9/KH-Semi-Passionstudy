<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="../../../resources/CSS/styles.css" />
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
  </head>

  <body>
    <section class="mypage-section mypage-reservation-secion-pop">
      <div class="mypage-container">
        <div class="container_mypage-management">
          <ul>
            <li class="mypage-single-menu">
              <a href="../mypage_reservation.jsp"
                ><button class="reservation-back-button on">돌아가기</button>
              </a>
            </li>
          </ul>
        </div>
        
        <div class="reservation-state_container">
          <table class="reservation-state_table">
            <thead>
              <tr>
                <th colspan="3" class="table-room">스터디룸명</th>
                <th class="table-date">예약일</th>
                <th class="table-time">이용시간</th>
                <th class="table-price">판매가</th>
                <th class="table-state">진행현황</th>
              </tr>
            </thead>
            <tbody>
              <tr>
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
                <td rowspan="2" class="table-check-state-information">
                  결제
                </td> <!--결제 / 취소 (취소인 경우 red)-->
              </tr>
              <tr>
                <td colspan="2" class="table-body-explanation">
                  스페이스(개인실), 허브티 무료
                </td>
              </tr>
            </tbody>
          </table>
        </div>
        
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
          <span>
            500
            <p>P</p>
          </span>
        </div>
      </div>
    </section>
  <script src="../../../resources/JS/menubar.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  </body>
</html>