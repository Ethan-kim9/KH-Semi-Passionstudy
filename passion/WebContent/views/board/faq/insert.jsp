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
	String board_category = request.getParameter("faq_category");
	String board_title = request.getParameter("faq_title");
	String board_content = request.getParameter("faq_content");
	String board_readcount = request.getParameter("faq_readcount");
	
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
		String sql = "INSERT INTO FAQ_EX"+
					"(FAQ_NO,FAQ_CATEGORY,FAQ_TITLE,FAQ_CONTENT,FAQ_READCOUNT,FAQ_REGDATE)"+
					"VALUES(FAQ_SEQ.NEXTVAL, '"+board_category+"', '"+board_title+"','"+board_content+"', '"+board_readcount+"', SYSDATE)";
		
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