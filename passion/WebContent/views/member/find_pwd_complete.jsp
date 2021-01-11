<%@page import="com.passionStudy.passion.member.model.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
MemberVo findPwdMember = (MemberVo)request.getAttribute("findPwdMember");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="wrap">
		<div id="userName">[<%= findPwdMember.getMemName() %>]님의 비밀번호는</div><br/>
		<div id="userPwd">[<%= findPwdMember.getMemPwd() %>]입니다.</div>

		<button type="button" onclick="location.href='menu.Login'">로그인 하러가기</button>
	</div>
	 
</body>
</html>