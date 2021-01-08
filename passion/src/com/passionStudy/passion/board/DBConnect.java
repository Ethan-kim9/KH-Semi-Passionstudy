package com.passionStudy.passion.board;
import java.sql.Connection;
import java.sql.DriverManager;


public class DBConnect {
		public DBConnect() {}
		
		public Connection getConnection() {
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String id = "passion";
			String pw = "passion";
			
			Connection con = null;
			
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con = DriverManager.getConnection(url,id,pw);
			}catch(Exception e) {
				System.out.println(e);
			}
			return con;
		}
	}

