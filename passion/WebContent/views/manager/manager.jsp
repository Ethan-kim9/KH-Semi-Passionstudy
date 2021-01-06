<%@page import="com.passionStudy.passion.member.model.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
<style>
.MemberSearch_default{
	height: 50vh;
}
</style>
  </head>

  <body>
    <div class="cont_header">
      <div class="cont_wrapper">
        <h1>관리메뉴</h1>
      </div>
    </div>


    <div class="tabtype btn_align_center tabtype_style_edit">
      <div class="tabtype_wrapper">
        <ul class="manager_ul_style">
          <li>
            <button class="btn1 on">회원 관리</button>
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

    <!-- 회원 관리와 관련된 박스-->
    <section class="manager_member__section manager_section">
    
	<div class="membersearch-box MemberSearch_default">
        <form class="membersearch" method="post" action= "manager.MemberSearch">
          
          <label for="membersearch--input" class="membersearch--label">조회할 회원의 이름을 입력하세요</label>
          
          <br />
          
          <input type="text" class="membersearch--input" id="SearchName" name = "SearchName"/>
          
          <input type="submit" value="검색" />
        </form>
      </div>
    </section>
  
  </body>
  </html>
