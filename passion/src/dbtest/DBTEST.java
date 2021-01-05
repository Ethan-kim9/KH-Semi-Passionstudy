package dbtest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBTEST {
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String sql = "SELECT * FROM NOTICE";
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(url, "dbtest", "1234");
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(sql);
		
		if(rs.next()) {
		String ntitle = rs.getString("NOTICE_TITLE");
		System.out.println(ntitle);
			
		rs.close();
		st.close();
		conn.close();
		}
	}

}