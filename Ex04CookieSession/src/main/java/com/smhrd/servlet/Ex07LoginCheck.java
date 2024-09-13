package com.smhrd.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Ex07LoginCheck")
public class Ex07LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 혹시 모르니까 한글데이터로 먼저 인코딩 받기
		request.setCharacterEncoding("UTF-8");
				
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("test")&&pw.equals("12345")) {
			// 성공
			HttpSession session = request.getSession();
			session.setAttribute("id", id);  // "test"가 아닌 id 변수값 그대로 넣어줘도 됨
			// test가 같으면 바로 이동
			response.sendRedirect("Ex08Main.jsp");
		} else {
			// 로그인 실패
			response.sendRedirect("Ex07LoginForm.html");
		}
				
		
		
		
	}

}
