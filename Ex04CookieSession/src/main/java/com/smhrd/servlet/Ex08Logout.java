package com.smhrd.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Ex08Logout")
public class Ex08Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		// 둘 중에 하나만 적어주면 됨
		
		// 특정 세션값 삭제
		// session.removeAttribute("id");
		
		// 해당 클라이언트에 관련한 모든 세션 삭제
		session.invalidate();
		
		response.sendRedirect("Ex07LoginForm.html");
	}

}
