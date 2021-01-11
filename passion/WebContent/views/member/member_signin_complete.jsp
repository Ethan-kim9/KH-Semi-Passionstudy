<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String result = (String)request.getAttribute("result");

String userid = (String)request.getAttribute("memId");
String username = (String)request.getAttribute("memName");

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
  .goLogin, .goMain {
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
  .goLogin:hover, .goMain:hover {
  border: 1px solid #ffcc00;
  background-color: #ffcc00;
  color: white;
	}
	.yourids{
	padding-top:50px;
	}
</style>
</head>
<body>
	 <div class="login_wrap">
        <div class="welcome-message" >
            <h2 class="member_title">회원가입이 완료되었습니다.</h2>
            <div class="youridis">
                <!-- jsp에서 회원가입한 아이디 db에서 가져오자-->
                <span>회원님의 아이디는 <b><%= request.getAttribute("memId") %></b>입니다.</span>
            </div>
        </div>
        <div class="signin-and-gotomain">
            <input type="button" class="goLogin" value="로그인하기" onclick="location.href='menu.Login'"/>
            <input type="button" class="goMain" value="메인으로 이동" onclick="location.href='index.jsp'" />
        </div>
    </div>
</body>
</html>