<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.passionStudy.passion.board.faqboard.model.*" %>
<jsp:useBean id="dao" class="com.passionStudy.passion.board.faqboard.model.dao.FAQBoardDao"/>
<jsp:useBean id="vo" class="com.passionStudy.passion.board.faqboard.model.vo.FAQBoardVo"/>
<jsp:setProperty name="vo" property="*" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%
	request.setCharacterEncoding("UTF-8");
	String faqboard_title = request.getParameter("faq_title");
	String faqboard_content = request.getParameter("faq_content");
	
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String id = "passion";
	String pw = "passion";
	Connection conn = null;
	Statement stmt = null;
	
	int idx = Integer.parseInt(request.getParameter("idx"));

	try {
		Class.forName(driver);
		conn=DriverManager.getConnection(url,id,pw);
		stmt=conn.createStatement();
		String sqlUpdate = "UPDATE FAQ_BOARD SET FAQ_TITLE='"+faqboard_title+"', FAQ_CONTENT='"+faqboard_content+"' WHERE FAQ_NO=" + idx;
		
		stmt.executeUpdate(sqlUpdate);
		
		stmt.close();
		conn.close();
			
	} catch (Exception e) {
		out.println(e.toString());
	}
%> --%>
<%
	int idx = Integer.parseInt(request.getParameter("idx"));
	int pg = Integer.parseInt(request.getParameter("pg"));
	dao.modify(vo, idx);
	
%>
<script>
	self.window.alert("입력한 글을 수정하였습니다.");
	location.href="index.jsp?inc=./views/board/faq/board_faq_manager.jsp";
</script>
</body>
</html>