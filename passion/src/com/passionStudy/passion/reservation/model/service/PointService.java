package com.passionStudy.passion.reservation.model.service;

import static com.passionStudy.passion.common.JDBCtemplate.close;
import static com.passionStudy.passion.common.JDBCtemplate.getConnection;

import java.sql.Connection;

import com.passionStudy.passion.reservation.model.dao.PointDao;

public class PointService {
	public int pointUpdate(int memPoint, int memNo) {
		Connection conn = getConnection();
		System.out.println("DB접속 성공");
		int ps = new PointDao().pointUpdate(conn, memPoint, memNo);
		close(conn);
		return ps;
	}
}
