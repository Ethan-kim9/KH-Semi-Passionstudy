package com.passionStudy.passion.common;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class JDBCtemplate {

	public static Connection getConnection() {
		
		Connection conn = null;
		Properties prop = new Properties();
		String path = JDBCtemplate.class.getResource("/sql/driver/driver.properties").getPath();
		try {
			prop.load(new FileInputStream(path));
			Class.forName(prop.getProperty("driver"));
			conn = DriverManager.getConnection(prop.getProperty("url")
					                          ,prop.getProperty("id")
					                          ,prop.getProperty("pwd"));
			
			
		} catch (IOException e) { e.printStackTrace();
		} catch (ClassNotFoundException e) { e.printStackTrace();
		} catch (SQLException e) { e.printStackTrace();
		}
		return conn;
	}
	
	public static void commit(Connection conn) {
		
		try {
			if(!conn.isClosed()&&conn!=null) {
				conn.commit();
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public static void rollback(Connection conn) {
		try {
			if(!conn.isClosed()&&conn!=null) {				
				conn.rollback();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Connection conn) {
		try {
			if(!conn.isClosed()&&conn!=null) {
				conn.close();				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public static void close(Statement stmt) {
		try {
			if(!stmt.isClosed()&&stmt!=null) {
				stmt.close();				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
			
	}
	
	public static void close(ResultSet rs) {
		
		try {
			if(!rs.isClosed()&&rs!=null) {				
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}