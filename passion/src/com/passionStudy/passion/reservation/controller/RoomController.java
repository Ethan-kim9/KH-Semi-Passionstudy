package com.passionStudy.passion.reservation.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.reservation.model.service.RoomService;
import com.passionStudy.passion.reservation.model.vo.RoomVo;

@WebServlet(urlPatterns = "/reservation.do")
public class RoomController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	String url = "index.jsp?inc=./views/reservation/reservation_roominfo.jsp";
	
	public RoomController() {
		super();
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		int room_no = Integer.parseInt(req.getParameter("room_no"));
		
		System.out.println("테스트" + room_no);
		
		RoomVo rv = new RoomService().selectRoomData(room_no);
		
		req.setAttribute("rv", rv);
		
		req.getRequestDispatcher(url).forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
	
	
	
	
}
