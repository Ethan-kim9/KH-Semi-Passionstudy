package com.passionStudy.passion.reservation.model.dao;

import static com.passionStudy.passion.common.JDBCtemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.passionStudy.passion.reservation.model.vo.RoomVo;

public class RoomDao {
	Connection conn = null;

	private Properties prop = new Properties();

	public RoomDao() {
		String fileName = RoomDao.class.getResource("/sql/reservation/room.xml").getPath();

		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public RoomVo selectRoomData(Connection conn, int roomNo) {

		RoomVo rv = null;

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = prop.getProperty("selectRoomData");
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setLong(1, roomNo);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				rv = new RoomVo();
				rv.setRoomNo(rs.getInt("ROOM_NO"));
				rv.setRoomName(rs.getString("ROOM_NAME"));
				rv.setRoomType(rs.getString("ROOM_TYPE"));
				rv.setRoomCapMin(rs.getInt("ROOM_CAPACITYMIN"));
				rv.setRoomCapMax(rs.getInt("ROOM_CAPACITYMAX"));
				rv.setRoomInfo(rs.getString("ROOM_INFORMATION"));
				rv.setRoomFile(rs.getString("ROOM_FILEPATH"));
				rv.setRoomPrice(rs.getInt("ROOM_PRICE"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return rv;
	}
}
