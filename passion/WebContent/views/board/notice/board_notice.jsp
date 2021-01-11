<%@page import="com.passionStudy.passion.board.noticeboard.model.vo.NoticeVo"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
            <a href="board_notice"><button class="btn1 on">공지사항</button></a>
          </li>
          <li>
            <a href="faq.ManagerOrUser"><button class="btn2">자주하는 질문</button></a>
          </li>
          <li>
            <a href="member.manager.check.do"><button class="btn3">1:1문의</button></a>
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
	        
	        <c:forEach var="n" items="${list}" >
            <tr>
              <td>${n.nno}</td>
              <td style="text-align:left !important;" ><a style="text-decoration: none; color: black;" href="board_notice_detail?nno=${n.nno}">${n.ntitle}</a></td>
              <td>관리자</td>
              <td><fmt:formatDate pattern="yyyy-MM-dd" value="${n.regdate}"/></td>
              <td>${n.ncount}</td>
            </tr>
            </c:forEach>
            
            </tbody>
          </table>
          <div class="search_bar">
          <form class="hidden">
	            <select name="f">
	              <option ${(param.f == "notice_title")?"selected":""} value="notice_title">제목</option> 
	              <option ${(param.f == "notice_content")?"selected":""} value="notice_content">내용</option>
	            </select>
	          <input type="text" name="q" value="${param.q}" id="search-box" />  
	          <input type="submit" class="search-btn yb" style="float: none;" value="검색"/>
          </form>
          </div>
          <%-- 페이징처리 --%>
        <c:set var="page" value="${(empty param.p)?1:param.p}"/>
		<c:set var="startNum" value="${page-(page-1)%5}"/>
		<c:set var="lastNum" value="${fn:substringBefore(Math.ceil(count/10),'.')}"/>
          <div class="indexer margin-top align-right" style="padding-left: 612px;">
			<div styel="text-align:right;">
				<span class="text-orange text-strong">${(empty param.p)?1:param.p}</span> / ${lastNum } pages</div>
			</div>
          	<nav aria-label="Page navigation example">
			  <ul class="pagination" style="padding-left: 600px;">
			    <li class="page-item">

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
				<c:if test="${(startNum+i)<=lastNum }">
			    <li class="page-item"><a class="page-link ${(param.p==(startNum+i))?'orange' : ''} bold" href="?p=${startNum+i}&f=${param.f}&q=${param.q}">${startNum+i}</a></li>
			    </c:if>
			    </c:forEach>
			    <li class="page-item">
			      <a class="page-link" href="#" aria-label="Next">
			      <c:if test="${startNum+4<lastNum}">
			        <a href="?p=${startNum+5}&t=&q=" aria-hidden="true" >&raquo;</a>
			      </c:if> 
			      <c:if test="${startNum+4>=lastNum}">  
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
