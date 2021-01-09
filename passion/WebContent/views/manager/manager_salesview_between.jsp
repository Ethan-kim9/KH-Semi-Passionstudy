<%@page import="java.util.ArrayList"%>
<%@page import="com.passionStudy.passion.manager.model.vo.ManagerSalesVo"%>
<%@page import="com.passionStudy.passion.member.model.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
	ArrayList<ManagerSalesVo> listMSV = (ArrayList<ManagerSalesVo>)request.getAttribute("list");
%>

<!DOCTYPE html>
<html lang="ko">ㅋ
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
				<li><a href="menu.Manager"><button class="btn1">회원 관리</button></a></li>
				<li><a href="manager.SalesSearch"><button class="btn2 on">매출 조회</button></a></li>
				<li><a href="manager.ProductSearch"><button class="btn3">상품 관리</button></a></li>
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

<% 
	String fromDate  = (String)request.getAttribute("fromDate");
	String toDate 	 = (String)request.getAttribute("toDate");
    int totincome =0;
    int totcard = 0;
    int totcash = 0;
    int card = 0;
    int cash = 0;
if(listMSV.isEmpty()){
	%>
	   <script >alert('선택하신 기간에 기록된 매출이 없습니다.');</script>
<%} %>

<div class="finance__manager">
      <!-- 매출 그래프를 표시해주는 박스-->
      
      <div class="finance__graph__box">
        <h2><%=fromDate %>부터 <%=toDate %>까지의 매출</h2>
          <div id="donutchart" style="width: 600px; height: 550px;"></div>
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
          <tbody>
            <tr>
            <% for(ManagerSalesVo msv : listMSV){
            totincome += msv.getPaymentPrice(); 
            
            if(msv.getPaymentMethod().charAt(0) =='C'){
            	card = msv.getPaymentPrice();
            }else
            	cash =msv.getPaymentPrice();      
            %>
              <th scope="row"><%=msv.getPaymentDate().toString().substring(8,10) %>일</th>
              <td><%= card %>원 </td>
              <td><%= cash %>원</td>
              <td></td>
            </tr>

 <%
 
					 totcard += card;
					 totcash += cash;
					 card = 0;
					 cash = 0;
 } %>
  			<tr>
               <th scope="row"></th>
              <td></td>
              <td></td>
              <td><h6></h6><%=totincome %>원</td>
            </tr>
          
			</table>
		</div>
	</div>
</body>
<script src="resources/JS/pagesjs/manager_managing_click.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
      <%if(!listMSV.isEmpty()){%>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Total', 'Income per Month'],
          ['Card <%= totcard%>원',  <%=(int)totcash/totcash 		%>],
          ['Cash <%= totcash%>원',  <%=(int)totincome/totcard 	%>],
        ]);

        var options = {
          title: '선택한 기간의 매출',
          pieHole: 0.5,
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
      }
    </script>
      <%}%>
</html>
