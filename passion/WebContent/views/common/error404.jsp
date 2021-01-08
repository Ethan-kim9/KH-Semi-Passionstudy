<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@page isErrorPage="true" %>
<%
    response.setStatus(200);
%>
 
 
<!DOCTYPE html PUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet"> 
<style type="text/css">
 
@import "https://fonts.googleapis.com/css?family=Baloo+Paaji";
html,
body {
  height: 100%;
  
}
*{margin: auto;}
body {
  font-family: "Baloo Paaji", cursive;
  background:rgb(255, 133, 34);
  display: flex;
  justify-content: center;
  align-items: center;
  
}
#wrap{width: 1200px; height: 600px;}
#wrap>div{width: 100%; float: left;}
#content1{height: 20%;}
#content2{height:60%;}
#content3{height: 20%;}
#content2 span{
  color: white;
  font-size: 150px;
}
#content2 p{
  color: white;
  font-size: 40px;
}
#content3 span{
  color: white;
  font-family: 'Do Hyeon', sans-serif;
  font-size: 25px;
}
.usechrome {
  font-size: 10px;
  color: #fff;
  font-family: helvetica, arial;
  position: absolute;
  bottom: 20px;
  width: 100%;
  text-align: center;
  left: 0;
}
</style>
</head>
 <body>
<div id="wrap">
  <div id="content1" align="center">
    <br><br><br><br>
    <img src="resources/images/icon/flame.png" width="300" height="300" alt="">

  </div>
  <div id="content2" align="center">
    <br><br>
    <span>Error</span>
    <span>404</span>
    
  </div>
  <div id="content3" align="center">
    <span>해당페이지가 존재하지 않거나 삭제되었을 수 있습니다 : (</span>
  </div>
</div>
<span class="usechrome">Passion Study Cafe!</span>

</body>
</html>