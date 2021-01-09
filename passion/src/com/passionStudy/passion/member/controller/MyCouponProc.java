package com.passionStudy.passion.member.controller;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.passionStudy.passion.member.model.service.MyPageService;
import com.passionStudy.passion.member.model.vo.CouponVo;
import com.passionStudy.passion.member.model.vo.MemberVo;


@WebServlet("/MyCoupon.do")
public class MyCouponProc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public MyCouponProc() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
		int memNo = loginMember.getMemNo();
		
		MyPageService service = new MyPageService();
		Vector<CouponVo> myCoupon = service.getCoupon(memNo);
		
		// 유효값 매핑
		/*
		 * for(CouponVo vo : myCoupon) { if(vo.getCouponValid().equals('Y')){ String
		 * used = "받았음"; } else { String get = "받기"; } }
		 */
		
		request.setAttribute("myCoupon", myCoupon);
		RequestDispatcher dis = request.getRequestDispatcher("./views/mypage/onclick/mypage_my_coupon.jsp");
		dis.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
