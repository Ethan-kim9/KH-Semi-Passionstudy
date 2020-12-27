<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
      <title>mypage- 회원정보수정/ 비밀번호 변경</title>
      <script src="https://code.jquery.com/jquery-3.5.1.js"  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
  </head>
  <body>

    <div class="cont_header">
      <div class="cont_wrapper">
        <h1>마이 페이지</h1>
      </div>
    </div>

    <div class="tabtype">
      <div class="tabtype_wrapper mypage_tabtype_wrapper">
          <ul>
            <li>
                <a href="index.jsp?inc=./views/mypage/mypage.jsp"><button class="btn1">나의 정보</button></a>
            </li>
            <li>
                <a href="index.jsp?inc=./views/mypage/mypage_reservation.jsp"><button class="btn2">나의 예약 관리</button></a>
            </li>
            <li>
                <a href="index.jsp?inc=./views/mypage/mypage_1on1.jsp"><button class="btn3">나의 활동</button></a>
            </li>
            <li>
              <a href="index.jsp?inc=./views/mypage/mypage_edit.jsp"><button class="btn4 on">설정</button></a>
          </li>
          </ul>
      </div>
  </div>  

    <!-- 회원 정보수정 -->
    <section class="mypage-section">
      <div class="mypage-container">
        <!-- 예약확인, 취소내역 감싸는 div -->
        <div class="container_mypage-management edit_btns">
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
            <a class="edit-user-header_withdrawal" href="onclick/mypage_withdrawal.jsp"
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
              <p class="edit-user-form-email-warn">관리자에게 문의 바랍니다.</p>
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

 
  </body>
  <script src="resources/JS/pagesjs/mypage_edit_click.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>