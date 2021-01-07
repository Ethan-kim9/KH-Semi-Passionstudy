<%@ page import="com.passionStudy.passion.member.model.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%

	String contextPath = request.getContextPath();

	MemberVo loginMember 	= (MemberVo)session.getAttribute("loginMember");
%>

<%
/*Member loginMember = (Member)session.getAttribute("loginMember");*/
/* 	
		private int	   memNo;		    // 회원 식별자
		private String memId;			// 회원 아이디
		private String memPwd;			// 회원 비밀번호
		private String memName;			// 회원 이름
		private String memPhone;		// 회원 전화번호
		private Date   memDate;			// 회원 가입일 
		private int    memRecomCount;	// 회원 추천횟수
		private String memStatus;		// 회원 계정상태  B블라인드 N일반 D삭제된계정
		private String memAdAgree;		// 회원 광고동의 여부 Y동의 N비동의
		private String memRecomCode;	// 회원 추천번호 (이메일?)		
		private int    memPoint;		// 회원 포인트
		private String memToken1;		// 네이버 가입토큰
		private String memToken2;		// 카카오 가입토큰
*/
%>        
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
</head>
<body>
    <header class="PassionStudy_header">
      <div class="header_inner">
        <div class="logo_img">
          <a href="<%= contextPath%>">🔥 열정 스터디</a>
        </div>

        <div class="menu_wrapper">
          <nav id="PassionStudy_header_menu">
            <ul id="menu-main" class="menu menu-main">
              <li class="main on">	
              	<a href="<%= contextPath%>"><span>메인</span></a>
              </li>
              <li class="roomlist">	
              	<a href="<%= contextPath%>/menu.facilitiesRooms"><span>시설소개</span></a>
              </li>
              <li class="guide">
              	<a href="<%= contextPath%>/menu.facilitiesExtra"><span>이용안내</span></a>
              </li>
              <li class="reserve">
                <a href="<%= contextPath%>/menu.Reservation"><span>예약/결제</span></a>
              </li>
              <li class="community">
                <a href="<%= contextPath%>/menu.Board"><span>커뮤니티</span></a>
              </li>
			<% if(loginMember == null){ %>
              <li class="login">
          		<a href="<%= contextPath%>/menu.Login"><span>로그인</span></a>
              </li>
          	<% }else{%>
              <% if(loginMember.getAdminCheck().charAt(0)== 'A'){%>
              <li class="mypage">
               <a href="<%= contextPath%>/menu.Manager"><span>관리 페이지</span></a>
              <!-- String managerCheck 관리자 유무(N, Y) 으로 바뀜 -->
            </li>
            <%}else{ %>
          	  <li class="mypage">
                <a href="<%= contextPath%>/menu.MyPage"><span>마이페이지</span></a>
              	<!-- String managerCheck 관리자 유무(N, Y) 으로 바뀜 -->
            	</li>
	<%}%>
            	<li class="login">
          		<a href="<%= contextPath%>/menu.Logout"><span>로그아웃</span></a>
				</li>          
<%}%>
              <!-- 로그인과 로그아웃에 따라 로그인 또는 로그아웃 버튼으로 변함 -->     
              <div class="floting_bar" style="left: 430px"></div>
            </ul>
          </nav>
        </div>
      </div>
    </header>
</body>
<script type="text/javascript">
	

</script>
</html>