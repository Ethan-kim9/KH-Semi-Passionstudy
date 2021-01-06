<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.passionStudy.passion.board.faqboard.model.*" %>
<jsp:useBean id="dao" class="com.passionStudy.passion.board.faqboard.model.dao.FAQBoardDao"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "passion";
	String pw = "passion";
	
	Connection conn = null;
	Statement stmt = null;
	
	// 메인페이지에서 get 방식으로 idx값을 보냈던 그 변수가 getParameter("idx") 이곳에 들어간거고
	// 그 값을 idx에 대입한것 get방식이든 post방식이든 넘어오게 되면 데이터타입이 String이 된다
	// 그래서 형변환으로 Integer.parseInt를 사용한것
	int idx = Integer.parseInt(request.getParameter("idx"));
	
	try {
		Class.forName(driver); // JDBC드라이버 로딩
		conn = DriverManager.getConnection(url,id,pw); // DB서버연결
		stmt = conn.createStatement(); //Statment타입의 객체 생성
		String sqlDelete = "DELETE FROM FAQ_BOARD WHERE FAQ_NO=" + idx; // board테이블에 있는 no,title,writer,date 값을 가져오되 
		stmt.executeQuery(sqlDelete); // SQL실행;
		
		stmt.close();
		conn.close();
		
			
	} catch (Exception e) {
		out.println(e.toString());
	}	
%> --%>
<%
	int idx = Integer.parseInt(request.getParameter("idx"));
	int pg = Integer.parseInt(request.getParameter("pg"));
	dao.delete(idx);
	
%>
<script>
	self.window.alert("해당 글을 삭제하였습니다.");
	location.href="index.jsp?inc=./views/board/faq/board_faq_manager.jsp";
</script>
</body>
</html>