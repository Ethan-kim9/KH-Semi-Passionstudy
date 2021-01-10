<%@page import="com.passionStudy.passion.member.model.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
  <head>
      <title>mypage- 1대1 문의</title>

      <script>
      	/* html이 다 로딩되고 실행 */
      	$(document).ready(function(){
      		// state-complete를 클릭했을 때
      		$(".state-complete").click(function(){
      			var submenu = $(this).next("ul");
      			//  submenu가 화면상에 보인다면 위로 접고, 아니면 펼치기
      			if(submenu.is(":visible")){
      				submenu.slideUp();
      			}else {
      				submenu.slideDown();
      			}
      		});
      		
      	});
      
      </script>
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
                <a href="MyReservation"><button class="btn2">나의 예약 관리</button></a>
            </li>
            <li>
                <a href="MyPage1on1Proc.do"><button class="btn3 on">나의 활동</button></a>
            </li>
            <li>
              <a href="index.jsp?inc=./views/mypage/mypage_edit.jsp"><button class="btn4">설정</button></a>
          </li>
          </ul>
      </div>
  </div>  

    <!-- 나의 활동 1대1 문의 내역 없을 경우-->
    <section class="mypage-section myQuestion myQuestion_Default">
      <div class="mypage-container">
        <div class="container_mypage-management container_mypage-1on1">
          <ul>
            <li class="mypage-single-menu">
              <button class="first-teb-button on" style="cursor:not-allowed; pointer-events:none;">1:1 문의 내역</button>
            </li>
          </ul>
        </div>
       
       <c:if test="${count == 0 }">
	        <div class="mypage-inquery-nothing">
	          <svg
	            id="Capa_1"
	            enable-background="new 0 0 551.13 551.13"
	            height="120"
	            viewBox="0 0 551.13 551.13"
	            width="120"
	            xmlns="http://www.w3.org/2000/svg">
	            <path
	              d="m275.565 0c-151.944 0-275.565 123.621-275.565 275.565s123.621 275.565 275.565 275.565 275.565-123.621 275.565-275.565-123.621-275.565-275.565-275.565zm0 516.685c-132.955 0-241.119-108.164-241.119-241.119s108.164-241.12 241.119-241.12 241.12 108.164 241.12 241.119-108.165 241.12-241.12 241.12z"
	            />
	            <path d="m258.342 378.902h34.446v34.446h-34.446z" />
	            <path d="m258.344 137.783h34.444v206.674h-34.444z" />
	          </svg>
	          <p>작성하신 문의 내역이 없습니다.</p>
	        </div>
        </c:if>
        <!-- <div class="go-inquery">
          <a href="views/board/1on1/board_1on1.jsp" class="go-inquery_button">
            1:1문의하기
          </a>
        </div> -->
      </div>
    </section>

    <!-- 나의 활동 1대1 문의 내역 있을 경우-->
    <section class="mypage-section myQuestion myQuestion_has_Question">
        
        <div class="mypage-inquery">
          <ul>
            <!--li 1개당 답변완료 틀 1개-->
            <li id="12345">
			<c:forEach var="qna" items="${qnalist }">
              <p class="state-complete"><!-- onclick="spread('hiddenContent');" -->
                <strong>
                	<c:choose>
                		<c:when test="${qna.boardAnswer == 0 }">
                			답변대기
                		</c:when>
                		<c:otherwise>
                			답변완료
                		</c:otherwise>
                	</c:choose>
                </strong>
                ${qna.qnaTitle }
                <span class="state-date">${qna.qnaDate }</span>
              </p>
              
              <!--사용자가 클릭하지 않는 이상 보이지 않는 블록-->
              <ul  class="expansion">	<!-- id="hiddenContent" -->
                <li class="question">
                  <strong>${qna.category }</strong>
                  <!-- <ul></ul> -->
                  <p>${qna.qnaContent }</p>
                </li>
                
                <c:if test="${qna.boardAnswer == 1 }">
	                <li class="answer">
	                  <strong>답변완료</strong>
	                  <p>
		                  ${qna.answerContent }
	                  </p>
	                </li>
                </c:if>
              </ul>
              <!--  -->
    </c:forEach>
             </li>
          </ul>
        </div>

        <div class="go-inquery">
          <a href="index.jsp?inc=./views/board/1on1/board_1on1.jsp" class="go-inquery_button">
            1:1문의하기
          </a>
        </div>
      
    </section>

  </body>
  <!-- <script src="resources/JS/pagesjs/mypage_1on1_click.js"></script> -->
</html>
