package com.passionStudy.passion.reservation.model.dao;

import static com.passionStudy.passion.common.JDBCtemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.passionStudy.passion.reservation.model.vo.ProductVo;

public class ProductDao {

	Connection conn = null;

	private Properties prop = new Properties();

	public ProductDao() {
		String fileName = RoomDao.class.getResource("/sql/reservation/product.xml").getPath();

		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ProductVo checkReservationCon(Connection conn, int roomNo, int productData, String productCon) {
		ProductVo pv = null;

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = prop.getProperty("checkReservationCon");
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setLong(1, roomNo);
			pstmt.setLong(2, productData);
			pstmt.setString(3, productCon);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				pv = new ProductVo();
				pv.setRoomNo(rs.getInt("PRODUCT_NO"));
				pv.setProId(rs.getInt("ROOM_NO"));
				pv.setProData(rs.getInt("PRODUCT_DATA"));
				pv.setProCon(rs.getString("PRODUCT_CONDITION"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return pv;
	}
}
