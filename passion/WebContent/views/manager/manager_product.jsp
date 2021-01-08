<%@page import="com.passionStudy.passion.member.model.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberVo loginMember 	= (MemberVo)session.getAttribute("loginMember");
%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
  </head>

  <body>
  
      	<% 
    	if(loginMember==null){%>
    		<script >
    		alert('접근 권한이 없습니다.');
    		location.href='index.jsp';

    		</script>
    		<%}%>
    	<%	
    	if(loginMember!=null){
    	if(loginMember.getAdminCheck().charAt(0)!= 'A'){%>
    	<script>
    	alert('접근 권한이 없습니다.');
    	location.href='index.jsp';

    	</script>
    	<%}}%>
  
      <div class="cont_header">
      <div class="cont_wrapper">
        <h1>관리메뉴</h1>
      </div>
    </div>
  
   <div class="tabtype btn_align_center tabtype_style_edit">
      <div class="tabtype_wrapper">
        <ul class="manager_ul_style">
          <li>
            <a href="menu.Manager"><button class="btn1">회원 관리</button></a>
          </li>
          <li>
            <a href="manager.SalesSearch"><button class="btn2">매출 조회</button></a>
          </li>
          <li>
            <a href="manager.ProductSearch"><button class="btn3 on">상품 관리</button></a>
          </li>
        </ul>
      </div>
    </div>
  
  
 <div class="product_title_box">
        <h1>스터디룸 관리</h1>
      </div>
      <div class="product_table_Box">
        <table class="table">
          <thead class="thead-dark">
            <tr>
              <th scope="col">번호</th>
              <th scope="col">스터디룸 명</th>
              <th scope="col">스터디룸 타입</th>
              <th scope="col">가격</th>
              <th scope="col">상태</th>
              <th scope="col">시간설정</th>
              <th scope="col">수정</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row">1</th>
              <td>타오르는 열정</td>
              <td>특실 12인실</td>
              <td>30,000원</td>
              <td>사용가능</td>
              <td>AM 10 - PM 12</td>
              <td>
                <button type="button" class="btn btn-dark btn_size_edit">
                  Edit
                </button>
              </td>
            </tr>
            <tr>
              <th scope="row">2</th>
              <td>열정 만수르 1</td>
              <td>단체실 8인실</td>
              <td>22,000원</td>
              <td>사용가능</td>
              <td>AM 10 - PM 12</td>
              <td>
                <button type="button" class="btn btn-dark btn_size_edit">
                  Edit
                </button>
              </td>
            </tr>
            <tr>
              <th scope="row">3</th>
              <td>열정 만수르 2</td>
              <td>단체실 8인실</td>
              <td>22,000원</td>
              <td>사용가능</td>
              <td>AM 10 - PM 12</td>
              <td>
                <button type="button" class="btn btn-dark btn_size_edit">
                  Edit
                </button>
              </td>
            </tr>
            <tr>
              <th scope="row">4</th>
              <td>열정과다 1</td>
              <td>일반실 6인실</td>
              <td>16,000원</td>
              <td>사용가능</td>
              <td>AM 10 - PM 12</td>
              <td>
                <button type="button" class="btn btn-dark btn_size_edit">
                  Edit
                </button>
              </td>
            </tr>
            <tr>
              <th scope="row">5</th>
              <td>열정과다 2</td>
              <td>일반실 6인실</td>
              <td>16,000원</td>
              <td>사용가능</td>
              <td>AM 10 - PM 12</td>
              <td>
                <button type="button" class="btn btn-dark btn_size_edit">
                  Edit
                </button>
              </td>
            </tr>
            <tr>
              <th scope="row">6</th>
              <td>열정과다 3</td>
              <td>일반실 6인실</td>
              <td>16,000원</td>
              <td>사용가능</td>
              <td>AM 10 - PM 12</td>
              <td>
                <button type="button" class="btn btn-dark btn_size_edit">
                  Edit
                </button>
              </td>
            </tr>
            <tr>
              <th scope="row">7</th>
              <td>개인실 1</td>
              <td>개인실 1인실</td>
              <td>10,000원</td>
              <td>사용가능</td>
              <td>AM 10 - PM 12</td>
              <td>
                <button type="button" class="btn btn-dark btn_size_edit">
                  Edit
                </button>
              </td>
            </tr>
            <tr>
              <th scope="row">8</th>
              <td>개인실 2</td>
              <td>개인실 1인실</td>
              <td>10,000원</td>
              <td>사용가능</td>
              <td>AM 10 - PM 12</td>
              <td>
                <button type="button" class="btn btn-dark btn_size_edit">
                  Edit
                </button>
              </td>
            </tr>
            <tr>
              <th scope="row">9</th>
              <td>개인실 3</td>
              <td>개인실 1인실</td>
              <td>10,000원</td>
              <td>사용가능</td>
              <td>AM 10 - PM 12</td>
              <td>
                <button type="button" class="btn btn-dark btn_size_edit">
                  Edit
                </button>
              </td>
            </tr>
            <tr>
              <th scope="row">10</th>
              <td>개인실 4</td>
              <td>개인실 1인실</td>
              <td>10,000원</td>
              <td>사용가능</td>
              <td>AM 10 - PM 12</td>
              <td>
                <button type="button" class="btn btn-dark btn_size_edit">
                  Edit
                </button>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
  </body>

  <script src="resources/JS/pagesjs/manager_managing_click.js"></script>
  </html>
