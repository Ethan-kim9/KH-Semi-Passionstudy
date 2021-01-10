package com.passionStudy.passion.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.passionStudy.passion.member.model.vo.MemberVo;

//자주묻는질문 관리자 유저
@WebServlet("/faq.ManagerOrUser")
public class FAQManagerOrUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public FAQManagerOrUserController() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doPost(request, response);
	}

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String managerCheck = "A";
		String userCheck = "N";
		final String manager = "관리자";
		final String user = "회원";
		final String nonMember = "비회원";
		
		HttpSession session = request.getSession(false);
		
		if (session != null) {
			MemberVo check = (MemberVo)session.getAttribute("loginMember");
			if(check != null) {
				if(managerCheck.equals(check.getMemStatus())) {
					System.out.println(manager);
					request.setAttribute("manager", manager);
				} else if (userCheck.equals(check.getMemStatus())) {
					System.out.println(user);
					request.setAttribute("user", user);
				}
			} // if(check != null)
			else {
				System.out.println(nonMember);
				request.setAttribute("nonMember", nonMember);			
			}
		} // if (session != null) 
		else {
			System.out.println(nonMember);
			request.setAttribute("nonmember", nonMember);
		}
    	request.getRequestDispatcher("index.jsp?inc=./views/board/faq/board_faq_manager.jsp").forward(request, response);

	}

}
