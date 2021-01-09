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
	String board_title = request.getParameter("qna_title");
	String board_content = request.getParameter("qna_content");
	
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
		String sqlUpdate = "UPDATE QNA_BOARD SET QNA_TITLE='"+board_title+"', QNA_CONTENT='"+board_content+"' WHERE QNA_NO=" + idx;
		
		stmt.executeUpdate(sqlUpdate);
		
		stmt.close();
		conn.close();
			
	} catch (Exception e) {
		out.println(e.toString());
	}
%>

<script>
	self.window.alert("입력한 글을 수정하였습니다.");
	location.href="index.jsp?inc=./views/board/1on1/board_1on1.jsp";
</script>
</body>
</html>