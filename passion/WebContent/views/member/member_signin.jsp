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


<!-- 이용약관 동의 체크 부분 -->

  <section class="signin_sction signin_sction1">
        <div class="signup_wrap">
            <form class="form_wrap_signup">
              <section>
                <h2 class="title_signup">간편가입</h2>
                <div class="step_wrap">
                  <i class="step0_terms"></i>
                  <ul class="signup_step">
                    <!-- 체크박스 부분 -->
                    <li class="signup_step0">
                      <h3>
                        열정스터디 카페 서비스
                        <br />
                        이용약관에 동의해주세요.
                      </h3>
                        <form id="form_ckbox" name="form_ckbox" method="POST" action="">
                          <div class="ckjoinbox">
                              <input
                                type="checkbox"
                                id="allckbox"
                              />
                              <label title="모두 동의 (선택 정보 포함)">
                                모두 동의 (선택 정보 포함)
                              </label>
                          </div>
                          <div class="cklist">
                            <span class="ckbox1">
                              <input
                                type="checkbox"
                                name="chktmp"
                                id="ckbox1"
                                value="check"
                                required
                                />
                              <label title="[필수] 만 14세 이상" class="checkbox_msg">
                                [필수] 만 14세 이상
                              </label>
                            </span>
                            <span>
                              <span class="ckbox1">
                                <input
                                  type="checkbox"
                                  name="chktmp"
                                  id="ckbox2"
                                  value="check"
                                  required
                                />
                                <label title="[필수] 이용약관 동의" class="checkbox_msg">
                                  [필수] 이용약관 동의
                                  <button type="button" class="btn_check" data-toggle="modal" data-target="#exampleModalScrollable">보기</button>
                                  <!---->
                                </label>

                                  <!---->
                                
                              </span>
                            </span>
                            <span>
                              <span class="ckbox1">
                                <input
                                  type="checkbox"
                                  name="chktmp"
                                  id="ckbox3"
                                  value="check"
                                  required
                                />
                                <label title="[필수] 개인정보 처리방침 동의" class="checkbox_msg">
                                  [필수] 개인정보 처리방침 동의
                                  <button type="button" class="btn_check2" data-toggle="modal" data-target="#exampleModalScrollable1">보기</button>
                                </label>
                              </span>
                            </span>
                            <span>
                              <span class="ckbox1">
                                <input
                                  type="checkbox"
                                  name="chktmp"
                                  id="ckbox4"
                                  value="check"
                                />
                                <label title="[선택] 광고성 정보 수신 및 마케팅 활용 동의" class="checkbox_msg">
                                  [선택] 광고성 정보 수신 및 마케팅 활용 동의
                                  <button type="button" class="btn_check3" data-toggle="modal" data-target="#exampleModalScrollable2">보기</button>
                                </label>
                              </span>
                          </form>

                      <!-- 1번 약관 -->
                      <div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
                          <div class="modal-dialog modal-dialog-scrollable" role="document">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalScrollableTitle">이용약관</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                              <div class="modal-body">
                                <p class="ls2 lh6 bs5 ts4"><em class="emphasis"><(주)열정스터디>('www.열정스터디.net'이하  '열정스터디')</em>은(는) 개인정보보호법에 따라 이용자의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 처리방침을 두고 있습니다.</p><p class="ls2 lh6 bs5 ts4"><em class="emphasis"><(주)열정스터디>('열정스터디')</em> 은(는) 회사는 개인정보처리방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.</p><p class="ls2">○ 본 방침은부터 <em class="emphasis">2020</em>년 <em class="emphasis">1</em>월 <em class="emphasis">3</em>일부터 시행됩니다.</p></br><p class='lh6 bs4'><strong>1. 개인정보의 처리 목적 <em class="emphasis"><(주)열정스터디>('www.열정스터디.net'이하  '열정스터디')</em>은(는) 개인정보를 다음의 목적을 위해 처리합니다. 처리한 개인정보는 다음의 목적이외의 용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전동의를 구할 예정입니다.</strong></p><ul class="list_indent2 mgt10"><p class="ls2">가. 홈페이지 회원가입 및 관리</p><p class="ls2">회원 가입의사 확인, 서비스 부정이용 방지, 각종 고지·통지 등을 목적으로 개인정보를 처리합니다.</p></br></ul>
                        
                        
                              </div>
                            </div>
                          </div>
                        </div>

                        <!-- 2번약관 -->
                        
                        <div class="modal fade" id="exampleModalScrollable1" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle1" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-scrollable1" role="document">
                              <div class="modal-content">
                                <div class="modal-header">
                                  <h5 class="modal-title" id="exampleModalScrollableTitle1">이용약관</h5>
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                  </button>
                                </div>
                                <div class="modal-body">
                                  <p class="ls2 lh6 bs5 ts4"><em class="emphasis"><(주)열정스터디>('www.열정스터디.net'이하  '열정스터디')</em>은(는) 개인정보보호법에 따라 이용자의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 처리방침을 두고 있습니다.</p><p class="ls2 lh6 bs5 ts4"><em class="emphasis"><(주)열정스터디>('열정스터디')</em> 은(는) 회사는 개인정보처리방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.</p><p class="ls2">○ 본 방침은부터 <em class="emphasis">2020</em>년 <em class="emphasis">1</em>월 <em class="emphasis">3</em>일부터 시행됩니다.</p></br><p class='lh6 bs4'><strong>1. 개인정보의 처리 목적 <em class="emphasis"><(주)열정스터디>('www.열정스터디.net'이하  '열정스터디')</em>은(는) 개인정보를 다음의 목적을 위해 처리합니다. 처리한 개인정보는 다음의 목적이외의 용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전동의를 구할 예정입니다.</strong></p><ul class="list_indent2 mgt10"><p class="ls2">가. 홈페이지 회원가입 및 관리</p><p class="ls2">회원자격 유지·관리, 제한적 본인확인제 시행에 따른 본인확인, 서비스 부정이용 방지, 각종 고지·통지 등을 목적으로 개인정보를 처리합니다.</p></br></ul>    
                                </div>
                              </div>
                            </div>
                          </div>
                        
                        <!-- 3번약관 -->
                          <div class="modal fade" id="exampleModalScrollable2" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle2" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-scrollable2" role="document">
                              <div class="modal-content">
                                <div class="modal-header">
                                  <h5 class="modal-title" id="exampleModalScrollableTitle2">이용약관</h5>
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                  </button>
                                </div>
                                <div class="modal-body">
                                  <p class="ls2 lh6 bs5 ts4"><em class="emphasis"><(주)열정스터디>('www.열정스터디.net'이하  '열정스터디')</em>은(는) 개인정보보호법에 따라 이용자의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 처리방침을 두고 있습니다.</p><p class="ls2 lh6 bs5 ts4"><em class="emphasis"><(주)열정스터디>('열정스터디')</em> 은(는) 회사는 개인정보처리방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.</p><p class="ls2">○ 본 방침은부터 <em class="emphasis">2020</em>년 <em class="emphasis">1</em>월 <em class="emphasis">3</em>일부터 시행됩니다.</p></br><p class='lh6 bs4'><strong>1. 개인정보의 처리 목적 <em class="emphasis"><(주)열정스터디>('www.열정스터디.net'이하  '열정스터디')</em>은(는) 개인정보를 다음의 목적을 위해 처리합니다. 처리한 개인정보는 다음의 목적이외의 용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전동의를 구할 예정입니다.</strong></p><ul class="list_indent2 mgt10"><p class="ls2">가. 마케팅 및 광고에의 활용</p><p class="ls2">신규 서비스(제품) 개발 및 맞춤 서비스 제공, 이벤트 및 광고성 정보 제공 및 참여기회 제공 , 인구통계학적 특성에 따른 서비스 제공 및 광고 게재 , 서비스의 유효성 확인 등을 목적으로 개인정보를 처리합니다.</p></br></ul>
                                </div>
                              </div>
                            </div>
                          </div>



                          <input
                            type="hidden"
                            formcontrolname="receive_sms"
                            value="F"
                          />
                          <input
                            type="hidden"
                            formcontrolname="receive_eamil"
                            value="F"
                          />
                        </span>
                      </div>
  
                        <button type="button" class="btn_next_step sign_btn_1" disabled onclick=" ">
                          동의하고 가입하기
                        </button>

                    </li>
                  </ul>
                </div>
              </section>
        
          </div>

  </section>

