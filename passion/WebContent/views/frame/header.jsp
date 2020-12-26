<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <header class="PassionStudy_header">
      <div class="header_inner">
        <div class="logo_img">
          <a href="./index.html">🔥 열정 스터디</a>
        </div>

        <div class="menu_wrapper">
          <nav id="PassionStudy_header_menu">
            <ul id="menu-main" class="menu menu-main">
              <li class="main on">	
              	<a href="index.jsp"><span>메인</span></a>
              </li>
              <li class="roomlist">	
              	<a href="index.jsp?inc=./views/facilities/facilities_rooms.jsp"><span>시설소개</span></a>
              </li>
              <li class="guide">
                <a href="index.jsp?inc=./views/facilities/facilities_extra.jsp"><span>이용안내</span></a>
              </li>
              <li class="reserve">
                <a href="index.jsp?inc=./views/reservation/reservation.jsp"><span>예약/결제</span></a>
              </li>
              <li class="community">
                <a href="index.jsp?inc=./views/board/notice/board_notice.jsp"><span>커뮤니티</span></a>
              </li>
              <li class="mypage">
                <a href="index.jsp?inc=./views/mypage/mypage.jsp"><span>마이페이지</span></a>
              </li>
              <li class="login">
                <a href="index.jsp?inc=./views/member/member_login.jsp"><span>로그인</span></a>
              </li>
              <div class="floting_bar" style="left: 430px"></div>
            </ul>
          </nav>
        </div>
      </div>
    </header>

</body>
</html>