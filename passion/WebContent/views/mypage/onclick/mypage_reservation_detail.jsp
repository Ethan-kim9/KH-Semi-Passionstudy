<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String contextPath = request.getContextPath();
%>

<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="../../../<%=contextPath %>/resources/CSS/styles.css" />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <title>예약-상세조회</title>
    <script
      src="https://code.jquery.com/jquery-3.5.1.js"
      integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
      crossorigin="anonymous"
    ></script>
  </head>

  <body>
    <section class="mypage-section mypage-reservation-secion-pop">
    
      <div class="mypage-container">
        <div class="container_mypage-management">
          <ul>
            <li class="mypage-single-menu">
              <a href="MyReceipt">
              <button class="reservation-back-button on">돌아가기</button>
              </a>
            </li>
          </ul>
        </div>
        
        <div class="reservation-state_container">
        
          <table class="reservation-state_table">
            <thead>
    		<c:set var="my" value="${receipt }"/>
              <tr>
                <th colspan="3" class="table-room">스터디룸명</th>
                <th class="table-date">예약일</th>
                <th class="table-time">이용시간</th>
                <th class="table-price">판매가</th>
                <th class="table-state">진행현황</th>
              </tr>
            </thead>
            
            <tbody>
          	  <%-- <c:forEach var="my" items="${receipt }"> --%>
              <tr>
                <td rowspan="2">
                  <img src="${my.roomFile }" />
                </td>
                <td colspan="2" class="table-body-title">${my.roomName }</td>
                <td rowspan="2">${my.resDate }</td>
                <td rowspan="2">
                <c:choose>
	                		<c:when test="${my.resTime eq '1' }">
	                			08:00 ~ 10:00
	                		</c:when>
	                		<c:when test="${my.resTime eq '2' }">
	                			10:00 ~ 12:00
	                		</c:when>
	                		<c:when test="${my.resTime eq '3' }">
	                			12:00 ~ 14:00
	                		</c:when>
	                		<c:when test="${my.resTime eq '4' }">
	                			15:00 ~ 17:00
	                		</c:when>
	                		<c:when test="${my.resTime eq '5' }">
	                			17:00 ~ 19:00
	                		</c:when>
	                		<c:otherwise>
	                			19:00 ~ 21:00
	                		</c:otherwise>
	                	</c:choose>
                </td>
                <td rowspan="2">
                  ${my.payPrice }
                  <p>원</p>
                </td>
                <td rowspan="2" class="table-check-state-information">
                 <c:choose>
                 	<c:when test="${my.resCon eq 'Y' }">
                 		예약
                 	</c:when>
                 	<c:when test="${my.resCon eq 'C' }">
                 		취소
                 	</c:when>
                 	<c:otherwise>
                 		사용됨
                 	</c:otherwise>
                 </c:choose>
                </td>
              </tr>
              <tr>
                <td colspan="2" class="table-body-explanation">
                  ${my.roomInfo }
                </td>
              </tr>
         <%--  </c:forEach> --%>
            </tbody>
          </table>
        </div>
      
     <%-- <c:forEach var="my" items="${receipt }">    --%>
        <div class="reservation-order-information">
          <h3 class="reservation-order-information title">주문 정보</h3>
        </div>
        <table class="reservation-order_table">
          <thead>
            <tr>
              <th class="table-order-num">상품번호</th>
              <th class="table-order-date">주문일자</th>
              <th class="table-order-customer">주문자</th>
              <th class="table-order-phone">연락처</th>
              <th class="table-order-email">이메일</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td> ${my.roomNo }</td>
              <td> ${my.payDate }</td>
              <td> ${my.resName }</td>
              <td> ${my.resPhone }</td>
              <td> ${my.resEmail }</td>
            </tr>
          </tbody>
        </table>
        
        <div class="reservation-payment-information">
          <h3 class="reservation-payment-information title">결제 정보</h3>
        </div>
        <table class="reservation-payment_table">
          <thead>
            <tr>
              <th class="table-payment-price">상품금액</th>
              <th class="table-payment-discount">할인금액</th>
              <th class="table-payment-point">포인트 및 기타결제</th>
              <th class="table-payment-total">총 결제금액</th>
              <th class="table-payment-how">결제 방법</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>
                ${my.roomPrice }
                <p>원</p>
              </td>
              <td>
                0
                <p>원</p>
              </td>
              <td>
                0
                <p>원</p>
              </td>
              <td>
                 ${my.payPrice}
                <p>원</p>
              </td>
              <td>
				<c:choose>
					<c:when test="${my.payInfo eq 'C' }">
						신용카드
					</c:when>
					<c:when test="${my.payInfo eq 'P' }">
						현금결제
					</c:when>
					<c:when test="${my.payInfo eq 'T' }">
						무통장입금
					</c:when>
					<c:otherwise>
						현장결제
					</c:otherwise>
				</c:choose>
			  </td>
            </tr>
          </tbody>
        </table>
        <!-- <div class="reservation-get-point">
          <h4>열정스터디카페 포인트 예상 적립:</h4>
          <span>
            500
            <p>P</p>
          </span>
        </div> -->
    
      </div>
      
    </section>
  <script src="../../../resources/JS/menubar.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  </body>
</html>