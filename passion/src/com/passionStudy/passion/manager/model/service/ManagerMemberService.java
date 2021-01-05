package com.passionStudy.passion.manager.model.service;
import static com.passionStudy.passion.common.JDBCtemplate.close;
import static com.passionStudy.passion.common.JDBCtemplate.commit;
import static com.passionStudy.passion.common.JDBCtemplate.getConnection;
import static com.passionStudy.passion.common.JDBCtemplate.rollback;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import com.passionStudy.passion.manager.model.dao.ManagerMemberDao;
import com.passionStudy.passion.manager.model.vo.ManagerMemberVo;


public class ManagerMemberService {
	
	Connection conn;
	
	public ArrayList<ManagerMemberVo> memberSearch() throws SQLException{
		
		conn = getConnection();
		
		ArrayList<ManagerMemberVo> list = new ManagerMemberDao().memberSearch(conn);
		
		conn.close();
		
		return list;
	}
}
