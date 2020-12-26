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

<%
	String inc = "intro.jsp";
	if(request.getParameter("inc") != null){
	 	inc = request.getParameter("inc");
	}
%>
	<!-- header 영역 -->
	<%@include file="views/frame/header.jsp" %>
		
	<!-- 메인 contents 영역 -->
<div id='index'>
	<section id='contents'>
		<article class='content'>
		  <jsp:include page="<%=inc %>"/>
		</article>
	</section>	
</div>
	<!-- footer 영역 -->
 	<%@include file="views/frame/footer.jsp" %>
 	
  </body>
  <script src="resources/JS/menubar.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>
