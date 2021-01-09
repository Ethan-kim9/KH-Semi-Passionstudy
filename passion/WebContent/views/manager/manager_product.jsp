<%@page import="java.util.ArrayList"%>
<%@page import="com.passionStudy.passion.manager.model.vo.ManagerProductVo"%>
<%@page import="com.passionStudy.passion.member.model.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberVo loginMember 	= (MemberVo)session.getAttribute("loginMember");
	ArrayList<ManagerProductVo> list = (ArrayList<ManagerProductVo>)request.getAttribute("list"); 
	int i = 1;
%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
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
            <a href="manager.SalesSearch"><button class="btn2">매출 조회</button></a>
          </li>
          <li>
            <a href="manager.ProductSearch"><button class="btn3 on">상품 관리</button></a>
          </li>
        </ul>
      </div>
    </div>
  
  
 <div class="product_title_box">
        <h1>스터디룸 관리</h1>
      </div>
      <div class="product_table_Box">
        <table class="table">
          <thead class="thead-dark">
            <tr>
              <th scope="col">번호</th>
              <th scope="col">스터디룸 명</th>
              <th scope="col">스터디룸 타입</th>
              <th scope="col">가격</th>
              <th scope="col">방 상태</th>
              <th scope="col">방 상태 수정</th>
            </tr>
          </thead>
          <tbody>
          
          
<%if(!list.isEmpty()){
	for(ManagerProductVo mpv :list){
    String condition = null;
    
    if(mpv.getRoomType().equals("O")) condition = "사용가능";
    else condition = "사용불가";
%>
    
            <tr>
              <th scope="row"><%=i%></th>
              <td><%=mpv.getRoomName() %></td>
              <td><%=mpv.getRoomInfo() %></td>
              <td><%=mpv.getRoomPrice() %>원</td>
              <td><%=condition %></td>
              <td>
                <button type="button" class="btn btn-dark btn_size_edit" id="btnRoomEdit<%=i%>"
                data-toggle="modal" data-target="#staticBackdrop<%=i%>">
                  Edit
                </button>
              </td>
            </tr>
     
 <div class="modal fade" id="staticBackdrop<%=i%>" data-backdrop="static" data-keyboard="false" 
 tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
     <%if(list.get(i-1).getRoomType().equals("O")){%>
      <div class="modal-body"> 방을 수리중으로 변경하고 싶으시면 체크해주세요. → <input type= "checkbox"  id="Roomstatus" /> </div>   	 
     <%}else{ %>
     <div class="modal-body"> 방을 사용가능으로 변경하고 싶으시면 체크를 해제해 주세요. → <input type= "checkbox"  id="RoomStatus" checked/></div>
      <%} %>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>        
        <button type="submit" class="btn btn-primary" value="확인" id="btnEditRoom<%=i%>">확인</button>
      </div>
    </div>
  </div>
</div>
<%i++;%>       
<%}
}
%>
</tbody>
 </table>
