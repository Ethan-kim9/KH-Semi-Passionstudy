<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
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
       padding-top: 0px;
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
       padding: 0 400px 0 0;
     }
     /* */
  
  /* 예약시간 */
     .reservation_time {
     	height: 260px;
     	
     }
     .reservation_time_title{
     	float: left;
     	margin: 10px 400px 10px 25px;
     	font-size: 18px;
     	font-weight: bold;
     }
     .reservation_time_content {
     	height: 110px;
     }
     .reservation_time_content li {
     	float: left;
     	margin-left: 20px;
     	margin-bottom: 10px;
     }
     
     
     .reservation_time input {
     	background-color: black;
    color: white;
    border: 0;
    border-radius: 4px;
    font-weight: 500;
    font-family: "Montserrat", Noto Sans KR, sans-serif;
    cursor: pointer;
     }
     .reservation_time input:hover {
     	background-color: #ffcc00;
 		color: white;
     }
     .time_select {
       width: 120px;
    height: 30px;
    font-size: 14px;
     	margin: 10px 25px 10px 355px;
     }
     
  /*  */
	

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
     .next_button input {
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
     .next_button input:hover {
       background-color: #ffcc00;
       color: white;
     }
     
     .scriptCalendar {
  text-align: center;
  width: 480px;
  height: 450px;
}
.scriptCalendar > thead > tr > td {
  width: 50px;
  height: 50px;
}
.scriptCalendar > thead > tr:first-child > td {
  font-weight: bold;
}
.scriptCalendar > thead > tr:last-child > td {
  background-color: #ffffe6;
}
.scriptCalendar > tbody > tr > td {
  width: 50px;
  height: 50px;
}
      
     
   </style>
<script src="/passion/resources/JS/pagesjs/reservation_change_page.js"></script>

 </head>

 <body>
   <div class="cont_header">
     <div class="cont_wrapper">
       <h1>예약 / 결제</h1>
     </div>
   </div>
<form name='formSqlData' method='post'>
 	<input type='text' id='selectCalendarDate' name='selectCalendarDate' value='${param.selectCalendarDate }'/>
<input type='text' name='userID' value='${param.userID }'/>
<input type='text' name='room_no' value='${param.room_no }'/>
<input type='text' name='firstTimeData' value='${param.firstTimeData }'/>
<input type='text' name='SecondTimeData' value='${param.SscondTimeData }'/>
<input type='text' name='thirdTimeData' value='${param.thirdTimeData }'/>
<input type='text' name='fourthTimeData' value='${param.fourthTimeData }'/>
<input type='text' name='fifthTimeData' value='${param.fifthTimeData }'/>
<input type='text' name='lastTimeData' value='${param.lastTimeData }'/>
<input type='text' name='countUsers' value='${param.countUsers }'/>
<input type='text' name='monitor' value='${param.monitor }'/>
<input type='text' name='computer' value='${param.computer }'/>
<input type='text' name='projector' value='${param.projector }'/>
</form>
   <div class="tabtype btn_align_center">
     <div class="tabtype_wrapper">
       <ul>
         <li style="width: 33%;">
  <button class="btn1 on" disabled>예약하기</button>
</li>
<li style="width: 33%;">
<button class="btn2" style="cursor:not-allowed; background-color: rgb(190, 190, 190); color: black;" disabled>예약자 정보입력</button>
</li>
<li style="width: 33%;">
<button class="btn3" style="cursor:not-allowed; background-color: rgb(190, 190, 190); color: black;" disabled>결제하기</button>
      </li>
    </ul>
  </div>
</div>

<section class="section">
  <div class="result">
    <h4 class="choose_room"> <%=request.getParameter("value") %> </h4>
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
       	<table class="scriptCalendar">
<thead>
	<tr>
		<td onClick="prevCalendar();"
style="cursor: pointer; font-size: 20px">
	&#60;&#60;</td>
<td colspan="5" style="font-size: 28px">
	<span id="calYear">YYYY</span>년
	<span id="calMonth">MM</span>월
</td>
<td onClick="nextCalendar();" style="cursor: pointer">&#62;&#62;</td>
		</tr>
		<tr>
			<td>일</td>
			<td>월</td>
			<td>화</td>
			<td>수</td>
			<td>목</td>
			<td>금</td>
			<td>토</td>
		</tr>
	</thead>
	<tbody>
	</tbody>
</table>
        <div class="color_desc">
          <span class="color_disable">예약불가</span>
          <span class="color_today">오늘</span>
          <span class="color_select">선택</span>
        </div>
        <br />
        <br />
        <div class="reservation_time" id="reservation_time">
          <h8 class="reservation_time_title">예약시간</h8>
          <br />
          <ul class="reservation_time_content">
          	<li class="timetable">
          		<span class="time_title">FirstTime</span><br>
          		<input type='button' id='first_time_btn' class="first_time" value='08:00~10:00'/>
          	</li>
          	<li class="timetable">
          		<span class="time_title">SecondTime</span><br>
          		<input type='button' id='second_time_btn' class="second_time" value='10:00~12:00'/>
          	</li>
          	<li class="timetable">
          		<span class="time_title">ThirdTime</span><br>
          		<input type='button' id='third_time_btn' class="third_time" value='12:00~14:00'/>
          	</li>
          	<li class="timetable">
          		<span class="time_title">BreakTime</span><br>
          		<button class="break_time" style="cursor:not-allowed; background-color: #e5e5e5; color: gray;">14:00~15:00</button>
            	</li>
            	<li class="timetable">
            		<span class="time_title">FourthTime</span><br>
            		<input type='button' id='fourth_time_btn' class="fourth_time" value='15:00~17:00'/>
            	</li>
            	<li class="timetable">
            		<span class="time_title">FifthTime</span><br>
            		<input type='button' id='fifth_time_btn' class="fifth_time" value='17:00~19:00'/>
            	</li>
            	<li class="timetable">
            		<span class="time_title">LastTime</span><br>
            		<input type='button' id='last_time_btn' class="last_time" value='19:00~21:00'/>
            	</li>
            </ul>
            <br />
            <div class="color_desc">
             <span class="color_disable">예약불가</span>
             <span class="color_select">선택</span>
            </div>
            <br />
            <button class="time_select">예약시간 선택</button>
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
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
            </select>
            <br />
            <h8 class="change_price" name="change_price"> 원</h8>
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
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
            </select>
            <br />
            <h8 class="change_price" name="change_price"> 원</h8>
          </div>
        </td>
      </tr>
      <tr>
        <td colspan="2" class="next_button">
        <input type='button' class="next" id='roominfo_to_userinfo' value='다음단계'/>
        </td>
      </tr>
    </table>
  </section>

</body>
<script>reservation_change_page()</script>
<script type="text/javascript">
function getItem() {
	var i = document.getElementByName('count').value;
	var price = prices[i];

	document.getElementByName('change_price').innerHTML = price;
}

/* $(".scriptCalendar tr td").click(function (event){
	$(".reservation_time").toggle();
}); */

document.addEventListener("DOMContentLoaded", function () {
    buildCalendar();
	document.getElementById("selectCalendarDate").value = today.getFullYear()+autoLeftPad(today.getMonth() + 1,2) + autoLeftPad(date.getDate(),2);
  });
  var today = new Date(); // @param 전역 변수, 오늘 날짜 / 내 컴퓨터 로컬을 기준으로 today에 Date 객체를 넣어줌
  var date = new Date(); // @param 전역 변수, today의 Date를 세어주는 역할
  /**
   * @brief   이전달 버튼 클릭
   */
  function prevCalendar() {
    this.today = new Date(
      today.getFullYear(),
      today.getMonth() - 1,
      today.getDate()
    );
    buildCalendar(); // @param 전월 캘린더 출력 요청
  }
  /**
   * @brief   다음달 버튼 클릭
   */
  function nextCalendar() {
    this.today = new Date(
      today.getFullYear(),
      today.getMonth() + 1,
      today.getDate()
    );
    buildCalendar(); // @param 명월 캘린더 출력 요청
  }
  /**
   * @brief   캘린더 오픈
   * @details 날짜 값을 받아 캘린더 폼을 생성하고, 날짜값을 채워넣는다.
   */
  function buildCalendar() {
    let doMonth = new Date(today.getFullYear(), today.getMonth(), 1);
    let lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0);
    let tbCalendar = document.querySelector(".scriptCalendar > tbody");
    document.getElementById("calYear").innerText = today.getFullYear(); // @param YYYY월
    document.getElementById("calMonth").innerText = autoLeftPad(
      today.getMonth() + 1,
      2
    ); // @param MM월
    // @details 이전 캘린더의 출력결과가 남아있다면, 이전 캘린더를 삭제한다.
    while (tbCalendar.rows.length > 0) {
      tbCalendar.deleteRow(tbCalendar.rows.length - 1);
    }
    // @param 첫번째 개행
    let row = tbCalendar.insertRow();
    // @param 날짜가 표기될 열의 증가값
    let dom = 1;
    // @details 시작일의 요일값( doMonth.getDay() ) + 해당월의 전체일( lastDate.getDate())을  더해준 값에서
    //               7로 나눈값을 올림( Math.ceil() )하고 다시 시작일의 요일값( doMonth.getDay() )을 빼준다.
    let daysLength =
      Math.ceil((doMonth.getDay() + lastDate.getDate()) / 7) * 7 -
      doMonth.getDay();
    // @param 달력 출력
    // @details 시작값은 1일을 직접 지정하고 요일값( doMonth.getDay() )를 빼서 마이너스( - )로 for문을 시작한다.
    for (let day = 1 - doMonth.getDay(); daysLength >= day; day++) {
      let column = row.insertCell();
      // @param 평일( 전월일과 익월일의 데이터 제외 )
      if (Math.sign(day) == 1 && lastDate.getDate() >= day) {
        // @param 평일 날짜 데이터 삽입
        column.innerText = autoLeftPad(day, 2);
        // @param 일요일인 경우
        if (dom % 7 == 1) {
          column.style.color = "#FF4D4D";
        }
        // @param 토요일인 경우
        if (dom % 7 == 0) {
          column.style.color = "#4D4DFF";
          row = tbCalendar.insertRow(); // @param 토요일이 지나면 다시 가로 행을 한줄 추가한다.
        }
      }
      // @param 평일 전월일과 익월일의 데이터 날짜변경
      else {
        let exceptDay = new Date(
          doMonth.getFullYear(),
          doMonth.getMonth(),
          day
        );
        column.innerText = autoLeftPad(exceptDay.getDate(), 2);
        column.style.color = "#A9A9A9";
      }
      // @brief   전월, 명월 음영처리
      // @details 현재년과 선택 년도가 같은경우
      if (today.getFullYear() == date.getFullYear()) {
        // @details 현재월과 선택월이 같은경우
        if (today.getMonth() == date.getMonth()) {
          // @details 현재일보다 이전인 경우이면서 현재월에 포함되는 일인경우
          if (date.getDate() > day && Math.sign(day) == 1) {
            column.style.backgroundColor = "#E5E5E5";
            column.style.color = "#A9A9A9";
          }

          // @details 현재일보다 이후이면서 현재월에 포함되는 일인경우
          //else if (date.getDate() < day && lastDate.getDate() >= day) {
          // @details 현재일보다 이후이면서 2주 뒤를 포함되는 일인경우
          else if (date.getDate() < day && date.getDate()+21 >= day) {
            column.style.backgroundColor = "#FFFFFF";
            column.style.cursor = "pointer";
            column.onclick = function () {
              calendarChoiceDay(this);
            };
          }

		  // @details 현재일의 2주 뒤 이후이면서 현재월을 포함되는 일인경우
		  else if (date.getDate()+14 < day && lastDate.getDate() >= day) {
            column.style.backgroundColor = "#E5E5E5";
            column.style.color = "#A9A9A9";
          }	

          // @details 현재일인 경우
          else if (date.getDate() == day) {
            column.style.backgroundColor = "#FFFFE6";
            column.style.cursor = "pointer";
            column.onclick = function () {
              calendarChoiceDay(this);
            };
          }
          // @details 현재월보다 이전인경우
        } else if (today.getMonth() < date.getMonth()) {
          if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
            column.style.backgroundColor = "#E5E5E5";
            column.style.color = "#A9A9A9";
          }
        }
        // @details 현재월보다 이후인경우
        else {
          if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
            column.style.backgroundColor = "#FFFFFF";
            column.style.cursor = "pointer";
            column.onclick = function () {
              calendarChoiceDay(this);
            };
            column.style.backgroundColor = "#E5E5E5";
            column.style.color = "#A9A9A9";
          }
        }
      }
      // @details 선택한년도가 현재년도보다 작은경우
      else if (today.getFullYear() < date.getFullYear()) {
        if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
          column.style.backgroundColor = "#E5E5E5";
          column.style.color = "#A9A9A9";
        }
      }
      // @details 선택한년도가 현재년도보다 큰경우
      else {
        if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
          column.style.backgroundColor = "#FFFFFF";
          column.style.cursor = "pointer";
          column.onclick = function () {
            calendarChoiceDay(this);
          };
        }
      }
      dom++;
    }
  }
  /**
   * @brief   날짜 선택
   * @details 사용자가 선택한 날짜에 체크표시를 남긴다.
   */
  function calendarChoiceDay(column) {
    // @param 기존 선택일이 존재하는 경우 기존 선택일의 표시형식을 초기화 한다.
	document.getElementById("selectCalendarDate").value = today.getFullYear()+autoLeftPad(today.getMonth() + 1,2) + column.innerText;
    if (document.getElementsByClassName("choiceDay")[0]) {
      document.getElementsByClassName(
        "choiceDay"
      )[0].style.backgroundColor = "#FFFFFF";
      document
        .getElementsByClassName("choiceDay")[0]
        .classList.remove("choiceDay");
    }
    // @param 선택일 체크 표시
    column.style.backgroundColor = "#ffcc00";
    // @param 선택일 클래스명 변경
    column.classList.add("choiceDay");
  }
  /**
   * @brief   숫자 두자릿수( 00 ) 변경
   * @details 자릿수가 한지라인 ( 1, 2, 3등 )의 값을 10, 11, 12등과 같은 두자리수 형식으로 맞추기위해 0을 붙인다.
   * @param   num     앞에 0을 붙일 숫자 값
   * @param   digit   글자의 자릿수를 지정 ( 2자릿수인 경우 00, 3자릿수인 경우 000 … )
   */
  function autoLeftPad(num, digit) {
    if (String(num).length < digit) {
      num = new Array(digit - String(num).length + 1).join("0") + num;
    }
    return num;
  }
 </script>
  <script src="resources/JS/pagesjs/reservationclick_button.js"></script>
  <script src="resources/JS/pagesjs/reservation_room_click.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>