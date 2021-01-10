<%@page import="com.passionStudy.passion.member.model.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
MemberVo findIdMember = (MemberVo)request.getAttribute("findIdMember");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="wrap">
		<div id="userName">[<%= findIdMember.getMemName() %>]님의 아이디는</div><br/>
		<div id="userId">[<%= findIdMember.getMemId() %>]입니다.</div>

		<button type="button" onclick="location.href='menu.Login'">로그인 하러가기</button>
	</div>
	 
</body>
</html>