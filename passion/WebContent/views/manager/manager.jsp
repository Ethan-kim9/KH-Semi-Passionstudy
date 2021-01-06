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
<%
	String memberedit = "./manager_memberedit.jsp";

	String product = "./manager_product.jsp";

	String sales = "./manager_sales.jsp";


%>
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
            <button class="btn2">매출 조회</button>
          </li>
          <li>
            <button class="btn3">상품 관리</button>
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
          
          <input type="input" class="membersearch--input" id="SearchName" name = "SearchName"/>
          
          <input type="submit" value="검색" />
        </form>
      </div>
    </section>

    <!-- 매출과 관련된 섹터 -->
    
    <section class="manager_sales__section manager_section">
		<jsp:include page="<%=product %>"/>
    </section>

    <!-- 상품관리와 관련된 섹터 -->

    <section class="manager_product__section manager_section">
      <!-- 상품관리관련 코드-->
     	<jsp:include page="<%=sales %>"/>
    </section>
    
  
  </body>

  <script src="resources/JS/pagesjs/manager_managing_click.js"></script>
  </html>
