<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>

    <link rel="stylesheet" href="../../css/styles.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
  </head>
  <body>
 
  <div class="find_id_btn">
      <div class="login_wrap">
        <div class="tabtype">
          <div class="tabtype_wrapper">
            <ul>
              <li>
                <button class="btn1 on">아이디 찾기</button>
              </li>
              <li>
                <button class="btn2">비밀번호 찾기</button>
              </li>
            </ul>
          </div>
        </div>

        <div class="member_tab_cnt">
          <div class="member_login_info">
            <p>
            	본인인증을 통해 아이디(이메일) 확인 및
              <br />
              	비밀번호를 변경하실 수 있습니다.
            </p>
            <br/>
            <div class="field_id_box">
              <section class="btn_id_push">
                <div class="inpbx">
                  <input
                    type="text"
                    id="username"
                    name="username"
                    placeholder="이름"
                    autocorrect="off"
                    autocapitalize="none"
                    required
                    autofocus
                  />
                </div>
                <div class="inpbx">
                  <input
                    type="text"
                    id="userphnumber"
                    name="userphnumber"
                    placeholder="연락처(전화번호)"
                    autocorrect="off"
                    autocapitalize="none"
                    required
                  />
                </div>
              </section>

              <section class="btn_password_push">
                  
                  <div class="inpbx">
                    <input
                      type="text"
                      id="userid"
                      name="userid"
                      placeholder="아이디"
                      autocorrect="off"
                      autocapitalize="none"
                      required
                    />
                  </div>
              </section>
            </div>

          </div>
        </div>
        <section>
          <input type="button" class="btn btn_me active" value="본인인증 하기" />
        </section>
      </div>
    </div>

  </body>
  <script src="resources/JS/menubar.js"></script>
  <script src="resources/JS/pagesjs/member_find_click.js"></script>
</html>