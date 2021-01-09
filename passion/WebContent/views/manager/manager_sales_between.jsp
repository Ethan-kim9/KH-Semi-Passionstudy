<%@page import="com.passionStudy.passion.member.model.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>Welcome Passion StudyCafe~!</title>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<%
	if (loginMember == null) {
%>
<script>
	alert('접근 권한이 없습니다.');
	location.href = 'index.jsp';
</script>
<%
	}
%>
<%
	if (loginMember != null) {
		if (loginMember.getAdminCheck().charAt(0) != 'A') {
%>
<script>
	alert('접근 권한이 없습니다.');
	location.href = 'index.jsp';
</script>
<%
	}
	}
%>

<script>

	$(document).ready(function() {
		$("#fromDate").datepicker({
			numberOfMonths : 1,
			maxDate:0,
			onSelect : function(selected) {
				$("#toDate").datepicker("option", "minDate", selected)
			}
		});
		$("#toDate").datepicker({
			numberOfMonths : 1,
			maxDate:0,
			onSelect : function(selected) {
				$("#fromDate").datepicker("option", "maxDate", selected)
			}
		});
	});
	
</script>
</head>

<body>


	<div class="cont_header">
		<div class="cont_wrapper">
			<h1>관리메뉴</h1>
		</div>
	</div>

	<div class="tabtype btn_align_center tabtype_style_edit">
		<div class="tabtype_wrapper">
			<ul class="manager_ul_style">
				<li><a href="menu.Manager"><button class="btn1">회원
							관리</button></a></li>
				<li><a href="manager.SalesSearch"><button class="btn2 on">매출
							조회</button></a></li>
				<li><a href="manager.ProductSearch"><button class="btn3">상품
							관리</button></a></li>
			</ul>
		</div>
	</div>

	<div class="tabtype btn_align_center tabtype_style_edit">
		<div class="tabtype_wrapper">
			<ul class="manager_ul_style">
				<li><a href="manager.SalesSearch"><button>월 매출 조회</button></a>
				</li>
				<li><a href="manager.SalesSearch.Between"><button class="on">기간별 조회</button></a></li>
			</ul>
		</div>
	</div>

	<div class="membersearch-box">
		<label for="startDate"></label>
		<form action="manager.SalesView.Between" method="post">
				<input id="fromDate" placeholder="년, 월 설정" name="fromDate" autocomplete="off" required="required" /> 
				<input id="toDate"   placeholder="년, 월 설정" name="toDate"   autocomplete="off" required="required" /> 
				<input type="submit" value="조회"  required="required" />
		</form>
	</div>

	<div class="finance__manager">
		<!-- 매출 그래프를 표시해주는 박스-->

		<div class="finance__graph__box">
			<h1>2020년 매출현황</h1>
			<div class="finance__graph"></div>
		</div>

		<!-- 매출표를 표시해주는 박스-->
		<div class="finance__table">
			<table class="table">
				<thead class="thead-light">
					<tr>
						<th scope="col">월</th>
						<th scope="col">카드</th>
						<th scope="col">현금</th>
						<th scope="col">총합</th>
					</tr>
				</thead>

			</table>
		</div>
	</div>
</body>
<script src="resources/JS/pagesjs/manager_managing_click.js"></script>
</html>
