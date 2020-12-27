<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
    <title>예약/결제</title>
    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous" ></script>
    <style>
      .section {
        width: 1000px;
        margin: 0 auto;
      }

      .choose_room,
      .choose_day {
        text-align: center;
        padding-bottom: 10px;
      }

      .result {
        height: 120px;
      }
      /* 테이블분할한 것 */
      .room_img {
        width: 500px;
        height: 480px;
        padding: 0;
      }
      .calender {
        border: 1px solid #d8d8d8;
      }
      .information {
        width: 500px;
        padding-bottom: 30px;
      }
      /* .option {
        width: 500px;
        padding-bottom: 30px;
      } */
      /* .next_button {
        width: 100%;
        height: 100px;
      } */
      /* */

      .container {
        width: 1000px;
        text-align: center;
        border: none;
      }

      .room_img img {
        vertical-align: sub;
      }
      /* 캘린더 css */
      .color_desc {
        margin-left: 20px;
        float: left;
      }
      .color_desc span {
        position: relative;
        padding-left: 22px;
        margin-right: 17px;
        font-size: 14px;
        color: #656565;
        vertical-align: top;
      }
      .color_desc span:before {
        width: 12px;
        height: 12px;
        margin-top: -6px;
        content: "";
        position: absolute;
        left: 0;
        top: 50%;
      }
      .color_desc .color_disable:before {
        background-color: #e5e5e5;
        border: 1px solid #ccc;
      }
      .color_desc .color_today:before {
        background-color: #ffffe6;
        border: 1px solid #ccc;
      }
      .color_desc .color_select:before {
        background-color: #ffcc00;
        border: 1px solid #ccc;
      }
      .calender_payment {
        height: 80px;
      }
      .calender_price {
        font-weight: bold;
        padding: 0 405px 0 0;
      }
      /* */

      .change_price {
        font-weight: bold;
        padding: 0 0 0 390px;
      }
      .content {
        font-size: 14px;
        padding: 15px 15px 0 15px;
        text-align: left;
      }
      .title_box {
        width: 500px;
        height: 45px;
        background-color: #fbfbef;
        padding: 5px 470px 5px 0;
        border: 1px solid #d8d8d8;
      }
      .title_box .title {
        font-weight: bold;
        font-size: 18px;
        /* padding: 0 400px 0 0;
        float: left; */
      }
      .introduce {
        width: 500px;
        height: 400px;
        background-color: #fbfbef;
        padding: 10px 0;
        border: 1px solid #d8d8d8;
      }
      .precautions {
        width: 500px;
        height: 850px;
        background-color: #fbfbef;
        padding: 10px 0;
        border: 1px solid #d8d8d8;
      }
      .option_box_moniter {
        width: 500px;
        height: 320px;
        background-color: #fbfbef;
        padding: 10px 0 20px 0;
        border: 1px solid #d8d8d8;
      }
      .option_box_multi {
        width: 500px;
        height: 380px;
        background-color: #fbfbef;
        padding: 10px 0 20px 0;
        border: 1px solid #d8d8d8;
      }
      .option_box_projecter {
        width: 500px;
        height: 300px;
        background-color: #fbfbef;
        padding: 10px 0 20px 0;
        border: 1px solid #d8d8d8;
      }
      .option_menu_moniter {
        font-weight: bold;
        padding: 0 420px 0 0;
      }
      .option_menu_moniter_price {
        font-weight: bold;
        padding: 0 435px 0 0;
      }
      .option_menu_multi {
        font-weight: bold;
        padding: 0 190px 0 0;
      }
      .option_menu_multi_price,
      .option_menu_projecter_price {
        font-weight: bold;
        padding: 0 405px 0 0;
      }
      .option_menu_projecter {
        font-weight: bold;
        padding: 0 405px 0 0;
      }
      .count {
        width: 90px;
        height: 30px;
        float: right;
        margin: 0 25px 10px 0;
      }

      /* 다음단계 버튼 */
      .next_button button {
        width: 100px;
        height: 40px;
        background-color: black;
        color: white;
        border: 0;
        border-radius: 4px;
        font-weight: 900;
        font-family: "Montserrat", Noto Sans KR, sans-serif;
        cursor: pointer;
        font-size: 15px;
      }
      .next_button button:hover {
        background-color: #ffcc00;
        color: white;
      }
    </style>
  </head>

  <body>
    <div class="cont_header">
      <div class="cont_wrapper">
        <h1>예약 / 결제</h1>
      </div>
    </div>

    <div class="tabtype btn_align_center">
      <div class="tabtype_wrapper">
        <ul>
          <li style="width: 33%;">
            <button class="btn1 on" disabled>예약하기</button>
          </li>
          <li style="width: 33%;">
            <button class="btn2" disabled>예약자 정보입력</button>
          </li>
          <li style="width: 33%;">
            <button class="btn3" disabled>결제하기</button>
          </li>
        </ul>
      </div>
    </div>

    <section class="section">
      <!--jsp로 값 가져와야함-->
      <div class="result">
        <h4 class="choose_room">사용자가 예약하려고 선택한 방</h4>
        <br />
        <h5 class="choose_day">날짜와 시간을 선택하세요.</h5>
        <br />
      </div>
      <table class="container">
        <tr>
          <td class="room_img">
            <img
              src="resources/images/rooms/12_Room01.jpg"
              width="500px"
              height="425px"
            />
          </td>
          <td class="calender" rowspan="2">
            <div id="calender2"></div>
            <div class="color_desc">
              <span class="color_disable">예약불가</span>
              <span class="color_today">오늘</span>
              <span class="color_select">선택</span>
            </div>
            <br />
            <br />
            <div class="calender_payment">
              <h8 class="calender_price">0,000원</h8>
              <br />
              <br />
              <select name="count" class="count">
                <option value="one">1</option>
                <option value="two">2</option>
                <option value="three">3</option>
                <option value="four">4</option>
                <option value="five">5</option>
                <option value="six">6</option>
                <option value="seven">7</option>
                <option value="eight">8</option>
                <option value="nine">9</option>
                <option value="ten">10</option>
                <option value="eleven">11</option>
                <option value="twelve">12</option>
              </select>
            </div>
          </td>
        </tr>
        <tr>
          <td class="information" rowspan="2">
            <br />
            <div class="title_box">
              <h7 class="title">공간 소개</h7>
            </div>

            <div class="introduce">
              <p class="content">
                프로젝터는 4인실 이상부터 이용이 가능하고 32인치 모니터는 예약만
                해주시면 무료로 이용 가능합니다.
                <br />
                추가적인 필수 주문사항 없습니다. 필요하신 대여 장비만 비용 확인
                후 예약해주세요 :)
              </p>
              <p class="content">
                1. 32인치 모니터+HDMI케이블 (무료)
                <br />
                유선랜 PC +키보드+ 마우스 2,000원(1시간 기준) (예약 필수)
                <br />
                2. 화이트보드 +보드마카 (무료)
                <br />
                3. 무선 노트북 1,000원, 프로젝터 2,000원(1시간 기준), 유선랜선
                무료 (예약필수)
                <br />
                4. 복사, 출력 가능 (흑백 면당 100원, 칼라 300원), 스캔과 팩스는
                안됨
                <br />
                5. 주차 2시간 무료, 초과 10분당 500원, 1일주차 1만원
                <br />
                6. 중앙 냉난방 아닌 개별 냉난방으로 각 룸별로 별도 온도 조절
                가능
                <br />
                7. 콘센트 충분 (평균 1인 2개씩 사용 가능)
                <br />
                8. 무료&유료 음료 (유료음료는 원하시는 분만 주문해서 드시면
                됩니다)
              </p>
            </div>

            <div class="title_box">
              <h7 class="title">유의 사항</h7>
            </div>

            <div class="precautions">
              <p class="content">
                스터디룸은 10:00~22:00 사이에 예약 필수
                <br />
                <br />
                1. 스터디룸 예약 변경, 취소는 예약시간 24시간 전까지 가능합니다.
                <br />
                지정 시간 이후 취소시 예치금액 관계없이 요금 100% 계산해주셔야
                합니다. 변경사항은 지정시간 안에 확인하시고 연락주세요 :)
                <br />
                <br />
                2. 최소 예약시간은 2시간이며 예약공간이 공실일 경우 10분 전부터
                입실 가능합니다. 별도 준비 시간이 필요한 경우 준비시간을 포함해
                예약해주세요.
                <br />
                <br />
                3. 별도 대기 공간은 없습니다. 시간 맞춰 와주세요 :)
                <br />
                일찍 오실 경우 1인 스터디카페에서 음료 1잔으로 2시간 무료 또는
                시간당 1,000원으로 공부하며 대기 가능합니다.
                <br />
                <br />
                4. 회의, 강의, 스터디, 세미나 모임을 위한 공간입니다.
                <br />
                대화, 토론, 발표 연습,동영상 시청 등 모두 가능하지만 발성연습,
                단체리딩, 연기연습 , 친목모임 등의 큰 소리가 나거나 웃고
                박수치며 소리지르는 모임은 이용이 제한됩니다. 용도에 맞게
                예약해주세요.
                <br />
                <br />
                5. 회의실 내에서 방송 촬영 가능합니다 :-)
                <br />
                촬영장비로 복도 등 공용 공간을 막아 통행에 불편만 주지 않으시면
                됩니다. 책상, 의자는 스터디룸 외부로 못 꺼냅니다.
                <br />
                사진으로 시설물 배치 상태 확인하시고 예약해주세요 :)
                <br />
                <br />
                6. 얼음, 믹스커피, 녹차, 둥글레 차 등 티백음료 무료. 유료음료는
                원하시는 분만 주문해서 드시면 됩니다. 외부음료와 음식물 반입은
                안됩니다.
                <br />
                <br />
                7. 예약하신 인원과 시간 기준으로 계산됩니다. 변경사항은 안내드린
                지정 시간 안으로 연락주시면 됩니다 :)
                <br />
                <br />
                8. 스터디룸은 월단위 예약이 별도로 없습니다. 시간단위로 예약
                문의해주세요.
                <br />
                <br />
                9. 스터디룸은 예약 우선으로 공실이 있는 경우에 당일 이용
                가능합니다.
                <br />
                <br />
                10. 복사, 출력은 무인과금 시스템으로 현금결제는 안되고 카드
                전용으로 직접 결제 후 이용가능. 교통기능 포함된 신용카드 또는
                티머니로 결제 가능 (교통기능 없는 카드와 삼성 페이는 불가)
              </p>
            </div>
          </td>
        </tr>

        <tr>
          <td class="option">
            <br />
            <div class="title_box">
              <h7 class="title">옵션선택</h7>
            </div>

            <div class="option_box_moniter">
              <h8 class="option_menu_moniter">모니터</h8>
              <p class="content">
                예약만 해주시면 무료로 이용 가능합니다. 예약한 시간과 동일하게
                예약 가능합니다.
                <br />
                수량으로 시간 선택해주세요 :)
                <br />
                (실제 모니터 수량 아닌 이용시간 선택이니 주의해주세요!)
              </p>
              <br />
              <h8 class="option_menu_moniter_price">무료</h8>
              <br />
              <br />
              <select name="count" class="count">
                <option value="one">1</option>
                <option value="two">2</option>
                <option value="three">3</option>
                <option value="four">4</option>
                <option value="five">5</option>
              </select>
              <br />
              <h8 class="change_price">무료</h8>
            </div>

            <div class="option_box_multi">
              <h8 class="option_menu_multi"
                >유선랜 PC + 모니터 + 키보드 + 마우스
              </h8>
              <p class="content">
                스터디룸/회의실 내에 있는 모니터와 PC를 유선랜으로 연결하여
                안정적으로 기가 인터넷 연결해서 이용 가능합니다.
                <br />
                (예약 시 바로 이용 가능하도록 미리 세팅해드립니다.)
                <br />
                <br />
                1시간 2,000원으로 세미나실 예약한 시간과 동일하게 예약
                가능합니다.
                <br />
                수량으로 시간 선택해주세요 :)
                <br />
                (실제 PC 수량 아닌 이용시간 선택이니 주의해주세요!)
              </p>
              <br />
              <h8 class="option_menu_multi_price">2,000원</h8>
              <br />
              <br />
              <select name="count" class="count">
                <option value="one">1</option>
                <option value="two">2</option>
                <option value="three">3</option>
                <option value="four">4</option>
                <option value="five">5</option>
              </select>
              <br />
              <h8 class="change_price">2,000원</h8>
            </div>

            <div class="option_box_projecter">
              <h8 class="option_menu_projecter">프로젝터 </h8>
              <p class="content">
                1시간 2,000원으로 세미나실 예약한 시간과 동일하게 예약
                가능합니다.
                <br />
                수량으로 시간 선택해주세요 :)
                <br />
                (실제 PC 수량 아닌 이용시간 선택이니 주의해주세요!)
              </p>
              <br />
              <h8 class="option_menu_projecter_price">2,000원</h8>
              <br />
              <br />
              <select name="count" class="count">
                <option value="one">1</option>
                <option value="two">2</option>
                <option value="three">3</option>
                <option value="four">4</option>
                <option value="five">5</option>
              </select>
              <br />
              <h8 class="change_price">2,000원</h8>
            </div>
          </td>
        </tr>
        <tr>
          <td colspan="2" class="next_button">
            <a href="index.jsp?inc=./views/reservation/reservation_userinfo.jsp"><button class="next">다음단계</button></a>
          </td>
        </tr>
      </table>
    </section>
  </body>
  <script src="resources/JS/pagesjs/reservation_calender.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>
