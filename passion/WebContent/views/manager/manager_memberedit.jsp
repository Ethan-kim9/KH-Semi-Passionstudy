<%@page import="com.passionStudy.passion.member.model.vo.MemberVo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.passionStudy.passion.manager.model.vo.ManagerMemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
  <%
  		ArrayList<ManagerMemberVo> list = (ArrayList<ManagerMemberVo>)request.getAttribute("list"); 
		MemberVo loginMember 	= (MemberVo)session.getAttribute("loginMember");
  %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
  </head>
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
  <body>
  
      <div class="cont_header">
      <div class="cont_wrapper">
        <h1>관리메뉴</h1>
      </div>
    </div>
  
      <div class="tabtype btn_align_center tabtype_style_edit">
      <div class="tabtype_wrapper">
        <ul class="manager_ul_style">
          <li>
            <a href="menu.Manager"><button class="btn1 on">회원 관리</button></a>
          </li>
          <li>
            <a href="manager.SalesSearch"><button class="btn2">매출 조회</button></a>
          </li>
          <li>
            <a href="manager.ProductSearch"><button class="btn3">상품 관리</button></a>
          </li>
        </ul>
      </div>
    </div>

<div class="membersearch-box">
        <form class="membersearch" method="post" action= "manager.MemberSearch">
          <label for="membersearch--input" class="membersearch--label">이름을 입력하세요.</label>
          <br />
          <input type="text" class="membersearch--input" id="SearchName" name="SearchName" required />
          <input type="submit" value="검색"/>
        </form>
      </div>
<div>
        <% if(list.size()>1){%>
        	<script>
        	let phone = prompt('회원이 여러명입니다 :) 찾으시는 전화번호를 입력해주세요','입력');
        	let name = "<%= list.get(0).getMemName()%>"
        	location.href="manager.MemberSearch2?name="+name+"&phone="+phone;		        		

        	</script><%}
        for(ManagerMemberVo mmv : list) {%>
      <div class="membersearch__member_box">
        <!-- 검색이 완료되면 표시 되는 부분-->
        <div class="membersearch__member_detail_box">
        <!-- 블렉리스트를 체크하는 로직 -->
			<% boolean Blacklistcheck = true;
			if( mmv.getMemStatus().charAt(0) == 'N'){
				Blacklistcheck = false;
			}
			%>

          <div class="member-icon-box"><%if(!Blacklistcheck) { %>🔥</div> <% } else { %> 💀 </div><%} %>
          <!-- 블랙리스트면 '💀'로 표시-->
          
          <h1 class="member_detail_name">이름 : <%= mmv.getMemName() %></h1>
          <hr />
          <h2 class="member_detail_point">전화번호 : <%= mmv.getMemPhone() %></h2>
          <hr />
          <h1 class="member_detail_coupon">포인트 : <%= mmv.getMemPoint() %></h1>
          <hr />
        </div>
	<%} %>
        <!-- 관리자가 설정하기 위한 부분-->

        <div class="membersearch__member_edit_box">
          <!-- 비밀번호 변경 설정 -->

          <div class="input-group mb-3">
            <input
              type="text"
              class="form-control"        
              placeholder="비밀번호 변경"
              disabled="disabled"
              aria-label="Recipient's username"
              aria-describedby="button-addon2"
            />
            <div class="input-group-append">
              <button class="btn btn-outline-secondary" type="button" id="button-addon2" data-toggle="modal"data-target="#staticBackdrop"> EDIT </button>
            </div>
          </div>

          <!-- 포인트 설정 -->
          <div class="input-group mb-3">
            <input
              type="text"
              class="form-control"
              placeholder="포인트 변경"
              disabled="disabled"
              aria-label="Recipient's username"
              aria-describedby="button-addon2"
            />
            <div class="input-group-append">
              <button  class="btn btn-outline-secondary"  type="button" id="button-addon2"data-toggle="modal"data-target="#staticBackdrop2" > EDIT </button>
            </div>
          </div>
          <!-- 회원 쿠폰 설정 -->

          <div class="input-group mb-3">
            <input
              type="text"
              class="form-control"
              placeholder="회원 쿠폰 설정"
              disabled="disabled"
              aria-label="Recipient's username"
              aria-describedby="button-addon2" />
            <div class="input-group-append">
              <button class="btn btn-outline-secondary" type="button" id="button-addon2" data-toggle="modal"data-target=".bd-example-modal-lg"> EDIT </button>
            </div>
          </div>

          <!-- 블랙리스트 설정 -->

<div class="input-group mb-3">
            <input
              type="text"
              class="form-control"
              placeholder="블랙리스트 설정"
              disabled="disabled"
              aria-label="Recipient's username"
              aria-describedby="button-addon2"
            />
            <div class="input-group-append">
              <button class="btn btn-outline-secondary" type="button" id="button-addon2" data-toggle="modal"data-target="#staticBackdrop3"> EDIT </button>

            </div>
          </div>
        </div>
      </div>
      
      <!--  중복아이디 처리용 모달 -->
      
