package com.passionStudy.passion.manager.model.service;

import static com.passionStudy.passion.common.JDBCtemplate.close;
import static com.passionStudy.passion.common.JDBCtemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.passionStudy.passion.manager.model.dao.ManagerSalesDao;
import com.passionStudy.passion.manager.model.vo.ManagerSalesVo;


public class ManagerSalesService {
	
	public ArrayList<ManagerSalesVo> salesSearch(String time){
		
		Connection conn = getConnection();
		
		System.out.println("DB 연결성공");
		
		ArrayList<ManagerSalesVo> list = new ManagerSalesDao().salesSearch(conn,time);
		close(conn);
		
		return list;
	}
}
