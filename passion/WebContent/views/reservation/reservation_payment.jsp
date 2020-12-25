<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="../../CSS/styles.css" />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    />
    <title>예약/결제</title>
    <script
      src="https://code.jquery.com/jquery-3.5.1.js"
      integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
      crossorigin="anonymous"
    ></script>
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
                  <a href="../facilities/facilities_rooms.html"
                    ><span>시설소개</span></a
                  >
                </li>
                <li class="guide">
                  <a href="../facilities/facilities_extra.html"
                    ><span>이용안내</span></a
                  >
                </li>
                <li class="reserve on">
                  <a href="./reservation.html"><span>예약/결제</span></a>
                </li>
                <li class="community">
                  <a href=""><span>커뮤니티</span></a>
                </li>
                <li class="mypage">
                  <a href=""><span>마이페이지</span></a>
                </li>
                <li class="login">
                  <a href="../member/member_login.html"><span>로그인</span></a>
                </li>
                <div class="floting_bar" style="left: 400px"></div>
              </ul>
            </nav>
          </div>
        </div>
      </header>
  
      <div class="cont_header">
        <div class="cont_wrapper">
          <h1>예약 / 결제</h1>
        </div>
      </div>
  
      <div class="tabtype btn_align_center">
        <div class="tabtype_wrapper">
          <ul>
            <li style="width: 33%;">
              <a href="reservation_roominfo.html">
                <button class="btn1">예약하기</button>
              </a>
            </li>
            <li style="width: 33%;">
              <a href="reservation_userinfo.html">
              <button class="btn2">예약자 정보입력</button>
            </a>
          </li>
            <li style="width: 33%;">
              <button class="btn3 on" disabled>결제하기</button>
            </li>
          </ul>
        </div>
      </div>

    <section class="section payment_section">
      <div class="container">
        <div class="refund_regulations">
          <h5 class="refund_regulations_title">환불규정 안내</h5>
          <hr class="line">
          <p class="refund_regulations_content">
            <em class="warn" style="color: #ff3a48;">
              이용당일(첫 날) 이후에 환불 관련 사항은 호스트에게 직접 문의하셔야 합니다.
            </em>
            <br>
            <p class="info">
              결제 후 2시간 이내에는 100%환불이 가능합니다.(단, 이용시간 전까지만 가능)
            </p>
          </p>
          <ul>
            <hr class="subline">
            <li class="info_list">
              <strong class="title">이용 7일전</strong>
              <span class="data">총 금액의 100% 환불</span>
            </li>
            <hr class="subline">
            <li class="info_list">
              <strong class="title">이용 6일전</strong>
              <span class="data">총 금액의 100% 환불</span>
            </li>
            <hr class="subline">
            <li class="info_list">
              <strong class="title">이용 5일전</strong>
              <span class="data">총 금액의 100% 환불</span>
            </li>
            <hr class="subline">
            <li class="info_list">
              <strong class="title">이용 4일전</strong>
              <span class="data">총 금액의 100% 환불</span>
            </li>
            <hr class="subline">
            <li class="info_list">
              <strong class="title">이용 3일전</strong>
              <span class="data">총 금액의 90% 환불</span>
            </li>
            <hr class="subline">
            <li class="info_list">
              <strong class="title">이용 2일전</strong>
              <span class="data">총 금액의 70% 환불</span>
            </li>
            <hr class="subline">
            <li class="info_list">
              <strong class="title">이용 전날</strong>
              <span class="data">총 금액의 50% 환불</span>
            </li>
            <hr class="subline">
            <li class="info_list">
              <strong class="title">이용 당일</strong>
              <span class="data">환불 불가</span>
            </li>
          </ul>
        </div>


        <div class="payment_method">
          <h5 class="payment_method_title">결제방법 선택</h5>
          <hr class="line">
          <div class="payment_method_content">
              <ul class="payment_method_list">
                <li class="card">
                  <img src="../../images/icon/credit-card.png" class="payment_method_img" >
                  <input type="radio" class="payment_method_name" name="patment_method" value="card"/>  신용카드
                </li>
                <li class="mobile">
                  <img src="../../images/icon/mobile-payment.png" class="payment_method_img" >
                  <input type="radio" class="payment_method_name" name="patment_method" value="mobile"/>  실시간 계좌이체
                </li>
                <li class="scene">
                  <img src="../../images/icon/scene.png" class="payment_method_img" >
                  <input type="radio" class="payment_method_name" name="patment_method" value="scene"/>  현장결제
                </li>
                <li class="point">
                  <img src="../../images/icon/point.png" class="payment_method_img" >
                  <input type="radio" class="payment_method_name" name="patment_method" value="point"/>  포인트 결제
                </li>
              </ul>
              <ul class="join_box">
                <li class="checkBox check01">
                  <ul class="clearfix">
                    <li>
                      이용자 약관 전체 동의
                      <input type="checkbox" name="chkAll" id="chk" class="chkAll">
                    </li>
                  </ul>
                </li>
                <li class="checkBox check02">
                  <ul class="clearfix">
                    <li>
                      예약조건 확인 및 결제진행 동의
                      <span class="txt_required">(필수)</span>
                      <input type="checkbox" name="chk" class="checkBtn">
                    </li>
                  </ul>
                </li>
                <li class="checkBox check03">
                  <ul class="clearfix">
                    <li>
                      환불규정 안내에 대한 동의
                      <span class="txt_required">(필수)</span>
                      <input type="checkbox" name="chk" class="checkBtn">
                    </li>
                  </ul>
                </li>
              </ul>
          </div>
        </div>


        <div class="payment_amount">
          <h5 class="payment_amount_title">결제 예정금액</h5>
          <hr class="line">
          <div class="payment_amount_content">
            <ul>
              <br>
              <li class="info_list">
                <strong class="title">예약날짜</strong>
                <span class="data">2020.00.00 (월) </span>
              </li>
              <hr class="subline">
              <li class="info_list">
                <strong class="title">예약시간</strong>
                <span class="data">00시 ~ 00시, 00시간</span>
              </li>
              <hr class="subline">
              <li class="info_list">
                <strong class="title">예약인원</strong>
                <span class="data">00명</span>
              </li>
              <hr class="subline">
            </ul>
            <ul class="amount">
              <li class="amount_list">
                <strong class="amount_title">총 금액</strong>
                <strong class="amount_data" style="margin-left: 120px;">00,000 원</strong>
              </li>
              <li class="amount_list">
                <strong class="amount_title">포인트 할인</strong>
                <strong class="amount_data " style="margin-left: 88px;">00,000 원</strong>
              </li>
              <hr>
              <li class="amount_list">
                <strong class="amount_title">최종결제 금액</strong>
                <strong class="amount_data" style="margin-left: 73px;">00,000 원</strong>
              </li>
            </ul>
          </div>
        </div>
        <div class="next_button btn_payment">
          <div>

            <a href="./reservation.html"><button class="cancel"> 취소하기 </button></a>
            <button class="payment"> 결제하기 </button>
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
  <script src="../../JS/menubar.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>
