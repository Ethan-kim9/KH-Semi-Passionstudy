<%@page import="com.passionStudy.qnaBoard.vo.QnaVo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.passionStudy.qnaBoard.dao.QnaDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	final int ROWSIZE = 8;
	final int BLOCK = 5;

	int pg = 1;
	
	if(request.getParameter("pg")!=null) {
		pg = Integer.parseInt(request.getParameter("pg"));
	}
	
	int start = (pg*ROWSIZE) - (ROWSIZE-1);
	int end = (pg*ROWSIZE);
	
	int allPage = 0;
	
	int startPage = ((pg-1)/BLOCK*BLOCK)+1;
	int endPage = ((pg-1)/BLOCK*BLOCK)+BLOCK;

%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
  </head>
  <body>
<%
	final String nonMemberCheck = "비회원";
	final String managerCheck = "관리자";
	final String userCheck = "회원";

	
	String nonMember = (String)request.getAttribute("nonMember");
	String manager = (String)request.getAttribute("manager");
	String user = (String)request.getAttribute("user");
	
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "passion";
	String pw = "passion";
	int total = 0;
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet result = null;
	
	try {
		Class.forName(driver); // JDBC드라이버 로딩
		conn = DriverManager.getConnection(url,id,pw); // DB서버연결
		stmt = conn.createStatement(); //Statment타입의 객체 생성
		Statement stmt1 = conn.createStatement();
		String sql = "";
		
		String sqlCount = "SELECT COUNT(*) FROM QNA_BOARD"; //DB내의 자료개수를 찾는 SQL문
		result = stmt.executeQuery(sqlCount); // SQL실행
		
		if(result.next()) { //result.next()의 반환 값은 true or false이다 찾는결과가 있으면 ture
			total = result.getInt(1); //자료의 개수를 total에 대입한다
		}
		
		int sort = 1;
		String sqlSort = "SELECT QNA_NO FROM QNA_BOARD ORDER BY QNA_NO DESC";
		result = stmt.executeQuery(sqlSort);

		while(result.next()){
			int stepNum = result.getInt(1);
			sql= "UPDATE QNA_BOARD SET PAGING_STACK=" + sort + " WHERE QNA_NO=" + stepNum;
		 	stmt1.executeUpdate(sql);
		 	sort++;
		} 

		
		allPage = (int)Math.ceil(total/(double)ROWSIZE);
		
		if(endPage > allPage) {
			endPage = allPage;
		}
		
		String sqlList = "SELECT QNA_NO, QNA_TITLE, QNA_WRITER, QNA_DATE, ANSWER_TITLE, ANSWER_CONTENT, BOARD_ANSWER, CATEGORY FROM QNA_BOARD WHERE PAGING_STACK >="+start+" AND PAGING_STACK <="+end+" ORDER BY PAGING_STACK ASC";
		result = stmt.executeQuery(sqlList);

%>
<%

%>
    <div class="cont_header">
      <div class="cont_wrapper">
        <h1>커뮤니티</h1>
      </div>
    </div>

    <div class="tabtype">
	<div class="tabtype_wrapper" style="text-align: center;">
        <ul>
          <li>
            <a href="board_notice"><button class="btn1">공지사항</button></a>
          </li>
          <li>
            <a href="faq.ManagerOrUser"><button class="btn2">자주하는 질문</button></a>
          </li>
          <li>
            <a href="member.manager.check.do"><button class="btn3 on">1:1문의</button></a>
          </li>
        </ul>
      </div>
    </div>


<form id="delete" action="qna.checkBox.do" method="post">
    <section>
      <div id="board">
        <div id="board_main">
<%
	if(nonMemberCheck.equals(nonMember) || userCheck.equals(user)){
%>         
          <div id="buttons" style = "float: right; padding-right: 15px;">
            <a href="index.jsp?inc=./views/board/qna/board_qna_member_write.jsp">
              <button type="button" class="write_btn yb" style="float: none">
                문의하기
              </button></a >      
          </div>
<%
	}
%>
<%
	if(managerCheck.equals(manager)){
%>         
          <div id="buttons" style = "float: right; padding-right: 15px;">
              <button type="submit" form="delete" name="delete" value="delete" class="write_btn yb" style="float: none">
               삭제
               </button>     
          </div>
<%
	}
%>
<%
	if(nonMemberCheck.equals(nonMember) || userCheck.equals(user)){
%> 
          <table class="table" id="main_table" width="50%">
            <tr>
	            <th>NO</th>
	            <th>카테고리</th>
	            <th>제목</th>
	            <th>작성자</th>
	            <th>작성일</th>
            </tr>
<%
	}
%>
<%
	if(managerCheck.equals(manager)){
%> 
          <table class="table" id="main_table" width="50%">
            <tr>
	            <th><input type="checkbox" class="checkall" /></th>
	            <th>카테고리</th>
	            <th>제목</th>
	            <th>작성자</th>
	            <th></th>
            </tr>
<%
	}
%>
<%
	if(total == 0) { // total 즉 , 자료가 없다면
%>
			<tr align="center" bgcolor="#FFFFFF" height="30">
				<td colspan="5">등록된 글이 없습니다</td>
			</tr>
<%
	} else {

		while(result.next()) {
			int no = result.getInt(1); //1은 첫번째 즉 qna_no값을 no라는 변수에 대입
			String title = result.getString(2); // qna_title
			String writer = result.getString(3); // qna_writer
			String date = result.getString(4); // qna_date
			String answerTitle = result.getString(5); //answer_title
			String answerContent = result.getString(6); //answer_content
			int boardAnswer = result.getInt(7); // board_answer
			String category = result.getString(8);			
%>






<%
			//유저나 비회원을 보여주는 뷰~
			if(nonMemberCheck.equals(nonMember) || userCheck.equals(user)) {
%>
			<tr>
				<td><%=no %></td>
				<td><%=category %></td>
				<td><a style="text-decoration: none; color: black;" href="qna.detail.do?idx=<%=no%>"><%=title %></a></td>
				<td><%=writer %></td>
				<td><%=date %></td>
			</tr>	 			
<%
				if(boardAnswer != 0){
%>

			<tr align="left">
				<td></td>
				<td></td>
				<td align="center"><img src="resources/images/icon/1on1_answer.gif"/><a style="text-decoration: none;" href="index.jsp?inc=./views/board/qna/board_qna_manager_detail.jsp?idx=<%=no %>">
				<%=answerTitle %></a></td>
				<td></td>
				<td></td>
			</tr>
<%					
				} // if(boardAnswer != 0)
		 	  } // if(nonMemberCheck.equals(nonMember) || userCheck.equals(user))	
%>








<%
			//관리자에게 보여주는 뷰~
			if(managerCheck.equals(manager)) {
%>
			<tr>
				<td><input type="checkbox" name="deletes" value="<%=no %>" /></td>
				<td><%=category %></td>
				<td><a style="text-decoration: none; color: black;" href="qna.detail.do?idx=<%=no%>"><%=title %></a></td>
				<td><%=writer %></td>
				<td align = "right" >
					<input type="button" value="답변달기" class="write_btn yb" style="float: none" OnClick="window.location='index.jsp?inc=./views/board/qna/board_qna_manager_write.jsp?idx=<%=no %>'">
				</td>
			</tr>	 			
<%
				if(boardAnswer != 0){
%>

			<tr align="left">
				<td></td>
				<td></td>
				<td align="center"><img src="resources/images/icon/1on1_answer.gif"/><a style="text-decoration: none;" href="index.jsp?inc=./views/board/qna/board_qna_manager_detail.jsp?idx=<%=no %>">
				<%=answerTitle %></a></td>
				<td></td>
				<td></td>
			</tr>
<%					
				} // if(boardAnswer != 0)
		 	  } // if(managerCheck.equals(manager))	
%>			







<%			
		} //while
	} // else
	result.close();
	stmt.close();
	conn.close();
	} catch(SQLException e) {
		out.println(e.toString()); // 에러 날 경우 에러출력
	}
