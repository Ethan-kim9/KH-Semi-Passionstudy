<%@page import="java.util.ArrayList"%>
<%@page import="com.passionStudy.passion.manager.model.vo.ManagerSalesVo"%>
<%@page import="com.passionStudy.passion.member.model.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberVo loginMember 	= (MemberVo)session.getAttribute("loginMember");
	ArrayList<ManagerSalesVo> searchSales = (ArrayList<ManagerSalesVo>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.1/jquery.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/jquery-ui.min.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/themes/base/jquery-ui.css">
    <script type="text/javascript">
        $(function() {
            $('.date-picker').datepicker( {
            changeMonth: true,
            changeYear: true,
            showButtonPanel: true,
            dateFormat: 'MM yy',
            onClose: function(dateText, inst) { 
                $(this).datepicker('setDate', new Date(inst.selectedYear, inst.selectedMonth, 1));
            }
            });
        });
    </script>
    <style>
    .ui-datepicker-calendar {
        display: none;
    }
    </style>
  </head>

  <body>
      	<% 
    	if(loginMember==null){%>
    		<script >
    		alert('접근 권한이 없습니다.');
    		location.href='index.jsp';

    		</script>
    		<%}%>
    	<%	
    	if(loginMember!=null){
    	if(loginMember.getAdminCheck().charAt(0)!= 'A'){%>
    	<script>
    	alert('접근 권한이 없습니다.');
    	location.href='index.jsp';

    	</script>
    	<%}}%>
  
      <div class="cont_header">
      <div class="cont_wrapper">
        <h1>관리메뉴</h1>
      </div>
    </div>
  
     <div class="tabtype btn_align_center tabtype_style_edit">
      <div class="tabtype_wrapper">
        <ul class="manager_ul_style">
          <li>
            <a href="menu.Manager"><button class="btn1">회원 관리</button></a>
          </li>
          <li>
            <a href="manager.SalesSearch"><button class="btn2 on">매출 조회</button></a>
          </li>
          <li>
            <a href="manager.ProductSearch"><button class="btn3">상품 관리</button></a>
          </li>
        </ul>
      </div>
    </div>
    
 <div class="membersearch-box">
    <label for="startDate"></label>
    <form action="manager.SalesView" method="post">
      <input id="startDate" class="date-picker" placeholder="년, 월 설정" name="searchTime" autocomplete="off"/>
      <input type="submit" value="조회"/>
    </form>
  </div>
  
<% 
	String year  = (String)request.getAttribute("year");
	String month = (String)request.getAttribute("month");
    int totincome =0;
    int card = 0;
    int payment = 0;
    
if(searchSales == null){
	%>
	   <script >alert('선택하신 달의 매출이 없습니다.');</script>
	<%
}else{
	
	String time = searchSales.get(0).getPaymentDate().toString();
	String day	 = time.substring(8,10);
}%>
<div class="finance__manager">
      <!-- 매출 그래프를 표시해주는 박스-->
      
      <div class="finance__graph__box">
        <h1><%=year %>년 <%=month %>월 매출</h1>
        <div class="finance__graph">
          
        </div>
      </div>

      <!-- 매출표를 표시해주는 박스-->
      <div class="finance__table">
        <table class="table">
          <thead class="thead-light">
            <tr>
              <th scope="col">일</th>
              <th scope="col">카드</th>
              <th scope="col">현금</th>
              <th scope="col">총합</th>
            </tr>
          </thead>
          <tbody>
            <tr>
            <% for(ManagerSalesVo msv : searchSales){
            totincome += msv.getPaymentPrice(); 
            
            if(msv.getPaymentMethod().charAt(0) =='C'){
            	card = msv.getPaymentPrice();
            }else
            	payment =msv.getPaymentPrice();
            
            %>
              <th scope="row"><%=msv.getPaymentDate().toString().substring(8,10) %>일</th>
              <td><%= card %>원 </td>
              <td><%= payment %>원</td>
              <td></td>
            </tr>

 <%
		 card = 0;
		 payment = 0;
            } %>
  			<tr>
               <th scope="row"></th>
              <td></td>
              <td></td>
              <td><h6></h6><%=totincome %>원</td>
            </tr>
          
          </tbody>
        </table>
      </div>
    </div>
  </body>
  <script src="resources/JS/pagesjs/manager_managing_click.js"></script>
  </html>
