<%@page import="com.passionStudy.passion.member.model.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
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

    <div class="tabtype btn_align_center">
      <div class="tabtype_wrapper">
        <ul>
          <li style="width: 33%;"><button class="btn1 on" disabled>예약하기</button></li>
          <li style="width: 33%;"><button class="btn2" style="cursor:not-allowed; background-color: rgb(190, 190, 190); color: black;" disabled>예약자 정보입력</button></li>
          <li style="width: 33%;"><button class="btn3" style="cursor:not-allowed; background-color: rgb(190, 190, 190); color: black;" disabled>결제하기</button></li>
        </ul>
      </div>
    </div>
    
    <div class="btn_align_center">
      <div class="container">
        <div class="container_room">
          <ul>
            <li><button class="room_1 on">3~5인실</button></li>
            <li><button class="room_2">4~6인실</button></li>
            <li><button class="room_3">6~8인실</button></li>
            <li><button class="room_4">12인실</button></li>
          </ul>
        </div>
      </div>
    </div>

    <!-- 3인실 -->
    <section class="section room_section room_section1">
      <div class="container">
        <div class="container_room_img">
          <ul>
            <li>
              <img src="resources/images/rooms/3-5_Room01.jpeg" width="299px" height="300px"/>
            </li>
            <li>
              <img src="resources/images/rooms/3-5_Room02.jpg" width="299px" height="300px" />
            </li>
            <li>
              <img src="resources/images/rooms/3-5_Room03.jpeg" width="299px" height="300px" />
            </li>
          </ul>
        </div>
        <div class="container_room_button">
          <ul>
            <li class="first_room">
              <a href="index.jsp?inc=./views/facilities/facilities_rooms.jsp"><button class="facilities_introduction">시설소개</button></a>
            </li>
            <li>
            	<form method='post' action="reservation.room">
            		<input type='hidden' id='room_no' name='room_no' value='1'/>
            		<button>예약하기</button>
            	</form>
            </li>
            <li class="second_room">
              <a href="index.jsp?inc=./views/facilities/facilities_rooms.jsp"><button class="facilities_introduction">시설소개</button></a>
            </li>
            <li>
            	<form method='post' action="reservation.room">
            		<input type='hidden' id='room_no' name='room_no' value='2'/>
            		<button>예약하기</button>
            	</form>
            </li>
            <li class="third_room">
              <a href="index.jsp?inc=./views/facilities/facilities_rooms.jsp"><button class="facilities_introduction">시설소개</button></a>
            </li>
            <li>
            	<form method='post' action="reservation.room">
            		<input type='hidden' id='room_no' name='room_no' value='3'/>
            		<button>예약하기</button>
            	</form>
            </li>
          </ul>
        </div>
      </div>
    </section>

    <!-- 6인실 -->
    <section class="section room_section room_section2">
      <div class="container">
        <div class="container_room_img">
          <ul>
            <li>
              <img src="resources/images/rooms/4-6_Room01.jpeg" width="457px" height="300px" />
            </li>
            <li>
              <img src="resources/images/rooms/4-6_Room02.jpeg" width="457px" height="300px" />
            </li>
          </ul>
        </div>
        <div class="container_room_button">
          <ul>
            <span class="for_space1"></span>
            <li>
              <a href="index.jsp?inc=./views/facilities/facilities_rooms.jsp"><button class="facilities_introduction">시설소개</button></a>
            </li>
            <li>
            	<form method='post' action="reservation.room">
            		<input type='hidden' id='room_no' name='room_no' value='4'/>
            		<button>예약하기</button>
            	</form>
            </li>
            <span class="for_space2"></span>
            <li class="second_room">
              <a href="index.jsp?inc=./views/facilities/facilities_rooms.jsp"><button class="facilities_introduction">시설소개</button></a>
            </li>
            <li>
            	<form method='post' action="reservation.room">
            		<input type='hidden' id='room_no' name='room_no' value='5'/>
            		<button>예약하기</button>
            	</form>
            </li>
          </ul>
        </div>
      </div>
    </section>

    <!-- 8인실 -->
    <section class="section room_section room_section3">
      <div class="container">
        <div class="container_room_img">
          <ul>
            <li>
              <img src="resources/images/rooms/6-8_Room01.jpg" width="457px" height="300px" />
            </li>
            <li>
              <img src="resources/images/rooms/6-8_Room02.jpeg" width="457px" height="300px" />
            </li>
          </ul>
        </div>
        <div class="container_room_button">
          <ul>
            <span class="for_space1"></span>
            <li>
              <a href="index.jsp?inc=./views/facilities/facilities_rooms.jsp"><button class="facilities_introduction">시설소개</button></a>
            </li>
            <li>
            	<form method='post' action="reservation.room">
            		<input type='hidden' id='room_no' name='room_no' value='6'/>
            		<button>예약하기</button>
            	</form>
            </li>
            <span class="for_space2"></span>
            <li class="second_room">
              <a href="index.jsp?inc=./views/facilities/facilities_rooms.jsp"><button class="facilities_introduction">시설소개</button></a>
            </li>
            <li>
            	<form method='post' action="reservation.room">
            		<input type='hidden' id='room_no' name='room_no' value='7'/>
            		<button>예약하기</button>
            	</form>
            </li>
          </ul>
        </div>
      </div>
    </section>

    <!-- 12인실 -->

    <section class="section room_section room_section4">
      <div class="container">
        <div class="container_room_img">
          <ul>
            <li>
              <img
                src="resources/images/rooms/12_Room01.jpg"
                width="457px"
                height="300px"
              />
            </li>
            <li>
              <img
                src="resources/images/rooms/12_Room02.jpeg"
                width="457px"
                height="300px"
              />
            </li>
          </ul>
        </div>
        <div class="container_room_button">
          <ul>
            <span class="for_space1"></span>
            <li>
              <a href="index.jsp?inc=./views/facilities/facilities_rooms.jsp"><button class="facilities_introduction">시설소개</button></a>
            </li>
            <li>
            	<form method='post' action="reservation.room">
            		<input type='hidden' id='room_no' name='room_no' value='8'/>
            		<button>예약하기</button>
            	</form>
            </li>
            <span class="for_space2"></span>
            <li class="second_room">
              <a href="index.jsp?inc=./views/facilities/facilities_rooms.jsp"><button class="facilities_introduction">시설소개</button></a>
            </li>
            <li>
            	<form method='post' action="reservation.room">
            		<input type='hidden' id='room_no' name='room_no' value='9'/>
            		<button>예약하기</button>
            	</form>
            </li>
          </ul>
        </div>
      </div>
    </section>
  </body>
  <script src="resources/JS/pagesjs/reservation_room_click.js"></script>
  <!-- <script type="text/javascript">
 	$(function () {
 		$(".room_3-5_reservation").click(function (){
			$(".container_room_button").load("reservation_roominfo.jsp",{value:"3~5인실"});
 	 	});	
 	});
  </script> -->
</html>