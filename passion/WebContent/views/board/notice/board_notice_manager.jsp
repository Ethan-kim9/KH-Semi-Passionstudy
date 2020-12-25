<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
    <link rel="stylesheet" href="../../../CSS/styles.css" />
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
                <a href="../../index.html"><span>메인</span></a>
              </li>
              <li class="roomlist">
                <a href="../../facilities/facilities_rooms.html"
                  ><span>시설소개</span></a
                >
              </li>
              <li class="guide">
                <a href="../../facilities/facilities_extra.html"
                  ><span>이용안내</span></a
                >
              </li>
              <li class="reserve">
                <a href="../../reservation/reservation.html"
                  ><span>예약/결제</span></a
                >
              </li>
              <li class="community on">
                <a href="../Notice/board_notice.html"><span>커뮤니티</span></a>
              </li>
              <li class="mypage">
                <a href="../../mypage/mypage.html"><span>마이페이지</span></a>
              </li>
              <li class="login">
                <a href="member/member_login.html"><span>로그인</span></a>
              </li>
              <div class="floting_bar" style="left: 430px"></div>
            </ul>
          </nav>
        </div>
      </div>
    </header>

    <div class="cont_header">
      <div class="cont_wrapper">
        <h1>커뮤니티</h1>
      </div>
    </div>

    <div class="tabtype">
      <div class="tabtype_wrapper">
        <ul>
          <li>
            <a href="board_notice.html"
              ><button class="btn1 on">공지사항</button></a
            >
          </li>
          <li>
            <a href="../FAQ/board_faq.html"
              ><button class="btn2">자주하는 질문</button></a
            >
          </li>
          <li>
            <a href="../1on1/board_1on1.html"
              ><button class="btn3">1:1문의</button></a
            >
          </li>
        </ul>
      </div>
    </div>

    <section>
      <div id="board">
        <div id="board_main">
          <div id="buttons">
            <a href="notice(관리자글쓰기).html">
              <button type="button" class="write_btn yb" style="float: none">
                글쓰기
              </button></a
            >
            <button type="button" class="remove_btn yb" style="float: none">
              삭제
            </button>
          </div>
          <table class="table" id="main_table" width="50%">
            <th><input type="checkbox" class="checkbox" /></th>
            <th>번호</th>
            <th>제목</th>
            <th>작성자</th>
            <th>작성일</th>
            <th>조회</th>
            <tr>
              <!-- 첫번째 줄 시작-->
              <th><input type="checkbox" class="checkbox" /></th>
              <td>공지</td>
              <td>개인정보처리방침 개정 내용 사전안내</td>
              <td>관리자</td>
              <td>2020-10-02</td>
              <td>1000</td>
            </tr>
            <!-- 첫번째 줄 끝-->
            <tr>
              <!-- 두번째 줄 시작-->
              <th><input type="checkbox" class="checkbox" /></th>
              <td>공지</td>
              <td>댓글 이벤트 당첨자 공지</td>
              <td>관리자</td>
              <td>2020-10-03</td>
              <td>800</td>
            </tr>
            <!-- 두번째 줄 끝-->
          </table>
          <div class="search_bar">
            <input type="checkbox" id="name" name="name"/>
            <label for="name">이름　</label>
            <input type="checkbox" name="title" />
            <label for="title">제목　</label>
            <input type="checkbox" name="contents" />
            <label for="contents">내용　</label>
            <input type="text" id="search-box" />
            <button type="button" class="search-btn yb" style="float: none;">
              검색
            </button>
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
  <script src="../../../JS/menubar.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>