</div>


  </body>

  <script src="resources/JS/pagesjs/manager_managing_click.js"></script>
  <script>
  
  $('#btnEditRoom1').on('click', function(){
	  var value = $('input:checkbox[id="Roomstatus"]').is(":checked");
		$.ajax({
			type : 'post',
			url  : 'manager.editroom',
			<%if(!list.isEmpty()){%>
			data : {roomno 	  : "<%=list.get(0).getRoomNo()%>",
					roomStatus : value},
			success  : function(){
				alert('방의 상태가 변경되었습니다.');
				location.href="manager.ProductSearch";
				<%}%>
			},
			error    : function(){
				alert(status);
			}	
		});
	});
  
  $('#btnEditRoom2').on('click', function(){
	  var value = $('input:checkbox[id="Roomstatus"]').is(":checked");
		$.ajax({
			type : 'post',
			url  : 'manager.editroom',
			<%if(!list.isEmpty()){%>
			data : {roomno 	  : "<%=list.get(1).getRoomNo()%>",
					roomStatus : value},
			success  : function(){
				alert('방의 상태가 변경되었습니다.');
				location.href="manager.ProductSearch";
				<%}%>
			},
			error    : function(){
				alert(status);
			}  		
		});
	});
  
  $('#btnEditRoom3').on('click', function(){
	  var value = $('input:checkbox[id="Roomstatus"]').is(":checked");
		$.ajax({
			type : 'post',
			url  : 'manager.editroom',
			<%if(!list.isEmpty()){%>
			data : {roomno 	  : "<%=list.get(2).getRoomNo()%>",
					roomStatus : value},
			success  : function(){
				alert('방의 상태가 변경되었습니다.');
				location.href="manager.ProductSearch";
				<%}%>
			},
			error    : function(){
				alert(status);
			}  		
		});
	});
  
  $('#btnEditRoom4').on('click', function(){
	  var value = $('input:checkbox[id="Roomstatus"]').is(":checked");
		$.ajax({
			type : 'post',
			url  : 'manager.editroom',
			<%if(!list.isEmpty()){%>
			data : {roomno 	  : "<%=list.get(3).getRoomNo()%>",
					roomStatus : value},
			success  : function(){
				alert('방의 상태가 변경되었습니다.');
				location.href="manager.ProductSearch";
				<%}%>
			},
			error    : function(){
				alert(status);
			}  		
		});
	});
  
  $('#btnEditRoom5').on('click', function(){
	  var value = $('input:checkbox[id="Roomstatus"]').is(":checked");
		$.ajax({
			type : 'post',
			url  : 'manager.editroom',
			<%if(!list.isEmpty()){%>
			data : {roomno 	  : "<%=list.get(4).getRoomNo()%>",
					roomStatus : value},
			success  : function(){
				alert('방의 상태가 변경되었습니다.');
				location.href="manager.ProductSearch";
				<%}%>
			},
			error    : function(){
				alert(status);
			}  		
		});
	});
  
  $('#btnEditRoom6').on('click', function(){
	  var value = $('input:checkbox[id="Roomstatus"]').is(":checked");
		$.ajax({
			type : 'post',
			url  : 'manager.editroom',
			<%if(!list.isEmpty()){%>
			data : {roomno 	  : "<%=list.get(5).getRoomNo()%>",
					roomStatus : value},
			success  : function(){
				alert('방의 상태가 변경되었습니다.');
				location.href="manager.ProductSearch";
				<%}%>
			},
			error    : function(){
				alert(status);
			}  		
		});
	});
  
  $('#btnEditRoom7').on('click', function(){
	  var value = $('input:checkbox[id="Roomstatus"]').is(":checked");
		$.ajax({
			type : 'post',
			url  : 'manager.editroom',
			<%if(!list.isEmpty()){%>
			data : {roomno 	  : "<%=list.get(6).getRoomNo()%>",
					roomStatus : value},
			success  : function(){
				alert('방의 상태가 변경되었습니다.');
				location.href="manager.ProductSearch";
				<%}%>
			},
			error    : function(){
				alert(status);
			}  		
		});
	});
  
  $('#btnEditRoom8').on('click', function(){
	  var value = $('input:checkbox[id="Roomstatus"]').is(":checked");
		$.ajax({
			type : 'post',
			url  : 'manager.editroom',
			<%if(!list.isEmpty()){%>
			data : {roomno 	  : "<%=list.get(7).getRoomNo()%>",
					roomStatus : value},
			success  : function(){
				alert('방의 상태가 변경되었습니다.');
				location.href="manager.ProductSearch";
				<%}%>
			},
			error    : function(){
				alert(status);
			}  		
		});
	});
  
  $('#btnEditRoom9').on('click', function(){
	  var value = $('input:checkbox[id="Roomstatus"]').is(":checked");
		$.ajax({
			type : 'post',
			url  : 'manager.editroom',
			<%if(!list.isEmpty()){%>
			data : {roomno 	  : "<%=list.get(8).getRoomNo()%>",
					roomStatus : value},
			success  : function(){
				alert('방의 상태가 변경되었습니다.');
				location.href="manager.ProductSearch";
				<%}%>
			},
			error    : function(){
				alert(status);
			}  		
		});
	});
  
  </script>
  </html>
