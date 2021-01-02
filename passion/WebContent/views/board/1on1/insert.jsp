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
	request.setCharacterEncoding("EUC-KR"); 
	int qna_no = 1;
	String board_title = request.getParameter("qna_title");
	String board_content = request.getParameter("qna_content");
	
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String id = "passion";
	String pw = "passion";
	Connection con = null;
	Statement stmt = null;

	try {
		Class.forName(driver);
		con=DriverManager.getConnection(url,id,pw);
		stmt=con.createStatement();
		String sql = "INSERT INTO QNA_BOARD"+
					"(QNA_NO,QNA_WRITER,QNA_TITLE,QNA_CONTENT,QNA_DATE)"+
					"VALUES(QNA_BOARD_SEQ.NEXTVAL, '작성자1', '"+board_title+"', '"+board_content+"', SYSDATE)";
		int result = stmt.executeUpdate(sql);
		
		if (result==1) {
			out.print("INSERT SUCCESS");
		}else {
			out.print("INSERT FAIL");
		}
	} catch (Exception e) {
		e.printStackTrace();
		out.println(e.getMessage());
	}finally {
		if (stmt!=null) {
			try {
				stmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				out.println(e.getMessage());
			}
		}
		if (con!=null) {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				out.println(e.getMessage());
			}
		}
	}
%>
</body>
</html>