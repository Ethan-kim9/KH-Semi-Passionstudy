package com.passionStudy.passion.reservation.model.service;

import static com.passionStudy.passion.common.JDBCtemplate.close;
import static com.passionStudy.passion.common.JDBCtemplate.commit;
import static com.passionStudy.passion.common.JDBCtemplate.getConnection;
import static com.passionStudy.passion.common.JDBCtemplate.rollback;

import java.sql.Connection;

import com.passionStudy.passion.reservation.model.dao.ReservationDao;
import com.passionStudy.passion.reservation.model.vo.ReservationVo;

public class ReservationService {

	public int reservationInsert(int memNo, String resName, String resEmail, String resPhone, int resProson, String resTime, String resMet, int resPrice, String resInfo, int resMon, int resCom, int resPro, String resMsg) {

		Connection conn = getConnection();
		int rs = new ReservationDao().reservationInsert(conn, memNo, resName, resEmail, resPhone, resProson, resTime, resMet, resPrice, resInfo, resMon, resCom, resPro, resMsg);
		if(rs >0)commit(conn);
		else rollback(conn);
		
		return rs;
	}
}
