<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
      <link rel = "stylesheet" href="../../CSS/styles.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

      <title>mypage-메인페이지</title>
      <script src="https://code.jquery.com/jquery-3.5.1.js" 
      integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
      crossorigin="anonymous"></script>
  </head>

  <body>
    <header class="PassionStudy_header">
      <div class="header_inner">
        <div class="logo_img">
          <a href="">🔥 열정 스터디</a>
        </div>

        <div class="menu_wrapper">
          <nav id="PassionStudy_header_menu">
            <ul id="menu-main" class="menu menu-main">
              <li class="main">
                <a href="../index.html"><span>메인</span></a>
              </li>
              <li class="roomlist">
                <a href="../Facilities/facility_lounge.html"
                  ><span>시설소개</span></a
                >
              </li>
              <li class="guide">
                <a href="../Facilities/facility_cafe.html"
                  ><span>이용안내</span></a
                >
              </li>
              <li class="reserve">
                <a href="../reservation/reservation.html"
                  ><span>예약/결제</span></a
                >
              </li>
              <li class="community">
                <a href="../board/Notice/board_notice.html"><span>커뮤니티</span></a>
              </li>
              <li class="mypage on">
                <a href="manager_memberpage.html"><span>마이페이지</span></a>
                <!-- 자바스크립트를 통해, 관리자가 로그인일 경우에만 tag를 바꿔줘야하는 부분-->
              </li>
              <li class="login">
                <a href=""><span>로그아웃</span></a>
                <!--로그인으로 되어있으므로 로그아웃 처리해줘야한다.-->
              </li>
              <div class="floting_bar" style="left: 400px"></div>
            </ul>
          </nav>
        </div>
      </div>
    </header>

    <div class="cont_header">
      <div class="cont_wrapper">
        <h1>마이 페이지</h1>
      </div>
    </div>

    <div class="tabtype">
      <div class="tabtype_wrapper mypage_tabtype_wrapper">
        <ul>
          <li>
            <a href="mypage.html"><button class="btn1">나의 정보</button></a>
          </li>
          <li>
            <a href="mypage_reservation.html"
              ><button class="btn2">나의 예약 관리</button></a
            >
          </li>
          <li>
            <a href="mypage_1on1.html"
              ><button class="btn3">나의 활동</button></a
            >
          </li>
          <li>
            <a href="my_inform_edit.html"
              ><button class="btn4 on">설정</button></a
            >
          </li>
        </ul>
      </div>
    </div>

    <!-- 회원 정보수정 -->
    <section class="section">
      <div class="container">
        <!-- 예약확인, 취소내역 감싸는 div -->
        <div class="container_reservation-management edit_btns">
          <ul>
            <li>
                <button class="edit-button1 on">회원정보 수정 </button>
            </li>
            <li>
                <button class="edit-button2">비밀번호 변경 </button>
            </li>
          </ul>
        </div>
    </section>


    <!-- 회원 정보 수정 -->
    <section class="member-edit-section member-edit-section1 member_info_edit">
        <div class="edit-user-info">
          <div class="edit-user-header">
            <div class="edit-user-header_title">회원정보수정</div>
            <a class="edit-user-header_withdrawal" href="onclick/mypage_withdrawal.html"
              >탈퇴하기</a
            >
          </div>

          <form class="edit-user-set" action="#" method="POST" name="form-tag">
            <div class="edit-user-form">
              <label class="edit-user-form_name">이름</label>
              <input class="edit-user-form_name-text" type="text" />
            </div>
            <div class="edit-user-form">
              <label class="edit-user-form_email">이메일</label>
              <input class="edit-user-form_email-text1" type="text" /> @
              <input class="edit-user-form_email-text2" type="text" />
            </div>
            <div class="edit-user-form">
              <label class="edit-user-form_phone">휴대폰번호</label>
              <input class="edit-user-form_phone-text" type="text" />
            </div>
            <div class="edit-user-form-ad">
              <p>광고성 정보 수신 동의</p>
              <label
                ><input class="ad_option-email" type="checkbox" />Email</label
              >
              <label><input class="ad_option-sms" type="checkbox" />SMS</label>
            </div>

            <div class="edit-user-form">
              <button class="edit-user-form_button" type="submit">
                회원 정보 수정
              </button>
            </div>
          </form>
        </div>
      </div>
    </section>

    <!-- 비밀번호 변경 수정 -->

    <section class="member-edit-section member-edit-section2 member_password_edit">
        <div class="edit-pwd_wrap">
          <div class="edit-pwd-content">
            <h1 class="edit-pwd_title">비밀번호 변경</h1>
            <form action="#" class="edit-pwd-change">
              <div class="edit-pwd_form">
                <div class="edit-pwd_form_title">현재 비밀번호</div>
                <div class="edit-pwd_form-group">
                  <div class="edit-pwd_form-group_box">
                    <input
                      type="text"
                      placeholder="현재 사용하고 계시는 비밀번호를 입력해주세요."
                    />
                  </div>
                  <div class="edit-pwd_form-group_warn">
                    필수 입력 항목입니다.
                  </div>
                </div>
              </div>
              <div class="edit-pwd_newform">
                <div class="edit-pwd_newform_title">새 비밀번호</div>
                <div class="edit-pwd_newform_sub-title">
                  12자 이상 입력해주세요.
                </div>
                <div class="edit-pwd_newform-group">
                  <div class="edit-pwd_newform-group_box">
                    <input
                      type="text"
                      placeholder="영문+숫자+특수문자 포함 12~20자"
                    />
                  </div>
                  <div class="edit-pwd_newform-group_warn">
                    필수 입력 항목입니다.
                  </div>
                </div>
              </div>
              <div class="edit-pwd_newform">
                <div class="edit-pwd_newform_title">새 비밀번호</div>
                <div class="edit-pwd_newform-confirm">
                  <div class="edit-pwd_newform-confirm_box">
                    <input type="text" placeholder="새 비밀번호 확인" />
                  </div>
                  <div class="edit-pwd_newform-confirm_warn">
                    필수 입력 항목입니다.
                  </div>
                </div>
              </div>
              <button class="edit-pwd-button">비밀번호 변경</button>
            </form>
          </div>
        </div>
      </div>
    </section>

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
  </body>
  <script src="../../JS/pagesjs/mypage_edit_click.js"></script>
  <script src="../../JS/menubar.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>