<!-- 아이디 입력 부분 -->

  <section class="signin_sction signin_sction2">
  <div class="signup_wrap">
      <div class="form_wrap_signup">
          <h2 class="title_signup">간편가입</h2>
          <div class="step_wrap">
              <i class="step1_id"></i>
              <ul class="signup_step">
                  <li>
                      <h3>
                          로그인에 사용할
                          <br/>
                          아이디를 입력해주세요.
                      </h3>
                      <div class="signup_step_box">
                          <label for="userid" class="blind signup_step">아이디 (이메일) 입력</label>
                          <div class="field signup_step_box">
                            <form action="" method="POST">
                              <div class="inpbx">
                                  <input type="email" 
                                         id="userid" 
                                         placeholder="아이디 (이메일) 입력" 
                                         formcontrolname="userid"
                                         autocorrect="off" 
                                         class="field_signupbox_id"
                                         required/>
                              </div>
                            </form>
                          </div>
                      </div>

                      <button type="submit" class="btn_next_step sign_btn_2">다음</button>

                  </li>
              </ul>
          </div>
        </div>
  </div>
  </section>

<!-- 이름과 연락처 -->

  <section class="signin_sction signin_sction3">
  <div class="signup_wrap">
      <div class="form_wrap_signup">
          <h2 class="title_signup">간편가입</h2>
          <div class="step_wrap">
              <i class="step2_name"></i>
              <ul class="signup_step">
                  <li>
                      <h3>
                          이름과 연락처를
                          <br/>
                          입력해주세요.
                      </h3>
                      <div class="signup_step_box">
                          <label for="usernm" class="blind signup_step"></label>
                          <div class="inpbx">
                              <input rulerfocuson type="text" 
                                                  id="usernm" 
                                                  placeholder="이름" 
                                                  formcontrolname="usernm"/>
                              <!---->
                          </div>
                      </div>
                      <div class="signup_step_box">
                          <label for="userphnumber" class="blind signup_step"></label>
                          <div class="inpbx">
                              <input rulerfocuson type="text" 
                                                  id="userphnumber" 
                                                  placeholder="연락처 (전화번호)" 
                                                  formcontrolname="userphnumber"/>
                              <!---->
                          </div>
                      </div>

                          <button type="button" class="btn_next_step sign_btn_3">다음</button>

                  </li>
              </ul>
          </div>
        </div>
  </div>


  </section>
