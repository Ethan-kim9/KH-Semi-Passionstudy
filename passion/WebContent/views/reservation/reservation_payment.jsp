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
            <a href="">🔥 열정 스터디굿</a>
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


        <div class="final_reservation_info">
          <h5 class="final_reservation_info_title">최종 예약 정보</h5>
          <hr class="line">
          <div class="final_reservation_info_content">
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
                <span class="price_data">00,000원</span>
              </li>
              <hr class="subline">
              <li class="info_list">
                <strong class="title">예약인원</strong>
                <span class="data">00명</span>
              </li>
              <hr class="subline">
              <li class="info_list">
                <strong class="title">추가옵션</strong>
                <span class="data">프로젝터</span>
                <span class="price_data">00,000원</span>
              </li>
              <hr class="subline">
            </ul>
          </div>
        </div>


        <div class="coupon_use">
          <h5 class="coupon_use_title">
            쿠폰 사용
            <span class="title_coupon_number">(0장)</span>
          </h5>
          <hr class="line">
          <div class="coupon_use_content">
            <ul>
              <br>
              <li class="info_list">
                <input type="radio" name="radio_coupon" value="code_coupon">
                <strong class="coupon_title"> 쿠폰코드</strong>
                <input type="text" name="insert_coupon_code" id="insert_coupon_code" class="data">
                <button type="button" class="submit_coupon_code">확인</button>
              </li>
              <hr class="subline">
              <li class="info_list">
                <input type="radio" name="radio_coupon" value="code_coupon">
                <strong class="coupon_title"> 사용 안함</strong>
              </li>
              <hr class="subline">
            </ul>
          </div>
        </div>

        <div class="point_use">
          <h5 class="point_use_title">포인트 사용</h5>
          <hr class="line">
          <div class="point_use_content">
            <ul>
              <br>
              <li class="info_list">
                <strong class="title">보유</strong>
                <span class="data"> 0,000원 </span>
              </li>
              <hr class="subline">
              <li class="info_list">
                <strong class="title">사용</strong>
                <input type="text" class="data">
                <button type="button" class="all_data_use">전액사용</button>
                <!-- <input type="button" value="전액사용" class="all_data_use"> -->
              </li>
              <hr class="subline">
            </ul>
          </div>
        </div>


        <div class="final_payment_amount">
          <h5 class="final_payment_amount_title">최종 결제 금액</h5>
          <hr class="line">
          <div class="final_payment_amount_content">
            <ul>
              <br>
              <li class="info_list">
                <strong class="title">총 금액</strong>
                <span class="data">00,000원 </span>
              </li>
              <hr class="subline">
              <li class="info_list">
                <strong class="title">쿠폰 할인</strong>
                <span class="data">(-) 0,000원</span>
              </li>
              <hr class="subline">
              <li class="info_list">
                <strong class="title">포인트 할인</strong>
                <span class="data">(-) 0,000원</span>
              </li>
              <hr class="subline">
            </ul>
            <ul class="all_payment_amount">
              <li">
                <strong class="all_payment_amount_title">총 결제 금액</strong>
                <stong class="all_payment_amount_data">00,000원</strong>
              </li>
            </ul>
          </div> 
        </div>

        <div class="payment_method">
          <h5 class="payment_method_title">결제수단</h5>
          <hr class="line">
          <div class="payment_method_content">
              <ul class="payment_method_list">
                <li class="card">
                  <img src="../../images/icon/credit-card.png" class="payment_method_img" >
                  <input type="radio" class="card_payment_method" name="card_payment" value="card" onclick="div_onoff(this.value,'con');"/>  카드결제
                </li>
                <li class="mobile">
                  <img src="../../images/icon/mobile-payment.png" class="payment_method_img" >
                  <input type="radio" class="mobile_payment_method" name="mobile_payment" value="mobile" />  무통장입금
                </li>
                <li class="scene">
                  <img src="../../images/icon/scene.png" class="payment_method_img" >
                  <input type="radio" class="scene_payment_method" name="scene_payment" value="scene"/>  현장결제
                </li>
                <li class="point">
                  <img src="../../images/icon/money.png" class="payment_method_img" >
                  <input type="radio" class="money_payment_method" name="money_payment" value="money"/>  현금결제
                </li>
              </ul>
              <div id="con" style="display: none;">
                <span>카드 번호</span> 
                <br>
                <input type="text" name="card_info_first" class="card_info_first"> -
                <input type="text" name="card_info_second" class="card_info_second"> -
                <input type="text" name="card_info_third" class="card_info_third"> -
                <input type="text" name="card_info_fourth" class="card_info_fourth">
                <br>
                <span>유효기간</span>
                <br>
                <select class="selected-month">
                  <option value="1" selected="selected">1</option>
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
                <label for="selected-month">월</label>
                <select class="selected-year">
                  <option value="2020" selected="selected">2020</option>
                  <option value="2021">2021</option>
                  <option value="2022">2022</option>
                  <option value="2023">2023</option>
                  <option value="2024">2024</option>
                </select>
                <label for="selected-year">년</label>
                <br>
                <span>생년월일</span>
                <br>

              </div>

              <ul class="join_box">
                <li class="checkBox check01">
                  <ul class="clearfix">
                    <li>
                      이용자 약관 전체 동의
                      <input type="checkbox" name="chkAll" id="check_all" class="chkAll">
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
          <div class="next_button btn_payment">
            <div>
              <a href="./reservation.html"><button class="cancel"> 취소하기 </button></a>
              <button class="payment"> 결제하기 </button>
            </div>
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
  <script src="../../JS/pagesjs/reservation_payment.js"></script>
  </html>

