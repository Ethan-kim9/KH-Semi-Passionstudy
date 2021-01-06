<%@page import="java.util.ArrayList"%>
<%@page import="com.passionStudy.passion.manager.model.vo.ManagerMemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
  <%
  		ArrayList<ManagerMemberVo> list = (ArrayList<ManagerMemberVo>)request.getAttribute("list"); 
  %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
  </head>

  <body>
      <div class="tabtype btn_align_center tabtype_style_edit">
      <div class="tabtype_wrapper">
        <ul class="manager_ul_style">
          <li>
            <a href="manager.MemberSearch"><button class="btn1 on">회원 관리</button></a>
          </li>
          <li>
            <a href="manager.SalesSearch"><button class="btn2">매출 조회</button></a>
          </li>
          <li>
            <a href="manager.ProductSearch"><button class="btn3">상품 관리</button></a>
          </li>
        </ul>
      </div>
    </div>

<div class="membersearch-box">
        <form class="membersearch" method="post" action= "manager.MemberSearch">
          <label for="membersearch--input" class="membersearch--label">이름을 입력하세요</label>
          <br />
          <input type="input" class="membersearch--input" id="SearchName" name="SearchName"/>
          <input type="submit" value="검색" />
        </form>
      </div>

      <div class="membersearch__member_box">
        <!-- 검색이 완료되면 표시 되는 부분-->
        <div class="membersearch__member_detail_box">
        <!-- 블렉리스트를 체크하는 로직 -->
        <% for(ManagerMemberVo mmv : list) {%>
			<% boolean Blacklistcheck = true;
			if( mmv.getMemStatus().charAt(0) == 'N'){
				Blacklistcheck = false;
			}
			%>

          <div class="member-icon-box"><%if(!Blacklistcheck) { %>🔥</div> <% } else { %> 💀 </div><%} %>
          <!-- 블랙리스트면 '💀'로 표시-->
          
          <h1 class="member_detail_name">이름 : <%= mmv.getMemName() %></h1>
          <hr />
          <h2 class="member_detail_point">전화번호 : <%= mmv.getMemPhone() %></h2>
          <hr />
          <h1 class="member_detail_coupon">포인트 : <%= mmv.getMemPoint() %></h1>
          <hr />
	<%} %>
        </div>
        <!-- 관리자가 설정하기 위한 부분-->

        <div class="membersearch__member_edit_box">
          <!-- 비밀번호 변경 설정 -->

          <div class="input-group mb-3">
            <input
              type="text"
              class="form-control"
              placeholder="비밀번호 변경"
              disabled="disabled"
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
              disabled="disabled"
              aria-label="Recipient's username"
              aria-describedby="button-addon2"
            />
            <div class="input-group-append">
            <a href ="manager.EditPiont" class = "editPoint">
              <button
                class="btn btn-outline-secondary"
                type="button"
                id="button-addon2"
              >
                 EDIT
              </button>
			</a>
            </div>
          </div>
          <!-- 회원 쿠폰 설정 -->

          <div class="input-group mb-3">
            <input
              type="text"
              class="form-control"
              placeholder="회원 쿠폰 설정"
              disabled="disabled"
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
              disabled="disabled"
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
