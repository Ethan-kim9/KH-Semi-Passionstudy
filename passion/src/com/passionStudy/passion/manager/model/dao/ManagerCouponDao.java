package com.passionStudy.passion.manager.model.dao;

import static com.passionStudy.passion.common.JDBCtemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.passionStudy.passion.manager.model.vo.ManagerCouponVo;

public class ManagerCouponDao {
	private Properties prop = new Properties();
	
	public ManagerCouponDao() {
		String fileName = ManagerCouponDao.class.getResource("/sql/manager/managerCoupon-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public ArrayList<ManagerCouponVo> listCoupon(Connection conn, String memNo){
		
		ArrayList<ManagerCouponVo> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("selectCoupon");
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memNo);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ManagerCouponVo mcv = new ManagerCouponVo();
				mcv.setCouponNo(rs.getInt("COUPON_NO"));
				mcv.setMemNo(rs.getInt("MEMBER_NO"));
				mcv.setCouponName(rs.getString("COUPON_NAME"));
				mcv.setCouponValid(rs.getString("COUPON_VALID"));
				mcv.setCouponDate(rs.getDate("COUPON_DATE"));
				list.add(mcv);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return list;
	}


	public int insertCoupon3(Connection conn, String memNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("couponInsert3000");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memNo);
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}return result;
	}


	public int insertCoupon5(Connection conn, String memNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("couponInsert5000");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memNo);
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}return result;
	}


	public int deleteCoupon(Connection conn, String target) {
		
		int result = 0;
		
		Statement stmt = null;
		
		String sql = "UPDATE COUPON SET COUPON_VALID = 'X' WHERE COUPON_NO IN ("+target+")";
		System.out.println(sql);
		try {
			stmt = conn.createStatement();
			result = stmt.executeUpdate(sql);
			System.out.println(result);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(stmt);
		}return result;
	}
}
