package com.passionStudy.passion.reservation.model.service;

import static com.passionStudy.passion.common.JDBCtemplate.close;
import static com.passionStudy.passion.common.JDBCtemplate.commit;
import static com.passionStudy.passion.common.JDBCtemplate.getConnection;
import static com.passionStudy.passion.common.JDBCtemplate.rollback;

import java.sql.Connection;

import com.passionStudy.passion.reservation.model.dao.ReservationDao;
import com.passionStudy.passion.reservation.model.vo.ReservationVo;

public class ReservationService {
	public ReservationVo 이름정해(체워야함) {
		Connection conn = getConnection();
		System.out.println("DB접속 성공");
		ReservationVo rv = new ReservationDao().체워야함(conn, 체워야함);
		close(conn);
		return rv;
	}

}
