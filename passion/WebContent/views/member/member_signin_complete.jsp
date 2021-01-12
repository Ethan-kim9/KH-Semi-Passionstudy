<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String result = (String)request.getAttribute("result");

String userid = (String)request.getAttribute("memId");
String username = (String)request.getAttribute("memName");

%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
    <link rel="stylesheet" href="resources/CSS/styles.css" />
    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity = "sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
  </head>
<body>
<section class="signin_sction signin_sction7">
	  <div class="signup_wrap">
          <h2 class="title_signup">간편가입</h2>
          <div class="step_wrap">
              <i class="step6_welcome"></i>
              <ul class="signup_step">
                  <li>
                      <div class="join_ly">
                          <h3>WELCOME
                              <br/>
                              POINT
                          </h3>
                          <div class="coupon_dsc">
                              <img class="user_coupon_img" src="https://www.flaticon.com/svg/static/icons/svg/612/612844.svg">
                              <img class="user_coupon_img" src="https://www.flaticon.com/svg/static/icons/svg/612/612844.svg">

                              <p>
                                  + 포인트는 마이페이지 에서 확인하세요.
                              </p>
                          </div>
                          <div class="welcome-message">
            					<div class="youridis">
                					<!-- jsp에서 회원가입한 아이디 db에서 가져오자-->
                					<span>회원님의 아이디는 <b><%= request.getAttribute("memId") %></b>입니다.</span>
					            </div>
					      </div>
                          
                          <div class="login_dsc">
                              <!-- 로그인 화면 링크 -->
                                <div class="login_wrap">  
                                  <button type="button" class="btn btn_me active" onclick="location.href='menu.Login'">로그인 하기</button>
									<button type="button" value="hidden"></button>
                              	  <button type="button" class="btn btn_me active" onclick="location.href='index.jsp'">메인으로 가기</button>
                                </div>
                          </div>
                      </div>
                  </li>
              </ul>
          	</div>
      	</div>
  	</section>
</body>
</html>