package com.passionStudy.passion.manager.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.passionStudy.passion.manager.model.vo.ManagerSalesVo;

public class ManagerSalesDao {

	private Properties prop = new Properties();
	
	public ManagerSalesDao(){
	String fileName =ManagerSalesDao.class.getResource("/sql/manager/managerSales-mapper.xml").getPath();
	
	try {
		prop.loadFromXML(new FileInputStream(fileName));
		} catch(IOException e) {
			e.printStackTrace();
		}
	}	
	
	
	public ArrayList<ManagerSalesVo> salesSearch(Connection conn,String time) {
		
		ArrayList<ManagerSalesVo> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs =null;
		System.out.println(time);
		
		String sql = prop.getProperty("listSales");

		try {
			pstmt =conn.prepareStatement(sql);
			pstmt.setString(1, time);
			rs= pstmt.executeQuery();
			
			
			while(rs.next()) {
				ManagerSalesVo msv = new ManagerSalesVo();
					msv.setPaymentDate(rs.getDate("PAYMENT_DATE"));
					msv.setPaymentMethod(rs.getString("PAYMENT_METHOD"));
					msv.setPaymentPrice(rs.getInt("PAYMENT_PRICE"));
					list.add(msv);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}