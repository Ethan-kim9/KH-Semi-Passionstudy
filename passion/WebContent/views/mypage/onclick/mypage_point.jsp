<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
      <link rel = "stylesheet" href="../../../CSS/styles.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
      <title>내 포인트</title>
      <script src="https://code.jquery.com/jquery-3.5.1.js" 
      integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
      crossorigin="anonymous"></script>
  </head>

  <body>
    <section class="mypage-section">
      <div class="mypage-container">
        <div class="container_mypage-management">
          <ul>
            <li class="mypage-single-menu">
              <a href="my_point.html"><button class="first-teb-button on">내 포인트</button></a>
            </li>
          </ul>
        </div>

        <div class="mypage-point">
          <ul class="mypage-mypoint-total">
            <li class="available-point">
              <strong>
                사용가능한 포인트
                <span class="point-amount">5000 P</span>
              </strong>
            </li>
          </ul>
          <div class="point-list-intro">
            <p>포인트 내역</p>
          </div>
          <div class="point-list-container">
            <div class="point-state">사용</div>
            <div class="point-detail">
              <ul>
                <li class="point-payment-date">2020.11.25</li>
                <li class="point-payment">결제 시 사용</li>
                <li class="room-type-title">[스튜디오]열정만수르방~</li>
              </ul>
            </div>
            <div class="point-minus">-1,234P</div>
          </div>

          <div class="point-list-container plus-container">
            <div class="point-state state-plus">적립</div>
            <div class="point-detail">
              <ul>
                <li class="point-payment-date">2020.09.05</li>
                <li class="point-payment">추천인 적립</li>
                <li class="room-type-title">추천인 적립 포인트 ~~~</li>
              </ul>
            </div>
            <div class="point-plus">+5,000P</div>
          </div>

        </div>
        
      </div>
    </section>

  </body>
</html>