package com.passionStudy.passion.reservation.model.dao;

import static com.passionStudy.passion.common.JDBCtemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

public class PointDao {

	Connection conn = null;

	private Properties prop = new Properties();

	public PointDao() {
		String fileName = RoomDao.class.getResource("/sql/manager/managerMember-mapper.xml").getPath();

		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int pointUpdate(Connection conn, int memPoint, int memNo) {
		PreparedStatement pstmt = null;
		int rs = 0;
		String sql = prop.getProperty("changePoint");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setLong(1, memPoint);
			pstmt.setLong(2, memNo);
			rs = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return rs;
	}
}
