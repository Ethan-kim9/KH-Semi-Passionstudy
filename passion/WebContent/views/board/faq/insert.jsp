<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
	request.setCharacterEncoding("UTF-8");
	String faqboard_title = request.getParameter("faq_title");
	String faqboard_content = request.getParameter("faq_content");
	
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String id = "passion";
	String pw = "passion";
	Connection conn = null;
	Statement stmt = null;

	try {
		Class.forName(driver);
		conn=DriverManager.getConnection(url,id,pw);
		stmt=conn.createStatement();
		String sql = "INSERT INTO FAQ_BOARD"+
					"(FAQ_NO,MEMBER_NO,FAQ_TITLE,FAQ_CONTENT,FAQ_DATE)"+
					"VALUES(FAQ_SEQ.NEXTVAL, 0 ,'"+faqboard_title+"', '"+faqboard_content+"', SYSDATE)";
		
		stmt.executeUpdate(sql);
		
		stmt.close();
		conn.close();
			
	} catch (Exception e) {
		out.println(e.toString());
	}
%>

<script>
	self.window.alert("입력한 글을 저장하였습니다.");
	location.href="index.jsp?inc=./views/board/faq/board_faq_manager.jsp";
</script>
</body>
</html>