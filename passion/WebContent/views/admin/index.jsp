<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
    <link rel="stylesheet" href="resources/CSS/styles.css" />
    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity = "sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
  </head>
  <body>

<%
	String inc = "views/common/main.jsp";
	if(request.getParameter("inc") != null){ 
		inc = request.getParameter("inc"); 
		}
%>

	<!-- header 영역 정적삽입-->
	
	<%@include file="views/common/header.jsp" %>
	
	<!-- 메인 contents 영역 동적삽입-->
	<jsp:include page="<%=inc %>"/>
	
	<!-- footer 영역 정적삽입-->
 	<%@include file="views/common/footer.jsp" %>
 	
 	
  </body>
  <script src="resources/JS/menubar.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>