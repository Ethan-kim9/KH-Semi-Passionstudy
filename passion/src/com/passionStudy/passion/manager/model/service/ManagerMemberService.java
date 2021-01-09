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
		
		ArrayList<ManagerMemberVo> list = new ManagerMemberDao().memberSearch(conn, searchName);
		close(conn);
		
		return list;
	}


	public ArrayList<ManagerMemberVo> memberSearch(String searchName, String searchPhone) {
		Connection conn = getConnection();
		
		ArrayList<ManagerMemberVo> list = new ManagerMemberDao().memberSearch(conn, searchName , searchPhone);
		close(conn);
		
		return list;
	}
	public int changeMemberPW(String memNo) {
		Connection conn = getConnection();
		int result = new ManagerMemberDao().changeMemberPW(conn,memNo);
		if(result >0)commit(conn);
		else rollback(conn);
		
		return result;
	}


	public int changePoint(String memNo, String newPoint) {
		Connection conn = getConnection();
		int result = new ManagerMemberDao().changeMemberPoint(conn,memNo,newPoint);
		if(result >0)commit(conn);
		else rollback(conn);
		
		return result;
	}


	public int blackListEnroll(String memNo, String newStatus) {
		Connection conn = getConnection();
		int result = new ManagerMemberDao().blackListEnroll(conn,memNo,newStatus);
		if(result >0)commit(conn);
		else rollback(conn);
		
		return result;
	}


}
