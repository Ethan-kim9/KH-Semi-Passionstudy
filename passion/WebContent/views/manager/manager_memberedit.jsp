<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
  </head>

  <body>
<div class="membersearch-box">
        <form class="membersearch" method="post" action= "manager.MemberSearch" name="SearchName">
          <label for="membersearch--input" class="membersearch--label">이름을 입력하세요</label>
          <br />
          <input type="search" class="membersearch--input" id="SearchName"/>
          <input type="submit" value="검색" />
        </form>
      </div>

      <div class="membersearch__member_box">
        <!-- 검색이 완료되면 표시 되는 부분-->
        <div class="membersearch__member_detail_box">
          <div class="member-icon-box">🔥</div>
          <!-- 블랙리스트면 '💀'로 표시-->
          <h1 class="member_detail_name">이름 : 김떡만</h1>
          <hr />
          <h1 class="member_detail_point">Coupon: 2개</h1>
          <hr />
          <h1 class="member_detail_coupon">포인트 : 3000p</h1>
          <hr />
        </div>

        <!-- 관리자가 설정하기 위한 부분-->

        <div class="membersearch__member_edit_box">
          <!-- 비밀번호 변경 설정 -->

          <div class="input-group mb-3">
            <input
              type="text"
              class="form-control"
              placeholder="비밀번호 변경"
              aria-label="Recipient's username"
              aria-describedby="button-addon2"
            />

            <div class="input-group-append">
              <button
                class="btn btn-outline-secondary"
                type="button"
                id="button-addon2"
              >
                EDIT
              </button>
            </div>
          </div>

          <!-- 포인트 설정 -->

          <div class="input-group mb-3">
            <input
              type="text"
              class="form-control"
              placeholder="포인트 변경"
              aria-label="Recipient's username"
              aria-describedby="button-addon2"
            />
            <div class="input-group-append">
              <button
                class="btn btn-outline-secondary"
                type="button"
                id="button-addon2"
              >
                EDIT
              </button>
            </div>
          </div>

          <!-- 회원 쿠폰 설정 -->

          <div class="input-group mb-3">
            <input
              type="text"
              class="form-control"
              placeholder="회원 쿠폰 설정"
              aria-label="Recipient's username"
              aria-describedby="button-addon2"
            />
            <div class="input-group-append">
              <button
                class="btn btn-outline-secondary"
                type="button"
                id="button-addon2"
              >
                EDIT
              </button>
            </div>
          </div>

          <!-- 블랙리스트 설정 -->

          <div class="input-group mb-3">
            <input
              type="text"
              class="form-control"
              placeholder="블랙리스트 설정"
              aria-label="Recipient's username"
              aria-describedby="button-addon2"
            />
            <div class="input-group-append">
              <button
                class="btn btn-outline-secondary"
                type="button"
                id="button-addon2"
              >
                EDIT
              </button>
            </div>
          </div>
        </div>
      </div>
  </body>

  <script src="resources/JS/pagesjs/manager_managing_click.js"></script>
  </html>
