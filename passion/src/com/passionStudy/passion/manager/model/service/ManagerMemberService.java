package com.passionStudy.passion.manager.model.service;

import static com.passionStudy.passion.common.JDBCtemplate.close;
import static com.passionStudy.passion.common.JDBCtemplate.commit;
import static com.passionStudy.passion.common.JDBCtemplate.getConnection;
import static com.passionStudy.passion.common.JDBCtemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.passionStudy.passion.manager.model.dao.ManagerMemberDao;
import com.passionStudy.passion.manager.model.vo.ManagerMemberVo;


public class ManagerMemberService {
	
	
	public ArrayList<ManagerMemberVo> memberSearch(String searchName){
		
		Connection conn = getConnection();
		
		System.out.println("DB 연결성공");
		
		ArrayList<ManagerMemberVo> list = new ManagerMemberDao().memberSearch(conn, searchName);
		close(conn);
		
		return list;
	}
}