<!--비밀번호 입력 및 확인 -->

  <section class="signin_sction signin_sction4">
  <div class="signup_wrap">
      <div class="form_wrap_signup">
          <h2 class="title_signup">간편가입</h2>
          <div class="step_wrap">
              <i class="step3_pwd"></i>
              <ul class="signup_step">
                  <li>
                      <h3>
                          로그인에 사용할
                          <br/>
                          비밀번호를 입력해주세요.
                      </h3>
                      <div>
                          <label for="user_password" class="blind signup_step"></label>
                          <div class="field_signup_wrap_pwd">
                              <div class="inpbx">
                                  <input rulerfocuson type="password" 
                                                      id="user_password" 
                                                      placeholder="비밀번호 입력" 
                                                      formcontrolname="user_password"/>
                                  <!---->
                              </div>
                              <p class="field_vali">
                                  <span class="signup_wrap">영문포함</span>
                                  <span class="signup_wrap">숫자포함</span>
                                  <span class="signup_wrap">8~20자 이내</span>
                              </p>
                          </div>
                          <label for="confirm_password" class="blind signup_step"></label>
                          <div class="field_signup_wrap_pwd">
                              <div class="inpbx">
                                  <input rulerfocuson type="password" 
                                                      id="confirm_password" 
                                                      placeholder="비밀번호 확인" 
                                                      formcontrolname="confirm_password"/>
                                  <!---->
                              </div>
                              <p class="field_vali">
                                  <span class="signup_wrap">비밀번호 일치</span>
                              </p>
                          </div>
                      </div>
                          <button type="button" class="btn_next_step sign_btn_4">다음</button>
                  </li>
              </ul>
          </div>
        </div>
  </div>

  </section>

