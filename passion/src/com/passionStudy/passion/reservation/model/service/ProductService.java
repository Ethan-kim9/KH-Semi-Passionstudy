package com.passionStudy.passion.reservation.model.service;

import static com.passionStudy.passion.common.JDBCtemplate.close;
import static com.passionStudy.passion.common.JDBCtemplate.commit;
import static com.passionStudy.passion.common.JDBCtemplate.getConnection;
import static com.passionStudy.passion.common.JDBCtemplate.rollback;

import java.sql.Connection;

import com.passionStudy.passion.reservation.model.dao.ProductDao;
import com.passionStudy.passion.reservation.model.vo.ProductVo;

public class ProductService {
	public ProductVo selectRoomData(int roomNo, int productData, String productCon) {
		Connection conn = getConnection();
		System.out.println("DB접속 성공");
		ProductVo pv = new ProductDao().checkReservationCon(conn, roomNo, productData, productCon);
		close(conn);
		return pv;
	}
}
