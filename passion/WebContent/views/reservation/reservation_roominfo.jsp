<%@page import="com.passionStudy.passion.reservation.model.vo.ProductVo"%>
<%@page import="com.passionStudy.passion.reservation.model.vo.RoomVo"%>
<%@ page import="com.passionStudy.passion.member.model.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
	RoomVo roomData = (RoomVo)request.getAttribute("rv");

	System.out.println(roomData.toString());

%>
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

.choose_room, .choose_day {
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
	padding-top: 20px;
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
	margin: 10px 0 0 25px;
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

.reservation_time_title {
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

.reservation_time .time_button {
	background-color: black;
	color: white;
	border: 0;
	border-radius: 4px;
	font-weight: 500;
	font-family: "Montserrat", Noto Sans KR, sans-serif;
	cursor: pointer;
}

.reservation_time .time_button:hover {
	background-color: #ffcc00;
	color: white;
}

.reservation_time .time_button_checked {
	background-color: black;
	color: white;
	border: 0;
	border-radius: 4px;
	font-weight: 500;
	font-family: "Montserrat", Noto Sans KR, sans-serif;
	background-color: #ffcc00;
	cursor: pointer;
}

.reservation_time .time_button_checked:hover {
	background-color: gray;
	color: white;
}

.reservation_time .break_time {
	cursor: not-allowed;
	background-color: #e5e5e5;
	color: gray;
}

.reservation_time .break_time:hover {
	background-color: #ff0000;
	color: white;
}

.time_select {
	width: 120px;
	height: 30px;
	font-size: 14px;
	margin: 10px 25px 10px 355px;
	background-color: black;
	color: white;
	border: 0;
	border-radius: 4px;
	font-weight: 500;
	font-family: "Montserrat", Noto Sans KR, sans-serif;
	cursor: pointer;
}

.time_select:hover {
	background-color: #ffcc00;
	color: white;
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

.option_menu_multi_price, .option_menu_projecter_price {
	font-weight: bold;
	padding: 0 370px 0 0;
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
.next_button .roominfo_to_userinfo {
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

.next_button .roominfo_to_userinfo:hover {
	background-color: #ffcc00;
	color: white;
}

.next_button .roominfo_to_userinfo_cancel {
	width: 100px;
	height: 40px;
	background-color: #e5e5e5;
	color: gray;
	border: 0;
	border-radius: 4px;
	font-weight: 900;
	font-family: "Montserrat", Noto Sans KR, sans-serif;
	cursor: not-allowed;
	font-size: 15px;
}

.next_button .roominfo_to_userinfo_cancel:hover {
	background-color: #ff0000;
	color: white;
}

.scriptCalendar {
	text-align: center;
	width: 480px;
	height: 450px;
	margin: 0;
}

.scriptCalendar>thead>tr>td {
	width: 50px;
	height: 50px;
}

.scriptCalendar>thead>tr:first-child>td {
	font-weight: bold;
}

.scriptCalendar>thead>tr:last-child>td {
	background-color: #ffffe6;
}

.scriptCalendar>tbody>tr>td {
	width: 50px;
	height: 50px;
}

</style>
<script src="resources/JS/pagesjs/reservation_click_button.js"></script>
<script src="resources/JS/pagesjs/reservation_room_click.js"></script>
<script src="resources/JS/pagesjs/reservation_change_page.js"></script>
<script src="resources/JS/calendar.js"></script>
<%
	String tel_first = null;
	String tel_second = null;
	String tel_third = null;
	String email_id = null;
	String email_dns = null;
	if (loginMember == null) {
	} 
	if (loginMember != null){
		String pNumber = loginMember.getMemPhone();
		tel_first = pNumber.substring(0, 3);
		tel_second = pNumber.substring(3, 7);
		tel_third = pNumber.substring(7, 11);

		String mid = loginMember.getMemId();

		String mid_cut[] = mid.split("@");
		if (mid_cut != null && mid_cut.length >= 2) {
		email_id = mid_cut[0];
		email_dns = mid_cut[1];
		}
	}
%>
</head>
<%
	if (loginMember == null) {
%>
<script>
	alert('로그인 후 이용 가능한 컨텐츠입니다.');
	location.href = 'index.jsp';
</script>
<%
	}
%>
<body>
	<div class="cont_header">
		<div class="cont_wrapper">
			<h1>예약 / 결제</h1>
		</div>
	</div>
	<form name='formSqlData' method='post'>

	</form>
	<div class="tabtype btn_align_center">
		<div class="tabtype_wrapper">
			<ul>
				<li style="width: 33%;">
					<button class="btn1 on" disabled>예약하기</button>
				</li>
				<li style="width: 33%;">
					<button class="btn2"
						style="cursor: not-allowed; background-color: rgb(190, 190, 190); color: black;"
						disabled>예약자 정보입력</button>
				</li>
				<li style="width: 33%;">
					<button class="btn3"
						style="cursor: not-allowed; background-color: rgb(190, 190, 190); color: black;"
						disabled>결제하기</button>
				</li>
			</ul>
		</div>
	</div>

	<section class="section">
		<form name='formSqlData' method='post' action="index.jsp?inc=./views/reservation/reservation_userinfo.jsp">
		<div class="result">
			<h4 class="choose_room">
			<%if(roomData != null) { %>
				<%=roomData.getRoomName()%>
			<%} %>
			</h4>
			<br />
			<h5 class="choose_day">날짜와 시간을 선택하세요.</h5>
			<br />
		</div>
		<table class="container">
			<tr>
				<td class="room_img"><img
					src="resources/images/rooms/12_Room01.jpg" width="500px"
					height="425px" /></td>
				<td class="calender" rowspan="2" style="vertical-align: top;">
					<table class="scriptCalendar">
						<thead>
							<tr>
								<td onClick="prevCalendar();"
									style="cursor: pointer; font-size: 20px">&#60;&#60;</td>
								<td colspan="5" style="font-size: 28px"><span id="calYear">YYYY</span>년
									<span id="calMonth">MM</span>월</td>
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
								<input type='button' id='first_time_btn' class="time_button" value='08:00~10:00' />
							</li>
							<li class="timetable">
								<span class="time_title">SecondTime</span><br>
								<input type='button' id='second_time_btn' class="time_button" value='10:00~12:00' />
							</li>
							<li class="timetable">
								<span class="time_title">ThirdTime</span><br>
								<input type='button' id='third_time_btn' class="time_button" value='12:00~14:00' />
							</li>
							<li class="timetable">
								<span class="time_title">BreakTime</span><br>
								<input type='button' class="time_button break_time" value='14:00~15:00'>
							</li>
							<li class="timetable">
								<span class="time_title">FourthTime</span><br>
								<input type='button' id='fourth_time_btn' class="time_button" value='15:00~17:00' />
							</li>
							<li class="timetable">
								<span class="time_title">FifthTime</span><br>
								<input type='button' id='fifth_time_btn' class="time_button" value='17:00~19:00' />
							</li>
							<li class="timetable">
								<span class="time_title">LastTime</span><br>
								<input type='button' id='last_time_btn' class="time_button" value='19:00~21:00' />
							</li>
						</ul>
						<br />
						<div class="color_desc">
							<span class="color_disable">예약불가</span> <span
								class="color_select">선택</span>
						</div>
						<br />
					</div>
					<br />
					<div class="calender_payment">
						<input type="text" id='total_use_time' name='total_use_time' style="width: 120px; background-color:transparent; border:0 solid black; text-align:right;" value='0' readonly disabled />원
						<br />
						<br />
							<select id='countUsers' name='countUsers' class="count">
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
								<option value="12">12</option>
							</select>
					</div>
					<br>
				</td>
			</tr>
			<tr>
				<td class="information" rowspan="2"><br />
					<div class="title_box">
						<h7 class="title">공간 소개</h7>
					</div>

					<div class="introduce">
						<p class="content">
							프로젝터는 4인실 이상부터 이용이 가능하고 32인치 모니터는 예약만 해주시면 무료로 이용 가능합니다. <br />
							추가적인 필수 주문사항 없습니다. 필요하신 대여 장비만 비용 확인 후 예약해주세요 :)
						</p>
						<p class="content">
							1. 32인치 모니터+HDMI케이블 (무료) <br /> 유선랜 PC +키보드+ 마우스 2,000원(1시간 기준)
							(예약 필수) <br /> 2. 화이트보드 +보드마카 (무료) <br /> 3. 무선 노트북 1,000원,
							프로젝터 2,000원(1시간 기준), 유선랜선 무료 (예약필수) <br /> 4. 복사, 출력 가능 (흑백 면당
							100원, 칼라 300원), 스캔과 팩스는 안됨 <br /> 5. 주차 2시간 무료, 초과 10분당 500원,
							1일주차 1만원 <br /> 6. 중앙 냉난방 아닌 개별 냉난방으로 각 룸별로 별도 온도 조절 가능 <br />
							7. 콘센트 충분 (평균 1인 2개씩 사용 가능) <br /> 8. 무료&유료 음료 (유료음료는 원하시는 분만
							주문해서 드시면 됩니다)
						</p>
					</div>

					<div class="title_box">
						<h7 class="title">유의 사항</h7>
					</div>

					<div class="precautions">
						<p class="content">
							스터디룸은 10:00~22:00 사이에 예약 필수 <br /> <br /> 1. 스터디룸 예약 변경, 취소는
							예약시간 24시간 전까지 가능합니다. <br /> 지정 시간 이후 취소시 예치금액 관계없이 요금 100%
							계산해주셔야 합니다. 변경사항은 지정시간 안에 확인하시고 연락주세요 :) <br /> <br /> 2. 최소
							예약시간은 2시간이며 예약공간이 공실일 경우 10분 전부터 입실 가능합니다. 별도 준비 시간이 필요한 경우 준비시간을
							포함해 예약해주세요. <br /> <br /> 3. 별도 대기 공간은 없습니다. 시간 맞춰 와주세요 :) <br />
							일찍 오실 경우 1인 스터디카페에서 음료 1잔으로 2시간 무료 또는 시간당 1,000원으로 공부하며 대기 가능합니다.
							<br /> <br /> 4. 회의, 강의, 스터디, 세미나 모임을 위한 공간입니다. <br /> 대화, 토론,
							발표 연습,동영상 시청 등 모두 가능하지만 발성연습, 단체리딩, 연기연습 , 친목모임 등의 큰 소리가 나거나 웃고
							박수치며 소리지르는 모임은 이용이 제한됩니다. 용도에 맞게 예약해주세요. <br /> <br /> 5. 회의실
							내에서 방송 촬영 가능합니다 :-) <br /> 촬영장비로 복도 등 공용 공간을 막아 통행에 불편만 주지 않으시면
							됩니다. 책상, 의자는 스터디룸 외부로 못 꺼냅니다. <br /> 사진으로 시설물 배치 상태 확인하시고 예약해주세요
							:) <br /> <br /> 6. 얼음, 믹스커피, 녹차, 둥글레 차 등 티백음료 무료. 유료음료는 원하시는
							분만 주문해서 드시면 됩니다. 외부음료와 음식물 반입은 안됩니다. <br /> <br /> 7. 예약하신 인원과
							시간 기준으로 계산됩니다. 변경사항은 안내드린 지정 시간 안으로 연락주시면 됩니다 :) <br /> <br />
							8. 스터디룸은 월단위 예약이 별도로 없습니다. 시간단위로 예약 문의해주세요. <br /> <br /> 9.
							스터디룸은 예약 우선으로 공실이 있는 경우에 당일 이용 가능합니다. <br /> <br /> 10. 복사, 출력은
							무인과금 시스템으로 현금결제는 안되고 카드 전용으로 직접 결제 후 이용가능. 교통기능 포함된 신용카드 또는 티머니로
							결제 가능 (교통기능 없는 카드와 삼성 페이는 불가)
						</p>
					</div></td>
			</tr>

			<tr>
				<td class="option"><br />
					<div class="title_box">
						<h7 class="title">옵션선택</h7>
					</div>

					<div class="option_box_moniter">
						<h8 class="option_menu_moniter">모니터</h8>
						<p class="content">
							예약만 해주시면 무료로 이용 가능합니다. 예약한 시간과 동일하게 예약 가능합니다. <br /> 수량으로 시간
							선택해주세요 :) <br /> (실제 모니터 수량 아닌 이용시간 선택이니 주의해주세요!)
						</p>
						<br />
						<h8 class="option_menu_moniter_price">무료</h8>
						<br /> <br />

							<select id='monitor' name='monitor' class="count">
								<option value="0">0</option>
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
								<option value="12">12</option>
							</select>
						<br />
					</div>

					<div class="option_box_multi">
						<h8 class="option_menu_multi">유선랜 PC + 모니터 + 키보드 + 마우스 </h8>
						<p class="content">
							스터디룸/회의실 내에 있는 모니터와 PC를 유선랜으로 연결하여 안정적으로 기가 인터넷 연결해서 이용 가능합니다. <br />
							(예약 시 바로 이용 가능하도록 미리 세팅해드립니다.) <br /> <br /> 1시간 2,000원으로 세미나실
							예약한 시간과 동일하게 예약 가능합니다. <br /> 수량으로 시간 선택해주세요 :) <br /> (실제 PC
							수량 아닌 이용시간 선택이니 주의해주세요!)
						</p>
						<br />
						<p class="option_menu_multi_price">시간당 2,000원</p>
						<br /> <br />

							<select id='computer' name='computer' class="count" onchange="changeComputer(this.value)">
								<option value="0">0</option>
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
								<option value="12">12</option>
							</select>
						<br />
					</div>

					<div class="option_box_projecter">
						<h8 class="option_menu_projecter">프로젝터 </h8>
						<p class="content">
							1시간 2,000원으로 세미나실 예약한 시간과 동일하게 예약 가능합니다. <br /> 수량으로 시간 선택해주세요
							:) <br /> (실제 PC 수량 아닌 이용시간 선택이니 주의해주세요!)
						</p>
						<br />
						<h8 class="option_menu_projecter_price">시간당 2,000원</h8>
						<br /> <br />

							<select id='projector' name='projector' class="count">
								<option value="0">0</option>
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
								<option value="12">12</option>
							</select>

						<br />
					</div></td>
			</tr>
			<tr>
				<td colspan="2" class="next_button">
				<input type='submit' class="roominfo_to_userinfo" id='roominfo_to_userinfo' value='다음단계' disabled="disabled"/>
				</td>
			</tr>
			</table>
			<input type='text' id='selectCalendarDate' name='selectCalendarDate' value='${param.selectCalendarDate }'/>
			<input type='text' id='firstTimeData' name='firstTimeData' value='${param.firstTimeData }' />
			<input type='text' id='secondTimeData' name='secondTimeData' value='${param.secondTimeData }' />
			<input type='text' id='thirdTimeData' name='thirdTimeData' value='${param.thirdTimeData }' />
			<input type='text' id='fourthTimeData' name='fourthTimeData' value='${param.fourthTimeData }' />
			<input type='text' id='fifthTimeData' name='fifthTimeData' value='${param.fifthTimeData }' />
			<input type='text' id='lastTimeData' name='lastTimeData' value='${param.lastTimeData }' />
			<input type='text' id='total_time' name='total_time' value='${param.total_time }' />
			<input type='text' id='member_no' name='member_no' value=<%if(loginMember != null) { %><%= loginMember.getMemNo() %><%} %> />
			<input type='text' id='reservationName' name='reservationName' value=<%if(loginMember != null) { %><%= loginMember.getMemName() %><%} %> />
			<input type='text' id='tel_first' name='tel_first' value=<%= tel_first %> />
			<input type='text' id='tel_second' name='tel_second' value=<%= tel_second %> />
			<input type='text' id='tel_third' name='tel_third' value=<%= tel_third %> />
			<input type='text' id='email_id' name='email_id' value=<%= email_id %> />
			<input type='text' id='email_dns' name='email_dns' value=<%= email_dns %> />
			<input type='text' id='room_no' name='room_no' value='${param.room_no }' />
			<input type='text' id='roomName' name='roomName' value='<%if(roomData != null) { %><%=roomData.getRoomName()%><%} %>' />
			<input type='text' id='roomMin' name='roomMin' value='<%if(roomData != null) { %><%=roomData.getRoomCapMin()%><%} %>' />
			<input type='text' id='roomMax' name='roomMax' value='<%if(roomData != null) { %><%=roomData.getRoomCapMax()%><%} %>' />
			<input type='text' id='roomPrice' name='roomPrice' value='<%if(roomData != null) { %><%=roomData.getRoomPrice()%><%} %>' />
			<input type='text' id='memPoint' name='memPoint' value='<%if(loginMember != null) { %><%=loginMember.getMemPoint()%><%} %>' />
			
		</form>
	</section>
</body>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>