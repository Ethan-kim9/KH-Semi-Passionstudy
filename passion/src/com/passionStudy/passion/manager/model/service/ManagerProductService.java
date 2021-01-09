package com.passionStudy.passion.manager.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.passionStudy.passion.manager.model.dao.ManagerProductDao;
import com.passionStudy.passion.manager.model.vo.ManagerProductVo;
import static com.passionStudy.passion.common.JDBCtemplate.close;
import static com.passionStudy.passion.common.JDBCtemplate.commit;
import static com.passionStudy.passion.common.JDBCtemplate.getConnection;
import static com.passionStudy.passion.common.JDBCtemplate.rollback;

public class ManagerProductService {

	public ArrayList<ManagerProductVo> listProducts() {
		Connection conn = getConnection();
		ArrayList<ManagerProductVo> list = new ManagerProductDao().listProducts(conn);
		close(conn);
		return list;
	}

	public int editRoomType(String roomNo, String roomStatus) {
		Connection conn = getConnection();
		int result = new ManagerProductDao().editRoomType(conn,roomNo,roomStatus);
		close(conn);
		if(result>0) {
			commit(conn);
		}else
			rollback(conn);
		return result;
	}

}
