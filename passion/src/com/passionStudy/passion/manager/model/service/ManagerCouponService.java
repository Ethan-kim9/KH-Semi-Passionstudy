package com.passionStudy.passion.manager.model.service;

import static com.passionStudy.passion.common.JDBCtemplate.close;
import static com.passionStudy.passion.common.JDBCtemplate.commit;
import static com.passionStudy.passion.common.JDBCtemplate.getConnection;
import static com.passionStudy.passion.common.JDBCtemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.passionStudy.passion.manager.model.dao.ManagerCouponDao;
import com.passionStudy.passion.manager.model.vo.ManagerCouponVo;

public class ManagerCouponService {

	public ArrayList<ManagerCouponVo> listCoupon(String memNo){
		Connection conn = getConnection();
		
		ArrayList<ManagerCouponVo> list = new ManagerCouponDao().listCoupon(conn, memNo);
		close(conn);
		return list;
	}

	public int insertCoupon3(String memNo) {
		Connection conn = getConnection();
		int result = new ManagerCouponDao().insertCoupon3(conn,memNo);
		if(result >0)commit(conn);
		else rollback(conn);
		return result;
	}

	public int insertCoupon5(String memNo) {
		Connection conn = getConnection();
		int result = new ManagerCouponDao().insertCoupon5(conn,memNo);
		if(result >0)commit(conn);
		else rollback(conn);
		return result;
	}
}
