<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
    <link rel="stylesheet" href="resources/CSS/styles.css" />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    />
    <script
      src="https://code.jquery.com/jquery-3.5.1.js"
      integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
      crossorigin="anonymous"
    ></script>
  </head>
  <body>

	<!-- header 영역 -->
	<%@include file="views/frame/header.jsp" %>
		
	<!-- 메인 contents 영역 -->
    <main class="mainpageSection">
      <div id="mainpage">
        <div id="swipeImage" class="mainPaddingBottom imgFullDiv">
          <img
            src="https://post-phinf.pstatic.net/MjAxODAzMDhfMjU0/MDAxNTIwNDkzNjU0MzY5.vvQxr_1yhy_VLD2iuaKrDby-YHmBxeum7ObPFCIe8MAg.6vh9mDuY3tIltj1tOiEQkALLnMlA7-wXWHd636mSG0Ig.PNG/4.png?type=w1200"
          />
          <div id="swipeImageTitle">
            <h1 id="swipeImageTitlePassion">PASSION</h1>
            <h1 id="swipeImageTitleStudyCafe">STUDY CAFE</h1>
          </div>
        </div>
          <!--  버튼
          <button type="button" id="swipeImageButtonLeft">〈</button>
          <button type="button" id="swipeImageButtonRight">〉</button>
          <div id="swipeImageButtonDiv">
            <button
              type="button"
              class="swipeImageButton"
              id="swipeImageButton01"
            >
              1
            </button>
            <button
              type="button"
              class="swipeImageButton"
              id="swipeImageButton02"
            >
              2
            </button>
            <button
              type="button"
              class="swipeImageButton"
              id="swipeImageButton03"
            >
              3
            </button>
            <button
              type="button"
              class="swipeImageButton"
              id="swipeImageButton04"
            >
              4
            </button>
        </div>
          -->
          
        </div>
        <div id="showMainContainer" class="mainPaddingBottom">
          <div id="mainInterior" class="mainContainer">
            <div
              id="mainInteriorChar"
              class="mainContainerContents mainFloatLeft"
            >
              <h3>INTERIOR</h3>
              <h1>PASSION DESIGN</h1>
              <p>열정 스터디 카페의 공간 노하우가 집약된</p>
              <p>개방적인 분위기의 카페가 탄생되었습니다</p>
              <p>클래식한 인테리어와 자유로운 분위기를 경험해보세요</p>
              <a href="">바로가기></a>
            </div>
            <div
              id="mainInteriorImg"
              class="mainContainerContents mainFloatRight imgFullDiv"
            >
              <!--<img
                src="https://img-sumaiweb.com/wp-content/uploads/2015/10/shutterstock_305711921-640x427.jpg"
              />-->
              <img src="resources/images/rooms/rounge.jpg" >
            </div>
          </div>
          <div id="mainService" class="mainContainer">
            <div
              id="mainServiceImg"
              class="mainContainerContents mainFloatLeft imgFullDiv"
            >
              <img
                src="https://img.maisonkorea.com/2017/08/msk_598022b7d5cb0-768x512.jpg"
              />
            </div>
            <div
              id="mainServiceChar"
              class="mainContainerContents mainFloatRight"
            >
            <h3>SERVICE</h3>
            <h1>PERFECT SERVICE</h1>
            <p>열정 회원이라면 업계 1위의 교육 자료를</p>
            <p>무료로 배포해드립니다.</p>
            <p>학습과 취업에 필요한 자료를 제공하는</p>
            <p>열정의 서비스를 이용해보세요.</p>
            <a href="">바로가기></a>
            </div>
          </div>
        </div>
      <div id="mainExplanations" class="mainContainer mainPaddingBottom">
        <div id="" class="mainExplanations">
          <img
            src="https://www.flaticon.com/svg/static/icons/svg/3616/3616529.svg"
          />
          <h2>안전관리</h2>
          <p>- 입 / 퇴실 관리시스템</p>
          <p>- 소방 안전 관리</p>
          <p>- CCTV 통제관리</p>
          <p>- 회원들의 안전과 편안한 학습환경을 보장</p>
        </div>
        <div id="" class="mainExplanations">
          <img
            src="https://www.flaticon.com/svg/static/icons/svg/2987/2987853.svg"
          />
          <h2>교육서비스</h2>
          <p>- 수능 수험생 교육서비스</p>
          <p>- 성인 수험생 교육서비스</p>
        </div>
        <div id="" class="mainExplanations">
          <img
            src="https://www.flaticon.com/svg/static/icons/svg/106/106226.svg"
          />
          <h2>프리미엄 백색 소음기</h2>
          <p>
            소음 차단과 집중력 향상에 도움을 주는 백색소음기가 중앙컨트롤 형태로
            설치되어 있습니다.
          </p>
        </div>
        <div id="" class="mainExplanations">
          <img
            src="https://www.flaticon.com/svg/static/icons/svg/702/702814.svg"
          />
          <h2>편안한 조명</h2>
          <p>
            장시간 이용에도 눈이 편안한 조명 매장 내의 채광, 균등한 조도 설계로
            눈이 편안함
          </p>
        </div>
      </div>
      <div id="mainHowToCome" class="mainContainer">
        <div id="mainHowToComeMap" class="mainContainerContents mainFloatLeft">
          여기 대충 지도 api
          <img src="https://dimg.donga.com/wps/NEWS/IMAGE/2019/12/25/98961520.1.jpg"/>
        </div>
        <div id="mainHowToComeExplanations" class="mainContainerContents mainFloatRight">
          <h3>오시는길</h3>
          <p>버스</p>
          <p>선유고등학교/(구)강서세무서</p>
          <p>🚍지선 7612</p>
          <p>🚍간선 1000 / 1200 / 1300 / 1301 / 1302 / 1400 / 1500 / 1601</p>
          <p>당산역</p>
          <p>🚍지선 602 / 760 / 5620 / 5714 / 6514 / 6623 / 6631</p>
          <p>지하철</p>
          <p>🚝지하철 2, 9호선 당산역 12번 출구 400m</p>
        </div>
      </div>
      <div id="sideSelectMenu">
        <ul>
          <li>
            <a href="" class="mainSideMenu"
              ><img
                src="https://www.flaticon.com/svg/static/icons/svg/2948/2948239.svg"
            /></a>
          </li>
          <li>
            <a href="" class="mainSideMenu"
              ><img
                src="https://www.flaticon.com/svg/static/icons/svg/597/597177.svg"
            /></a>
          </li>
          <li>
            <a href="" class="mainSideMenu"
              ><img
                src="https://www.flaticon.com/svg/static/icons/svg/2950/2950657.svg"
            /></a>
          </li>
          <li>
            <a href="" class="mainSideMenu"
              ><img
                src="https://www.flaticon.com/svg/static/icons/svg/992/992703.svg"
            /></a>
          </li>
        </ul>
      </div>
    </main>

	<!-- footer 영역 -->
 	<%@include file="views/frame/footer.jsp" %>
 	
  </body>
  <script src="resources/JS/menubar.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>