<!--추천인 입력 선택 -->
  <section class="signin_sction signin_sction5">
  <div class="signup_wrap">
      <div class="form_wrap_signup">
          <h2 class="title_signup">간편가입</h2>
          <div class="step_wrap">
              <i class="step4_event"></i>
              <ul class="signup_step">
                  <li>
                      <div class="verify_info">
                          <h3>
                              <span class="eventbox_title">추천인 입력하고</span>
                              <br/>
                              혜택을 받으세요
                          </h3>
                          <ul class="signup_event_info">
                              <li>
                                  신규 가입시 추천인 입력하면
                                  <br/>
                                  추천자, 추천인 모두에게 1000포인트 지급
                              </li>
                          </ul>
                        <button type="button" class="btn_next_step on verify_info btn_fix sign_btn_6">
                                  혜택 없이 계속 가입하기
                        </button>
                        <button type="button" class="btn_next_step on verify_info sign_btn_5">
                                  추천인 입력하고 혜택받기
                        </button>
                      </div>
                  </li>
              </ul>
          </div>
        </div>
  </div>


  </section>

<!--추천인 아이디 입력 -->
  <section class="signin_sction signin_sction6">
  <div class="signup_wrap">
      <div class="form_wrap_signup">
          <h2 class="title_signup">간편가입</h2>
          <div class="step_wrap">
              <i class="step5_event_info"></i>
              <ul class="signup_step">
                  <li>
                      <h3>추천인을 입력해주세요.</h3>
                      <div class="signup_step_box">
                          <label for="user_event_input" class="blind signup_step"></label>
                          <div class="field signup_step_box">
                              <div class="inpbx">
                                  <input type="text" 
                                         id="user_eventid" 
                                         placeholder="추천인 아이디" 
                                         formcontrolname="user_eventid"
                                         autocorrect="off" 
                                         autocapitalize="none"/>
                              </div>
                          </div>
                      </div>
                          <button type="button" class="btn_next_step sign_btn_7">다음</button>

                  </li>
              </ul>
          </div>
        </div>
  </div>

  </section>

<!--입력 완료 시 쿠폰표시 화면 -->

  <section class="signin_sction signin_sction7">
  <div class="signup_wrap">
      <div class="form_signup_wrap">
          <h2 class="title_signup">간편가입</h2>
          <div class="step_wrap">
              <i class="step6_welcome"></i>
              <ul class="signup_step">
                  <li>
                      <div class="join_ly">
                          <h3>WELCOME
                              <br/>
                              COUPON
                          </h3>
                          <div class="coupon_dsc">
                              <img class="user_coupon_img" src="https://www.flaticon.com/svg/static/icons/svg/612/612844.svg">
                              <img class="user_coupon_img" src="https://www.flaticon.com/svg/static/icons/svg/612/612844.svg">

                              <p>
                                  + 쿠폰 상세 내용은
                                  <a href="./mypage/coupon">마이 > 쿠폰</a>
                                  <!-- 마이페이지 링크 연결 -->
                                  에서 확인하세요.
                              </p>
                          </div>
                          <div class="login_dsc">
                              <!-- 로그인 화면 링크 -->
                              <a href="./member_login.html" class="member_go">
                                  <button type="button" class="btn_next_step">로그인 하기</button>
                              </a>
                          </div>
                      </div>
                  </li>
              </ul>
          </div>
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
                    <span class="bold address">서울특별시 영등포구 선유동2로 57 이레빌딩(구관) 19F
                    열정스터디</span>
                </div>
                <div>
                    <p>.</p>
                    <p>.</p>
                </div>
                <div>
                    <span class="copyright">copyright 2019 PASSIONSTUDY. ALL Rights Reserved.</span>
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
  <script src="../../JS/pagesjs/member_signin_click.js"></script>
  <script src="../../JS/pagesjs/member_signin_checkbox.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>