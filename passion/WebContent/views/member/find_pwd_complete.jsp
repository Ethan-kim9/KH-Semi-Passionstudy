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
<style>
	.welcome-message {
	text-align:center;
	padding-top:150px;
	}
  .signin-and-gotomain {
 	text-align:center;
 	padding-top:50px;
	}
	.goLogin {
  display: inline-block;
  line-height: 30px;
  text-align: center;
  background-color: black;
  border: 1px solid black;
  color: #fff;
  margin-left: 2px;
  font-size: 13px;
  border-radius: 3px;
	}
  .goLogin:hover {
  border: 1px solid #ffcc00;
  background-color: #ffcc00;
  color: white;
	}

</style>
</head>
<body>
	<div class="login_wrap">
		<div class="welcome-message">
			<div id="userName">[<%= findPwdMember.getMemName() %>]님의 비밀번호는</div><br/>
			<div id="userPwd">[<%= findPwdMember.getMemPwd() %>]입니다.</div>
		</div>
		
		<div class="signin-and-gotomain">
			<button type="button" class="goLogin" onclick="location.href='menu.Login'">로그인 하러가기</button>
		</div>
	</div>
	 
</body>
</html>