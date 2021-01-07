<%@page import="com.passionStudy.passion.board.noticeboard.model.vo.MemberVo"%>
<%@page import="com.passionStudy.passion.board.faqboard.model.vo.FAQBoardVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.passionStudy.passion.board.faqboard.model.*" %>
<jsp:useBean id="dao" class="com.passionStudy.passion.board.faqboard.model.dao.FAQBoardDao"/>
<jsp:useBean id="vo1" class="com.passionStudy.passion.board.faqboard.model.vo.FAQBoardVo"/>
<%-- <%
	MemberVo loginMember 	= (MemberVo)session.getAttribute("loginMember");
%> --%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>Welcome Passion StudyCafe~!</title>
  </head>
  <body>
    
<%-- <%
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "passion";
	String pw = "passion";
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet result = null;
	
	// 메인페이지에서 get 방식으로 idx값을 보냈던 그 변수가 getParameter("idx") 이곳에 들어간거고
	// 그 값을 idx에 대입한것 get방식이든 post방식이든 넘어오게 되면 데이터타입이 String이 된다
	// 그래서 형변환으로 Integer.parseInt를 사용한것
	int idx = Integer.parseInt(request.getParameter("idx"));
	
	try {
		Class.forName(driver); // JDBC드라이버 로딩
		conn = DriverManager.getConnection(url,id,pw); // DB서버연결
		stmt = conn.createStatement(); //Statment타입의 객체 생성
		String sql = "SELECT FAQ_TITLE, FAQ_CONTENT FROM FAQ_BOARD WHERE FAQ_NO=" + idx; 
		result = stmt.executeQuery(sql); // SQL실행
		if(result.next()); {
			String title = result.getString(1);
			String content = result.getString(2);		

%>   --%>
<%
	int idx = Integer.parseInt(request.getParameter("idx"));
	int pg = Integer.parseInt(request.getParameter("pg"));
	FAQBoardVo vo = dao.getView(idx);	
%>
    
    <div class="cont_header">
      <div class="cont_wrapper">
        <h1>커뮤니티</h1>
      </div>
    </div>
	
	<div class="tabtype">
    </div>

    <section>
      <div id="board">
        <div id="board_main">
          <div id="board_form">
             <select
              id="board_select"
              name="board_select"
              title="문의선택"
              class="sel"
            >
              <option value="member_inquiry">회원문의</option>
              <option value="reservation_inquiry">예약문의</option>
              <option value="payment_inquiry">결제문의</option>
              <option value="product_inquiry">상품문의</option>
              <option value="cancel_inquiry">취소문의</option>
            </select>
            <form id="board_form_title" action="faq.modify.do" method="post">
              <input
                type="text"
                name="faqTitle"
                class="form-control mt-4 mb-2"
                placeholder="제목을 입력해주세요."
                required
                value="<%=vo.getFaqTitle() %>"
              />
              <div class="form-group">
                <textarea
                  class="form-control"
                  rows="10"
                  name="faqContent"
                  placeholder="내용을 입력해주세요"
                  required
                ><%=vo.getFaqContent() %></textarea>
              </div>
              <div class="board_write_btn">
                  <input type="submit" value="수정" class="write_btn yb" style="margin:10px 10px 0 20px">
                  <input type="button" value="취소" class="write_btn yb" OnClick="window.location='index.jsp?inc=./views/board/faq/board_faq_manager.jsp'">
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
<%-- <%
	result.close();
	stmt.close();
	conn.close();
		}
		
	} catch(SQLException e) {
		out.println(e.toString());
	}
%>   --%>
  </body>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>