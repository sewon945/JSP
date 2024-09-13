package com.smhrd.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Ex06Invalidate")
public class Ex06Invalidate extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 이렇게 호출만 해주면 전부 다(모두) 삭제
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		
		// 페이지 이동해주기 (서블릿으로 가려거든 url 랩핑값(.java) 없이 값만 적어주기)
		response.sendRedirect("Ex05GetSession");
		
		// jsp를 삭제하고 싶으면 Integer로 바꿔주기
	}

}
