package com.passionStudy.passion.reservation.model.dao;

import static com.passionStudy.passion.common.JDBCtemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;



public class ReservationDao {
	Connection conn = null;

	private Properties prop = new Properties();

	public ReservationDao() {
		String fileName = RoomDao.class.getResource("/sql/reservation/reservation.xml").getPath();

		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int reservationInsert(Connection conn, int memNo, String resName, String resEmail, String resPhone, int resProson, String resTime, String resMet, int resPrice, String resInfo, int resMon, int resCom, int resPro, String resMsg ) {
		PreparedStatement pstmt = null;
		int rs = 0;
		String sql = prop.getProperty("insertReservation");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setLong(1, memNo);
			pstmt.setString(2, resName);
			pstmt.setString(3, resEmail);
			pstmt.setString(4, resPhone);
			pstmt.setLong(5, resProson);
			pstmt.setString(6, resTime);
			pstmt.setString(7, resMet);
			pstmt.setLong(8, resPrice);
			pstmt.setString(9, resInfo);
			pstmt.setLong(10, resMon);
			pstmt.setLong(11, resCom);
			pstmt.setLong(12, resPro);
			pstmt.setString(13, resMsg);
			rs = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return rs;
	}
}

//INSERT INTO RESERVATION VALUES(SEQ_RENO.NEXTVAL, ?, SEQ_PRNO.CURRVAL, ?, ?, ?, ?, SYSDATE, ?, ?, SYSDATE, ?, 'Y', ?, ?, ?, ?, ?);
