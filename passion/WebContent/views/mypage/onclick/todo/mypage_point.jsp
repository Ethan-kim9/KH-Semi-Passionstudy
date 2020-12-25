<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
      <link rel = "stylesheet" href="../../css/headfoot.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
      <title>쿠폰받기</title>
      <script src="https://code.jquery.com/jquery-3.5.1.js" 
      integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
      crossorigin="anonymous"></script>
      <script>    
        /****헤더 마우스따라 움직이는 바****/
        function headerBar(){
          var onMenu = $('header #menu li.on').offset().left
                                      
          $('.floting_bar').offset( { left: onMenu } );
      
          $('header #menu li').on('mouseenter', function () {
        var a = $(this).offset().left
        $('.floting_bar').offset( { left: a } );

          })
          $('header #menu li').on('mouseleave', function () {
        $('.floting_bar').offset( { left: onMenu } );
          });	
        };

        function checkWindowWidth() {
          var windowWidth = $(window).width();
          if (windowWidth < 1000) {
        //창 가로 크기가 1000 미만일 경우
        $('header #menu li.pc').removeClass('on');
        if($("header #menu li.job.mo").length == 0) {
          $('#menu-main .job.mo').addClass('on');
        }
          } else {
        //창 가로 크기가 1000보다 클 경우
        $('header #menu li.mo').removeClass('on');
        if($("header #menu li.pc").length == 0) {
          $('header #menu li.pc').addClass('on');
        }
          }
        };

        /****웹 로드시 작동****/
        $(function () {
      
          //checkWindowWidth();
          headerBar();
      
          /****헤더클릭 페이지 바로가기+중앙배치****/
          $('header #menu li a.pagemove').click(function () {
        var makeCenter = ($(window).height() - $(this.hash).outerHeight()) / 2
        $('html,body').animate({
          scrollTop: $(this.hash).offset().top - makeCenter
        }, 400);
          });

        });

        /****창크기 변화 감지 후 작동****/
        $(window).resize(function() {
      
          //checkWindowWidth();	
          headerBar();
      
        });
      </script>
      <style>
        
        .cont_header{
            background:  #202020;
            line-height: 7;

        }
        .cont_header .cont_wrapper{
            width: 1200px;
            margin: 0 auto;
            font-family: 'Montserrat', Noto Sans KR, sans-serif;
            text-align: center;
            color: #fff;
        }

        
        .section {
          width: 1000px;
          margin: 0 auto;
        }
        /* -------------------------탭 설정 임의로 변경 (top: 50px-> 30px)----------------------------------- */
        .container {
          padding: 0; 
          margin: 50px 0 30px 0;
        }
        .container_mypage-management {
          height: 40px;
        }
        /*두 번째 탭 감싸는 ul*/ 
        .container .container_mypage-management ul { 
          margin: 0 0 20px 0;
        }

        /*두 번째 탭 사이즈 조절하는 코드*/ 
        .container .container_mypage-management li {
          display: inline-block;
          width: 1000px;
        }
        .container .container_mypage-management button { 
          width: 100%;
          height: 35px;
          background-color: rgb(190, 190, 190);
          border: 0;
          font-weight: 900;
          font-family: 'Montserrat', Noto Sans KR, sans-serif;
          cursor: pointer;
          font-size: 15px;
        }
        .container .container_mypage-management li a { 
          text-decoration: none;
        }
        .container .container_mypage-management button a {
          color: black;
        }
        .container .container_mypage-management button:hover { 
          background-color: #ffcc00;
          color: white;
        }
        .container button.on {
          background-color: #202020;
          color: #ffffff;
        }
        
        /* ----------------------------------------------------------------- */
        .coupon-feed {
          width: 1000px;
        }
        .coupon-feed-register {
          border-top: 1px solid gray;
          border-bottom: 1px solid gray;
          margin: 50px 0 20px;
          height: 110px;
          text-align: center;
        }
        .coupon-feed-register-title {
          display: inline-block;
          font-size: 20px;
        }
        .coupon-feed-register-input {
          width: 300px;
          height: 35px;
          border: 1px solid #c0bebe;
          margin: 35px 10px 35px 10px;
        }
        .coupon-feed-register-input::placeholder {
          padding-left: 10px;
          color: gray;
          font-weight: bold;
        }
        .coupon-feed-register-button {
          width: 80px;
          height: 35px;
          background-color: #444444;
          color: white;
          border-radius: 6px;
        }
      
      .coupon-mold{
        display: flex;
        flex-wrap: wrap;;
        margin: 40px 0;
      }
      .coupon-item {
        flex-basis: 230px;
        height: 315px;
        padding: 20px;
        background-color: #ebeef0;
        margin: 10px 10px;
        border-radius: 6px;
      }
      .coupon-item_title {
        font-size: 23px;
        font-weight: bold;
      }
      .coupon-item_price {
        font-size: 30px;
        margin: 15px 0;
      }
      .coupon-item_price-number {
        font-weight: bold;
        font-size: 34px;
        color: #5dbbf1;
      }
      .coupon-item_price-won {
        font-size: 18px;
      }
      .coupon-item_due-date {
        margin-bottom: 15px;
        color: #464646;
      }
      .coupon-item_due-date span {
        font-size: 16px;
      }
      .coupon-item_studyroom-list {
        text-decoration: none;
        font-size: 18px;
        font-weight: bold;
        color: #4e77b9;
      }
      .coupon-item_status-get {
        background-color: #5dbbf1;
        margin: 23px 0;
        height: 40px;
        line-height: 40px;
        text-align: center;
        border-radius: 6px;
        color: white;
        cursor: pointer;
      }
      /*  */
      .coupon-item_status-done {
        background-color: #505152;
        margin: 23px 0;
        height: 40px;
        line-height: 40px;
        text-align: center;
        border-radius: 6px;
        color: white;
      }
      .coupon-done {
        border-bottom: 1px solid #dbdcdd;
      }
      .coupon-done .coupon-item {
        margin-bottom: 50px;
      }
      </style>
  </head>

  <body>
    <header>
      <div class="header_inner">
        <div class="logo_img">
          <!-- <img src="https://yt3.ggpht.com/a/AATXAJxe0JQTxF0Apn4-OyQ_wCwQ2mB6OGzZdc7_dpsJCw=s900-c-k-c0x00ffffff-no-rj" onclick="">
				 --><a href="">🔥 열정 스터디</a>
        </div>
        <div class="menu_wrapper">
          <nav id="menu">
            <ul id="menu-main" class="menu menu-main">
                <li class="main">
                    <a href=""><span>메인</span></a>
                </li>
                <li class="roomlist">
                    <a href=""><span>시설소개</span></a>
                </li>
                <li class="guide">
                    <a href=""><span>이용안내</span></a>
                </li>
                <li class="reserve">
                    <a href=""><span>예약/결제</span></a>
                </li>
                <li class="community">
                    <a href=""><span>커뮤니티</span></a>
                </li>
                <li class="mypage on">
                    <a href=""><span>마이페이지</span></a>
                </li>
                <li class="login">
                    <a href=""><span>로그인</span></a>
                </li>
                <div class="floting_bar" style="left: 400px;"></div>
            </ul>
          </nav>
        </div>
      </div>
    </header>

    <div class="cont_header">
      <div class="cont_wrapper">
          <h1>마이페이지</h1>
      </div>
    </div>

    <section class="section">
      <div class="container">
        <div class="container_mypage-management">
          <ul>
            <li>
              <a href="링크.html"><button class="first-teb-button on">내 쿠폰</button></a>
            </li>
          </ul>
        </div>
        <!-- 쿠폰 html -->
        <div class="coupon-feed">
          <div class="coupon-feed-container">
            <div class="coupon-feed-register">
              <h3 class="coupon-feed-register-title">쿠폰등록</h3>
              <input
                class="coupon-feed-register-input"
                type="text"
                placeholder="쿠폰 코드를 입력해주세요."
              />
              <button class="coupon-feed-register-button" type="submit">
                등록
              </button>
            </div>
            <div class="coupon-wrap">
              <div class="coupon-mold coupon-done">
                <div class="coupon-item">
                  <div class="coupon-item_title">[스터디룸명] 할인쿠폰</div>
                  <div class="coupon-item_price">
                    <span class="coupon-item_price-number">5,000</span>
                    <span class="coupon-item_price-won">원</span>
                  </div>
                  <div class="coupon-item_due-date">
                    <span>·2020년 12월 19일까지</span>
                  </div>
                  <a class="coupon-item_studyroom-list" href="#">적용상품 보기 ></a>
                  <div class="coupon-item_status-done">받았음</div>
                </div>
              </div>

              <div class="coupon-mold">
                <div class="coupon-item">
                  <div class="coupon-item_title">[스터디룸명] 할인쿠폰</div>
                  <div class="coupon-item_price">
                    <span class="coupon-item_price-number">5,000</span>
                    <span class="coupon-item_price-won">원</span>
                  </div>
                  <div class="coupon-item_due-date">
                    <span>·2020년 12월 19일까지</span>
                  </div>
                  <a class="coupon-item_studyroom-list" href="#">적용상품 보기 ></a>
                  <div class="coupon-item_status-get" onclick="location.href='#'">받기</div>
                </div>

                <div class="coupon-item">
                  <div class="coupon-item_title">[스터디룸명] 할인쿠폰</div>
                  <div class="coupon-item_price">
                    <span class="coupon-item_price-number">5,000</span>
                    <span class="coupon-item_price-won">원</span>
                  </div>
                  <div class="coupon-item_due-date">
                    <span>·2020년 12월 19일까지</span>
                  </div>
                  <a class="coupon-item_studyroom-list" href="#">적용상품 보기 ></a>
                  <div class="coupon-item_status-get">받기</div>
                </div>

                <div class="coupon-item">
                  <div class="coupon-item_title">[스터디룸명] 할인쿠폰</div>
                  <div class="coupon-item_price">
                    <span class="coupon-item_price-number">5,000</span>
                    <span class="coupon-item_price-won">원</span>
                  </div>
                  <div class="coupon-item_due-date">
                    <span>·2020년 12월 19일까지</span>
                  </div>
                  <a class="coupon-item_studyroom-list" href="#">적용상품 보기 ></a>
                  <div class="coupon-item_status-get">받기</div>
                </div>

                <div class="coupon-item">
                  <div class="coupon-item_title">[스터디룸명] 할인쿠폰</div>
                  <div class="coupon-item_price">
                    <span class="coupon-item_price-number">5,000</span>
                    <span class="coupon-item_price-won">원</span>
                  </div>
                  <div class="coupon-item_due-date">
                    <span>·2020년 12월 19일까지</span>
                  </div>
                  <a class="coupon-item_studyroom-list" href="#">적용상품 보기 ></a>
                  <div class="coupon-item_status-get">받기</div>
                </div>

                <div class="coupon-item">
                  <div class="coupon-item_title">[스터디룸명] 할인쿠폰</div>
                  <div class="coupon-item_price">
                    <span class="coupon-item_price-number">5,000</span>
                    <span class="coupon-item_price-won">원</span>
                  </div>
                  <div class="coupon-item_due-date">
                    <span>·2020년 12월 19일까지</span>
                  </div>
                  <a class="coupon-item_studyroom-list" href="#">적용상품 보기 ></a>
                  <div class="coupon-item_status-get">받기</div>
                </div>

                <div class="coupon-item">
                  <div class="coupon-item_title">[스터디룸명] 할인쿠폰</div>
                  <div class="coupon-item_price">
                    <span class="coupon-item_price-number">5,000</span>
                    <span class="coupon-item_price-won">원</span>
                  </div>
                  <div class="coupon-item_due-date">
                    <span>·2020년 12월 19일까지</span>
                  </div>
                  <a class="coupon-item_studyroom-list" href="#">적용상품 보기 ></a>
                  <div class="coupon-item_status-get">받기</div>
                </div>

                </div>
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
</html>