<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
    <link rel="stylesheet" href="../../css/styles.css" />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <script
      src="https://code.jquery.com/jquery-3.5.1.js"
      integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <!-- 헤더 -->

    <header class="PassionStudy_header">
      <div class="header_inner">
        <div class="logo_img">
          <a href="./index.html">🔥 열정 스터디</a>
        </div>

        <div class="menu_wrapper">
          <nav id="PassionStudy_header_menu">
            <ul id="menu-main" class="menu menu-main">
              <li class="main">
                <a href="../index.html"><span>메인</span></a>
              </li>
              <li class="roomlist">
                <a href="facilities_rooms.html"><span>시설소개</span></a>
              </li>
              <li class="guide">
                <a href="facilities_extra.html"><span>이용안내</span></a>
              </li>
              <li class="reserve">
                <a href="../reservation/reservation.html"
                  ><span>예약/결제</span></a
                >
              </li>
              <li class="community">
                <a href=""><span>커뮤니티</span></a>
              </li>
              <li class="mypage">
                <a href=""><span>마이페이지</span></a>
              </li>
              <li class="login on">
                <a href=""><span>로그인</span></a>
              </li>
              <div class="floting_bar" style="left: 400px"></div>
            </ul>
          </nav>
        </div>
      </div>
    </header>


    <!-- 로그인 -->
    <section>
      <div class="login_wrap">
        <form class="form_wrap_signup">
          <h2 class="member_title">로그인</h2>
          <div class="login_box">
            <form class="login_main">
              <div class="inpbx">
                <input
                  type="text"
                  id="userid"
                  formcontrolname="userid"
                  placeholder="아이디 (이메일)"
                  autocorrect="off"
                  autocapitalize="none"
                  class="login_main"
                />
              </div>
              <div class="inpbx">
                <input
                  type="password"
                  id="userpwd"
                  formcontrolname="userpwd"
                  placeholder="비밀번호"
                  class="login_main"
                />
              </div>
              <button type="submit" class="btn_login">로그인하기</button>
            </form>

            <div class="sns_login">
              <h3>다른 방법으로 로그인하기</h3>
              <div class="sns_btn">
                <ruler-social-login-naver titletext="네이버로 로그인하기">
                  <div
                    id="naverIdLogin"
                    style="display: none"
                    class="image-inserted"
                  >
                    <a id="naverIdLogin_loginButton" href="#">
                      <img
                        src="https://static.nid.naver.com/oauth/big w.PNG?version=js-2.0.0"
                        height="50"
                      />
                    </a>
                  </div>
                  <div class="container image-inserted">
                    <button class="button_naverLogin">
                      네이버로 로그인하기
                    </button>
                  </div>
                </ruler-social-login-naver>
                <ruler-sicial-login-kakao titletext="카카오로 로그인하기">
                  <div class="container image-inserted">
                    <button class="button_kakaoLogin">
                      카카오로 로그인하기
                    </button>
                  </div>
                </ruler-sicial-login-kakao>
              </div>
            </div>
            <a href="./member_signin.html" class="member_go"
              >계정이 없으신가요? 간편가입하기</a
            >
            <ul class="linkarea">
              <li><a href="./member_find.html">아이디 (이메일) 찾기</a></li>
              <li><a href="./member_find.html">비밀번호 찾기</a></li>
            </ul>
          </div>
        </form>
      </div>
    </section>

    <!-- 푸터 -->
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
    <script src="../../JS/menubar.js"></script>
  </body>
</html>
