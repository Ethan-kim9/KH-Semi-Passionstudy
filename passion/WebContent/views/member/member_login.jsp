<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
  </head>
  <body>



    <!-- 로그인 -->
    <section>
      <div class="login_wrap">
        <form class="form_wrap_signup" onsubmit="return login();" action="login.do" method="post" >
          <h2 class="member_title">로그인</h2>
          <div class="login_box">
            <form class="login_main">
              <div class="inpbx">
                <input
                  type="text"
                  id="userid"
                  formcontrolname="userid"
                  placeholder="아이디 (이메일)"
                  name="userid"
                  autocorrect="off"
                  autocapitalize="none"
                  class="login_main"
                  required
                />
              </div>
              <div class="inpbx">
                <input
                  type="password"
                  id="userpwd"
                  formcontrolname="userpwd"
                  placeholder="비밀번호"
               	  name ="userpassword"
                  class="login_main"
                  required
                />
              </div>

              <button type="submit" class="btn_login">로그인하기 </button>
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
            <a href="index.jsp?inc=./views/member/member_signin.jsp" class="member_go">계정이 없으신가요? 간편가입하기</a>
            <ul class="linkarea">
              <li><a href="index.jsp?inc=./views/member/member_find.jsp">아이디 (이메일) 찾기</a></li>
              <li><a href="index.jsp?inc=./views/member/member_find.jsp">비밀번호 찾기</a></li>
            </ul>
          </div>
        </form>
      </div>
    </section>
  </body>
  	  <script src="resources/JS/pagesjs/member_login.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>