<!-- 비밀번호 변경용 모달 -->
<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">비밀번호 변경</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	비밀번호를 12345678로 변경합니다.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>        
        <button type="button" class="btn btn-primary" value="확인" id="btnPW">확인</button>
      </div>
    </div>
  </div>
</div>

<!-- 포인트 변경용 모달 -->
<div class="modal fade" id="staticBackdrop2" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">포인트 변경</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	<input type= 'text' placeholder="포인트값을 입력하세요" id="Point" />
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>        
        <button type="submit" class="btn btn-primary" value="확인" id="btnPoint">확인</button>
      </div>
    </div>
  </div>
</div>


<!-- 쿠폰 편집용 변경용 모달 -->
<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">쿠폰 설정</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
      
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
    <tr>
      <th scope="row">1</th>
      <td><input type= "checkbox"  id="pick" /></td>
      <td>3000원 쿠폰</td>
      <td>사용가능</td>
      <td>2021-01-15까지</td>
    </tr>
  </tbody>
</table>


      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" id="btnCoupon1">3000 쿠폰 추가</button>
        <button type="button" class="btn btn-secondary" id="btnCoupon2">5000 쿠폰 추가</button>        
        <button type="button" class="btn btn-secondary"id="btnCouponDel">선택 쿠폰 삭제</button>        
        <button type="submit" class="btn btn-primary" value="확인" id="btnPoint" data-dismiss="modal" >확인</button>
      </div>
    </div>
  </div>
</div>




<!-- 블랙리스트 추가용 모달 -->
<div class="modal fade" id="staticBackdrop3" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">블랙리스트 설정</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
     <%if(!list.isEmpty()) {
    	 if(list.size() ==1){
     if(list.get(0).getMemStatus().equals("N")){%>
      <div class="modal-body"> BlackList로 변경을 원할시 체크해주세요. → <input type= "checkbox"  id="Black" /> </div>   	 
     <%}else{%>
     <div class="modal-body"> 일반회원으로 변경을 원할시 체크를 해제해 주세요. → <input type= "checkbox"  id="Black" checked/></div>
     <%}}}%>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>        
        <button type="submit" class="btn btn-primary" value="확인" id="btnBlack">확인</button>
      </div>
    </div>
  </div>
</div>


  </body>
  <script src="resources/JS/pagesjs/manager_managing_click.js"></script>
  <script>
  $('#btnPW').on('click', function(){
		$.ajax({
			type : 'post',
			url  : 'manager.PWchange',
			<%if(!list.isEmpty()){%>
			data : {memno : "<%= list.get(0).getMemNo()%>"},
			
			success  : function(){
				alert('회원의 비밀번호가 변경되었습니다.');
				location.href="manager.MemberSearch2?name=<%=list.get(0).getMemName()%>&phone=<%=list.get(0).getMemPhone()%>";
				<%}%>
			},
			error    : function(){
				alert(status);
			}  		
		});
	});
  
  $('#btnPoint').on('click', function(){
	  var value = $('#Point').val();
		$.ajax({
			type : 'post',
			url  : 'manager.Point',
			<%if(!list.isEmpty()){%>
			data : {memno 	 : "<%=list.get(0).getMemNo()%>",
					memPoint : value},
			
			success  : function(){
				alert('회원의 포인트가 변경되었습니다.');
				location.href="manager.MemberSearch2?name=<%=list.get(0).getMemName()%>&phone=<%=list.get(0).getMemPhone()%>";
				<%}%>
			},
			error    : function(){
				alert(status);
			}  		
		});
	});
  
  $('#btnBlack').on('click', function(){
	  var value = $('input:checkbox[id="Black"]').is(":checked");
		$.ajax({
			type : 'post',
			url  : 'manager.Black',
			<%if(!list.isEmpty()){%>
			data : {memno 	  : "<%=list.get(0).getMemNo()%>",
					memStatus : value},
			
			success  : function(){
				alert('회원의 상태가 변경되었습니다.');
				location.href="manager.MemberSearch2?name=<%=list.get(0).getMemName()%>&phone=<%=list.get(0).getMemPhone()%>";
				<%}%>
			},
			error    : function(){
				alert(status);
			}  		
		});
	});
  
  $('#btnBlack').on('click', function(){
	  var value = $('input:checkbox[id="Black"]').is(":checked");
		$.ajax({
			type : 'post',
			url  : 'manager.Coupon',
			<%if(!list.isEmpty()){%>
			data : {memno 	  : "<%=list.get(0).getMemNo()%>",
					memStatus : value},
			
			success  : function(){
				alert('회원의 상태가 변경되었습니다.');
				location.href="manager.MemberSearch2?name=<%=list.get(0).getMemName()%>&phone=<%=list.get(0).getMemPhone()%>";
				<%}%>
			},
			error    : function(){
				alert(status);
			}  		
		});
	});

  </script>
  </html>
