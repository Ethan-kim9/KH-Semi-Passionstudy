package com.passionStudy.passion.reservation.model.service;

import static com.passionStudy.passion.common.JDBCtemplate.close;
import static com.passionStudy.passion.common.JDBCtemplate.commit;
import static com.passionStudy.passion.common.JDBCtemplate.getConnection;
import static com.passionStudy.passion.common.JDBCtemplate.rollback;

import java.sql.Connection;

import com.passionStudy.passion.reservation.model.dao.ProductDao;
import com.passionStudy.passion.reservation.model.vo.ProductVo;

public class ProductService {	
	public int insertProductData(int roomNo, int productData) {
		Connection conn = getConnection();
		System.out.println("DB접속 성공");
		int pv = new ProductDao().productInsert(conn, roomNo, productData);
		close(conn);
		return pv;
	}
}
