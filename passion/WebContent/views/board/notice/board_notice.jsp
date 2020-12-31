<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
  </head>
  <body>
  
    <div class="cont_header">
      <div class="cont_wrapper">
        <h1>커뮤니티</h1>
      </div>
    </div>

    <div class="tabtype">
      <div class="tabtype_wrapper" style="text-align: center;">
        <ul>
          <li>
            <a href="javascript:void(0);" onclick="fn_goMove('./views/board/notice/board_notice.jsp')"><button class="btn1 on">공지사항</button></a>
          </li>
          <li>
            <a href="javascript:void(0);" onclick="fn_goMove('./views/board/1on1/board_faq.jsp')"><button class="btn2">자주하는 질문</button></a>
          </li>
          <li>
            <a href="javascript:void(0);" onclick="fn_goMove('./views/board/1on1/board_1on1.jsp')"><button class="btn3">1:1문의</button></a>
          </li>
        </ul>
      </div>
    </div>

    <section>
      <div id="board">
        <div id="board_main">
          <table class="table" id="main_table" width="50%" >
          	<tr>
	            <th>번호</th>
	            <th>제목</th>
	            <th>작성자</th>
	            <th>작성일</th>
	            <th>조회</th>
	        </tr>
            <tr>
              <!-- 첫번째 줄 시작-->
              <td>공지</td>
              <td>개인정보처리방침 개정 내용 사전안내</td>
              <td>관리자</td>
              <td>2020-10-02</td>
              <td>1000</td>
            </tr>
            <!-- 첫번째 줄 끝-->
            <tr>
              <!-- 두번째 줄 시작-->
              <td>공지</td>
              <td>댓글 이벤트 당첨자 공지</td>
              <td>관리자</td>
              <td>2020-10-03</td>
              <td>800</td>
            </tr>
            <!-- 두번째 줄 끝-->
          </table>
          <div class="search_bar">
            <input type="radio" id="name" name="name"/>
            <label for="name">이름　</label>
            <input type="radio" name="title" />
            <label for="title">제목　</label>
            <input type="radio" name="contents" />
            <label for="contents">내용　</label>
            <input type="text" id="search-box" name="searchTxt"/>
            <button type="button" class="search-btn yb" style="float: none;">
              검색
            </button>
          </div>
        </div>
      </div>
    </section>

<form id="testFrm" name="testFrm" method="post">
	<input type="hidden" id="inc" name="inc" value="./views/board/faq/board_faq.jsp"/>
</form>
<script>
	function fn_goMove(url){
		document.getElementById("inc").value = url;
		document.getElementById("testFrm").action = "./index.jsp";
		document.getElementById("testFrm").submit();
	}
</script>
  </body>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>
