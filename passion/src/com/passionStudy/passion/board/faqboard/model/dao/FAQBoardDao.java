package com.passionStudy.passion.board.faqboard.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.passionStudy.passion.board.faqboard.model.vo.FaqBoardVo;

public class FAQBoardDao {
	
	public static void select(HttpServletRequest request, HttpServletResponse response) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet result = null;
		
		try {
			Context context = new InitialContext();
			DataSource dataSource = (DataSource) context.lookup("java:/comp/env/jdbc/Oracle11g");
			
			con = dataSource.getConnection();
			String sql = "SELECT * FROM FAQ_EX ORDER BY faq_No";
			pstmt = con.prepareStatement(sql);
			result = pstmt.executeQuery(sql);
			
			ArrayList<FaqBoardVo> faq_ex = new ArrayList<>();
			FaqBoardVo FaqVo;
			
			while (result.next()) {
				FaqVo = new FaqBoardVo();
				FaqVo.setFaq_No(result.getInt("FAQ_NO"));
				FaqVo.setFaq_Category(result.getString("FAQ_CATEGORY"));
				FaqVo.setFaq_Title(result.getString("FAQ_TITLE"));
				FaqVo.setFaq_Content(result.getString("FAQ_CONTENT"));
				faq_ex.add(FaqVo);
			}
			
			request.setAttribute("FAQ_EX", faq_ex);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (result != null) {
				try {
					result.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

	}
	
	public static void insert(HttpServletRequest request, HttpServletResponse response) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			//ConnectionPool 을 만듭니다. 
			String faq_Category = request.getParameter("faq_Category"); 
			String faq_Title  = request.getParameter("faq_Title"); 
			String faq_Content = request.getParameter("faq_Content");
			
			Context context = new InitialContext();
			DataSource dataSource = (DataSource) context.lookup("java:/comp/env/jdbc/Oracle11g");
			con = dataSource.getConnection();
			String sql = "INSERT INTO FAQ_EX VALUES (FAQ_SEQ.NEXTVAL, ?, ?, ?, SYSDATE)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, faq_Category);
			pstmt.setString(2, faq_Title);
			pstmt.setString(3, faq_Content);
			
			if (pstmt.executeUpdate() == 1) {
				request.setAttribute("result", "INSERT SUCCESS");
			}else {
				request.setAttribute("result", "INSERT FAIL");
			}	
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch(SQLException e) {
						e.printStackTrace();
				}
				
			} 
			if(con != null) {
				try {
					con.close();
				} catch(SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
}
