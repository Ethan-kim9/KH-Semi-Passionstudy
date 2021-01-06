<%@page import="com.passionStudy.passion.board.noticeboard.model.vo.NoticeVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
            <a href="index.jsp?inc=./views/board/notice/board_notice_manager.jsp"><button class="btn1 on">공지사항</button></a>
          </li>
          <li>
            <a href="index.jsp?inc=./views/board/faq/board_faq_manager.jsp"><button class="btn2">자주하는 질문</button></a>
          </li>
          <li>
            <a href="index.jsp?inc=./views/board/1on1/board_1on1.jsp"><button class="btn3">1:1문의</button></a>
          </li>
        </ul>
      </div>
    </div>

    <section>
      <div id="board">
        <div id="board_main">
          <table class="table" id="main_table" width="50%" >
          	<thead>
          	<tr>
	            <th>번호</th>
	            <th>제목</th>
	            <th>작성자</th>
	            <th>작성일</th>
	            <th>조회</th>
	        </tr>
	        </thead>
	        <tbody>
	        
	        <c:forEach var="n" items="${list}"> <%-- begin="1" end="3" varStatus="st" --%>
	        
            <tr>
              <td>${n.nno}</td>
              <td><a href="board_notice_detail?nno=${n.nno}">${n.ntitle}</a></td>
              <td>${n.mno}</td>
              <td><fmt:formatDate pattern="yyyy-MM-dd" value="${n.regdate}"/></td>
              <td>${n.ncount}</td>
            </tr>
            </c:forEach>
            
            <%-- <%}%> --%>
            
            </tbody>
          </table>
          <div class="search_bar">
          <h3 class="hidden">공지사항 검색폼</h3>
          <form class="hidden">
          	<fieldset>
          		<ledgend class="hidden">공지사항 검색 필드</ledgend>
          		<label class="hidden">검색분류</label>
	            <select name="f">
	              <option ${(param.f == "notice_title")?"selected":""} value="notice_title">제목</option> 
	              <option ${(param.f == "notice_content")?"selected":""} value="notice_content">내용</option>
	            </select>
	          <input type="text" name="q" value="${param.q}" id="search-box" />
	          
	          <input type="submit" class="search-btn yb" style="float: none;" value="검색">
	            </input>
	          <%-- <input tyep="submit" class="search-btn yb" style="float: none;" value="검색"> --%>
          	</fieldset>
          </form>
          </div>
          	<nav aria-label="Page navigation example">
			  <ul class="pagination">
			    <li class="page-item">
			    <c:set var="page" value="${(param.p == null)?1:param.p}"/>
				<c:set var="startNum" value="${page-(page-1)%5}"/>
				<c:set var="lastNum" value="23"/>
			      <a class="page-link" href="#" aria-label="Previous">
				      <c:if test="${startNum>1}">
				      	<a href="?p=${startNum-1}&t=&q=" aria-hidden="true">&laquo;</a>
				      </c:if>
				      <c:if test="${startNum<=1}"> 
				        <span aria-hidden="true" onclick="alert('이전 페이지가 없습니다.')">&laquo;</span>
				      </c:if>
			      </a>
			    </li>
				
				<c:forEach var="i" begin="0" end="4">
			    <li class="page-item"><a class="page-link" href="?p=${startNum+i}&f=${param.f}&q=${param.q}">${startNum+i}</a></li>
			    </c:forEach>
			    <li class="page-item">
			      <a class="page-link" href="#" aria-label="Next"></a>
			      
				      <c:if test="${startNum+5<lastNum}">
				        <a href="?p=${startNum+5}&t=&q=" aria-hidden="true" >&raquo;</a>
				      </c:if> 
				      <c:if test="${startNum+5>=lastNum}">  
				        <span aria-hidden="true" onclick="alert('다음 페이지가 없습니다.')">&raquo;</span>
				      </c:if>
			      </a>
			    </li>
			  </ul>
			</nav>
        </div>
      </div>
    </section>

  </body>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>
