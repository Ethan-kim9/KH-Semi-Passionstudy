<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MainPage</title>

</head>
<body>

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
              <a href="menu.facilitiesRooms">바로가기></a>
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
            <a href="menu.facilitiesExtra">바로가기></a>
            </div>
          </div>
        </div>
      <div id="mainExplanations" class="mainContainer mainPaddingBottom">
        <div id="" class="mainExplanations">
          <img src="resources/images/icon/shield.png"/>
          <h2>안전관리</h2>
          <br>
          <p>- 입 / 퇴실 관리시스템</p>
          <p>- 소방 안전 관리</p>
          <p>- CCTV 통제관리</p>
          <p>- 회원들의 안전과 편안한 학습환경을 보장</p>
        </div>
        <div id="" class="mainExplanations">
          <img src="resources/images/icon/graph.png"/>
          <h2>교육서비스</h2>
          <br>
          <p>- 수능 수험생 교육서비스</p>
          <p>- 성인 수험생 교육서비스</p>
        </div>
        <div id="" class="mainExplanations">
          <img src="resources/images/icon/genius.png"/>
          <h2>프리미엄 <br> 백색 소음기</h2>
          <br>
          <p>
            소음 차단과 집중력 향상에 도움을 주는 백색소음기가 중앙컨트롤 형태로
            설치되어 있습니다.
          </p>
        </div>
        <div id="" class="mainExplanations">
          <img src="resources/images/icon/lightbulb.png"/>
          <h2>편안한 조명</h2>
          <br>
          <p>
            장시간 이용에도 눈이 편안한 조명 매장 내의 채광, 균등한 조도 설계로
            눈이 편안함
          </p>
        </div>
      </div>
      <div id="mainHowToCome" class="mainContainer">
        <!-- <div id="mainHowToComeMap" class="mainContainerContents mainFloatLeft">
          여기 대충 지도 api
          <img src="https://dimg.donga.com/wps/NEWS/IMAGE/2019/12/25/98961520.1.jpg"/>
        </div> -->
        <div id="map" class="mainContainerContents mainFloatLeft" style="width:50%;height:350px;"></div>
        <div id="mainHowToComeExplanations" class="mainContainerContents mainFloatRight">
          <h3>오시는길</h3>
          <br>
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
      <!--  
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
      -->
    </main>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d37a765d31becce9195791f779c47284"></script>
<script >
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.53392381252223, 126.89699398129937), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 

//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(37.53392381252223, 126.89699398129937); 

//마커를 생성합니다
var marker = new kakao.maps.Marker({
 position: markerPosition
});

//마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

//아래 코드는 지도 위의 마커를 제거하는 코드입니다
//marker.setMap(null);   


</script>
</body>
</html>