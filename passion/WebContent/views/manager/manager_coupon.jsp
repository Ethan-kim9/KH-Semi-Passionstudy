<%@page import="com.passionStudy.passion.manager.model.vo.ManagerCouponVo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    ArrayList<ManagerCouponVo> list = (ArrayList<ManagerCouponVo>)request.getAttribute("list");
    
    String memNo = (String)request.getAttribute("memNo");
    String memName = (String)request.getAttribute("memName");
    String memPhone = (String)request.getAttribute("memPhone");
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 쿠폰편집</title>
 <script src="https://code.jquery.com/jquery-3.5.1.js" integrity = "sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
<style>
body{
width: 1000px;
height: 1000px;
}
.btnarray{
	text-align: center;
}

</style>
</head>
<body>


      
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">선택</th>
      <th scope="col">쿠폰이름</th>
      <th scope="col">사용 가능 여부</th>
      <th scope="col">유효기한</th>
    </tr>
  </thead>
  <tbody>
  <% if(!list.isEmpty()){
	  int i = 1;
	  String valid = null;
  	for(ManagerCouponVo mcv :list){
  		if(mcv.getCouponValid().equals("O")){
  			valid = "사용가능";
  %>
    <tr>
      <th scope="row"><%=i %></th>
      <td><input type= "checkbox"  class="pickCoupon" value="<%=mcv.getCouponNo() %>" /></td>
      <td><%=mcv.getCouponName() %></td>
      <td><%=valid %></td>
      <td><%=mcv.getCouponDate().toString() %>까지</td>
    </tr>
    <%i++;}}}%>
  </tbody>
</table>
<hr>
<div class= "btnarray">
        <button type="button" class="btn btn-secondary" id="btnCoupon1">3000 쿠폰 추가</button>
        <button type="button" class="btn btn-secondary" id="btnCoupon2">5000 쿠폰 추가</button>        
        <button type="button" class="btn btn-secondary"id="btnCouponDel">선택 쿠폰 삭제</button>        
        <a href ="manager.MemberSearch2?name=<%=memName%>&phone=<%=memPhone%>"><button type="button" class="btn btn-primary">확인</button></a>
</div>
</body>
<script>

$('#btnCoupon1').on('click', function(){
	$.ajax({
		type : 'post',
		url  : 'manager.UpdateCoupon',
		data : {memno 	    : "<%=memNo%>",
			    pushedbtn	: "1"},
		success  : function(){
			location.href="manager.listCoupon?memno=<%=memNo%>&memname=<%=memName%>&memphone=<%=memPhone%>";
		},
		error    : function(){
			alert(status);
		}  		
	});
});

$('#btnCoupon2').on('click', function(){
	$.ajax({
		type : 'post',
		url  : 'manager.UpdateCoupon',
		data : {memno 	    : "<%=memNo%>",
				pushedbtn	: "2"},
		success  : function(){
			location.href="manager.listCoupon?memno=<%=memNo%>&memname=<%=memName%>&memphone=<%=memPhone%>";
		},
		error    : function(){
			alert(status);
		}  		
	});
});

$('#btnCouponDel').on('click', function(){
	var checkboxArr = [];
	$('.pickCoupon:checked').each(function(){
		checkboxArr.push($(this).val());
	})
	
	$.ajax({
		type : 'post',
		url  : 'manager.DelCoupon',
		data : {delarr		: checkboxArr}
		,
		success  : function(){
			location.href="manager.listCoupon?memno=<%=memNo%>&memname=<%=memName%>&memphone=<%=memPhone%>";
		},
		error    : function(){
			alert(status);
		}  		
	});
});
</script>
</html>