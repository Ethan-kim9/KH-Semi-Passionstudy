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

import com.passionStudy.passion.manager.model.vo.ManagerProductVo;

public class ManagerProductDao {
	
	private Properties prop = new Properties();
	
	public ManagerProductDao() {
		String fileName = ManagerMemberDao.class.getResource("/sql/manager/managerProduct-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<ManagerProductVo> listProducts(Connection conn) {
		ArrayList<ManagerProductVo> list = new ArrayList<>();
		Statement stmt = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("listRoom");
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				ManagerProductVo mpv = new ManagerProductVo();
				
				mpv.setRoomNo(rs.getInt("ROOM_NO"));
				mpv.setRoomName(rs.getString("ROOM_NAME"));
				mpv.setRoomInfo(rs.getString("ROOM_INFORMATION"));
				mpv.setRoomPrice(rs.getInt("ROOM_PRICE"));
				mpv.setRoomType(rs.getString("ROOM_TYPE"));
				list.add(mpv);
}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(stmt);
		}
		
		return list;
	}

	public int editRoomType(Connection conn, String roomNo, String roomStatus) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("setRoomType");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,roomStatus);
			pstmt.setString(2,roomNo);
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
}


