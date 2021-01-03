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

	try {
		Class.forName(driver);
		conn=DriverManager.getConnection(url,id,pw);
		stmt=conn.createStatement();
		String sql = "INSERT INTO QNA_BOARD"+
					"(QNA_NO,QNA_WRITER,QNA_TITLE,QNA_CONTENT,QNA_DATE)"+
					"VALUES(QNA_BOARD_SEQ.NEXTVAL, '작성자1', '"+board_title+"', '"+board_content+"', SYSDATE)";
		
		stmt.executeUpdate(sql);
		
		stmt.close();
		conn.close();
			
	} catch (Exception e) {
		out.println(e.toString());
	}
%>

<script>
	self.window.alert("글을 저장하였습니다.");
	location.href="index.jsp?inc=./views/board/1on1/board_1on1.jsp";
</script>
</body>
</html>