%>






 			<tr>
				<td align="center" colspan="5" style="padding-top: 80px">
					<%
						if(pg>BLOCK) {
					%>
						[<a href="member.manager.check.do?pg=1">◀◀</a>]
						[<a href="member.manager.check.do?pg=<%=startPage-1%>">◀</a>]
					<%
						}
					%>
		
					<%
						for(int i=startPage; i<= endPage; i++){
							if(i==pg){
					%>
								<u><b>[<%=i %>]</b></u>
					<%
							}else{
					%>
								[<a href="member.manager.check.do?pg=<%=i %>"><%=i %></a>]
					<%
							}
						}
					%>
		
					<%
						if(endPage<allPage){
					%>
						[<a href="member.manager.check.do?pg=<%=endPage+1%>">▶</a>]
						[<a href="member.manager.check.do?pg=<%=allPage%>">▶▶</a>]
					<%
						}
					%>
					</td>
			</tr>
<%
if(nonMember != null) {
%>
			<tr>
				<p>현재상태 : <%=nonMember %></p>
			</tr>
<%
}
%>
<%
if(user != null) {
%>
			<tr>
				<p>현재상태 : <%=user %></p>
			</tr>
<%
}
%>
<%
if(manager != null) {
%>
			<tr>
				<p>현재상태 : <%=manager %></p>
			</tr>
<%
}
%>
          </table>
        </div>
      </div>
    </section>
    </form>
  </body>
  <script>
  $(document).ready(function(){
		$(".checkall").click(function(){
			if($(".checkall").prop("checked")){
				$("input[name=deletes]").prop("checked",true);
			}else{
				$("input[name=deletes]").prop("checked",false);
			}
		})
	})
  </script>

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>