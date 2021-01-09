package com.passionStudy.passion.reservation.model.service;

import static com.passionStudy.passion.common.JDBCtemplate.close;
import static com.passionStudy.passion.common.JDBCtemplate.commit;
import static com.passionStudy.passion.common.JDBCtemplate.getConnection;
import static com.passionStudy.passion.common.JDBCtemplate.rollback;

import java.sql.Connection;

import com.passionStudy.passion.reservation.model.dao.RoomDao;
import com.passionStudy.passion.reservation.model.vo.RoomVo;

public class RoomService {

	public RoomVo selectRoomData(int roomNo) {
		Connection conn = getConnection();
		System.out.println("DB접속 성공");
		RoomVo rv = new RoomDao().selectRoomData(conn, roomNo);
		close(conn);
		return rv;
	}

}
