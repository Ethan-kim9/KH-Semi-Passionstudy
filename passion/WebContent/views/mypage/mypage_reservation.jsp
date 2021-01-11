<%@page import="com.passionStudy.passion.member.model.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%-- <%
	MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
%> --%>
<!DOCTYPE html>
<html>
  <head>
      <title>mypage-예약관리</title>
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
                <a href="Mypage.Info"><button class="btn1">나의 정보</button></a>
            </li>
            <li>
                <a href="MyReceipt"><button class="btn2 on">나의 예약 관리</button></a>
            </li>
            <li>
                <a href="MyPage1on1Proc.do"><button class="btn3">나의 활동</button></a>
            </li>
            <li>
              <a href="MyInfoEditProc"><button class="btn4">설정</button></a>
          </li>
          </ul>
      </div>
  </div>  
    
    <section class="mypage-section">
      <div class="mypage-container">
        <div class="container_mypage-management">
          <ul>
            <li>
              <button class="reservation_btn1 on">예약 확인</button>
            </li>
            <li>
              <button class="reservation_btn2">취소 내역</button>
            </li>
          </ul>
        </div>
      </div>
    </section>

    <!-- 예약 확인-->
    <section class="section mypage_reservation mypage_reservation1">
      <div class="mypage-container">
        <div class="reservation-state_container">
         <table class="reservation-state_table">
            <thead>
              <tr>
                <th class="table-num">
                	방번호
                </th>
                <th class="table-room">스터디룸명</th>
                <th class="table-type">스터디룸 타입</th>
                <th class="table-date">예약일</th>
                <th class="table-time">이용시간</th>
                <th class="table-state">상태</th>
                <th class="table-lookup">조회</th>
              </tr>
            </thead>
            
            <tbody>
            	<c:forEach var="list" items="${myroomList }">
            	<c:if test="${list.resCon eq 'Y' || list.resCon eq 'O' }">
              	<tr>
	                <td>${list.roomNo }번</td>
	                <td> ${list.roomName }</td>
	                <td>${list.roomType }type</td>
	            
	                <td>${list.resDate }</td>
	                <td>${list.resTime }시간</td>
	                <td>
	                	<c:choose>
	                		<c:when test="${list.resCon eq 'Y'}">
	                			예약
	                		</c:when>
	                		<c:otherwise>
	                			사용됨
	                		</c:otherwise>
	                	</c:choose>
	                </td>
	            
	                <td>
	                  <button
	                    class="table-check-details-information"
	                    type="button"
	                    onclick="location.href='MyreceiptDetail?roomNo=${list.roomNo }'" >
	                    상세조회
	                  </button>
	                </td>
              </tr>
              </c:if>
            </c:forEach>
            
            <c:set var="my" value="${myroomList }"/>
            	<c:if test="${my eq '[]' }">
            <tr>
            	<td colspan="7" class="reservation-nothing">
            		 <svg
		            id="Capa_1"
		            enable-background="new 0 0 551.13 551.13"
		            height="130"
		            viewBox="0 0 551.13 551.13"
		            width="130"
		            xmlns="http://www.w3.org/2000/svg">
		            <path
		              d="m275.565 0c-151.944 0-275.565 123.621-275.565 275.565s123.621 275.565 275.565 275.565 275.565-123.621 275.565-275.565-123.621-275.565-275.565-275.565zm0 516.685c-132.955 0-241.119-108.164-241.119-241.119s108.164-241.12 241.119-241.12 241.12 108.164 241.12 241.119-108.165 241.12-241.12 241.12z"
		            />
		            <path d="m258.342 378.902h34.446v34.446h-34.446z" />
		            <path d="m258.344 137.783h34.444v206.674h-34.444z" />
		          </svg>
		          <p> 예약 내역이 없습니다.</p>
            	</td>
            </tr>
            </c:if>
            </tbody>
          </table> 
          
          <div class="reservation-management-pages-count">
            <div>
              <span class="button-prev"><</span>
            </div>
            <ul>
              <li><a class="page-number" href="#">1</a></li>
            </ul>
            <div>
              <span class="button-next">></span>
            </div>
          </div> 
        </div>
      </div>
    </section>

	<!-- --------------------------------------------------------- -->

    <!-- 예약 취소-->
    <section class="section mypage_reservation mypage_reservation2">
      <div class="mypage-container">
        <div class="reservation-state_container">
          <table class="reservation-state_table">
            <thead>
              <tr>
                <th class="table-num">번호</th>
                <th class="table-room">스터디룸명</th>
                <th class="table-type">스터디룸 타입</th>
                <th class="table-date">예약일</th>
                <!-- <th class="table-time">취소일</th> -->
                <th class="table-state">상태</th>
                <th class="table-lookup">조회</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach var="list" items="${myroomList }">
            <c:if test="${list.resCon eq 'C'}">
              <tr>
                <td>${list.roomNo }번</td>
                <td>${list.roomName }</td>
                <td>${list.roomType }</td>
                <td>${list.resDate }</td>
                <!-- <td>2020-11-02</td> -->
                <td class="reservation-state-cancel">취소</td>
                <td>
                  <button
                    class="table-check-details-information"
                    type="button"
                    onclick="location.href='MyreceiptDetail?roomNo=${list.roomNo }'">
                    상세조회
                  </button>
                </td>
              </tr>
            </c:if>
            </c:forEach>
            
            <c:set var="my" value="${myroomList }"/>
            	<c:if test="${my eq '[]' }">
            <tr>
            	<td colspan="7" class="reservation-nothing">
            		 <svg
		            id="Capa_1"
		            enable-background="new 0 0 551.13 551.13"
		            height="130"
		            viewBox="0 0 551.13 551.13"
		            width="130"
		            xmlns="http://www.w3.org/2000/svg">
		            <path
		              d="m275.565 0c-151.944 0-275.565 123.621-275.565 275.565s123.621 275.565 275.565 275.565 275.565-123.621 275.565-275.565-123.621-275.565-275.565-275.565zm0 516.685c-132.955 0-241.119-108.164-241.119-241.119s108.164-241.12 241.119-241.12 241.12 108.164 241.12 241.119-108.165 241.12-241.12 241.12z"
		            />
		            <path d="m258.342 378.902h34.446v34.446h-34.446z" />
		            <path d="m258.344 137.783h34.444v206.674h-34.444z" />
		          </svg>
		          <p> 취소 내역이 없습니다.</p>
            	</td>
            </tr>
            </c:if>
            
            </tbody>
          </table>

          <div class="reservation-management-pages-count">
            <div>
              <span class="button-prev"><</span>
            </div>
            <ul>
              <li><a class="page-number" href="">1</a></li>
            </ul>
            <div>
              <span class="button-next">></span>
            </div>
          </div>
        </div>
      </div>
    </section>


  </body>
  <script src="resources/JS/pagesjs/mypage_reservation_click.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>
