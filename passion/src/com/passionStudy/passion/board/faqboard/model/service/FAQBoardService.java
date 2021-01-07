package com.passionStudy.passion.board.faqboard.model.service;

import static com.passionStudy.passion.common.JDBCtemplate.commit;
import static com.passionStudy.passion.common.JDBCtemplate.getConnection;
import static com.passionStudy.passion.common.JDBCtemplate.rollback;

import java.sql.Connection;
import java.sql.SQLException;

import com.passionStudy.passion.board.faqboard.model.dao.FAQBoardDao;
import com.passionStudy.passion.board.faqboard.model.vo.FAQBoardVo;

public class FAQBoardService {
	
	public int insertFaqboard(FAQBoardVo vo) throws SQLException{
		Connection conn = getConnection();
		int result = new FAQBoardDao().insertFaqboard(vo);
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		conn.close();
		return result;
	}
	
	
}
