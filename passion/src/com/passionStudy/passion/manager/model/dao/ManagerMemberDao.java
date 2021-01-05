package com.passionStudy.passion.manager.model.dao;
import static com.passionStudy.passion.common.JDBCtemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.passionStudy.passion.manager.model.vo.ManagerMemberVo;

public class ManagerMemberDao {
	private Properties prop = new Properties();
	
	public ManagerMemberDao() {
		
		String fileName = ManagerMemberDao.class.getResource("sql/manager/ManagerMemberMapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<ManagerMemberVo> memberSearch(Connection conn, String searchName) {
		
		ArrayList<ManagerMemberVo> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("MemberSearch");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, searchName);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				ManagerMemberVo mmv = new ManagerMemberVo();
				mmv.setMemNo(rs.getInt("MEMBER_NO"));
				mmv.setMemId("MEMBER_ID");
				mmv.setMemName("MEMBER_NAME");
				mmv.setMemPhone("MEMBER_PHONE");
				mmv.setMemDate(Date.valueOf("Member_Date"));
				mmv.setMemStatus("MEMBER_STATUS");
				mmv.setMemPoint(rs.getInt("MEMBER_POINT"));
				
				list.add(mmv);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}
}
