package com.smhrd.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ex02GetCookies")
public class Ex02GetCookies extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Ex02GetCookies.jsp 그대로 가져와서 조금만 수정함
		
		// < 쿠키 확인 >  (name, value)
		// 1. 클라이언트 -> 서버 (request) 
		Cookie[] cookies = request.getCookies();
				
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();   // out을 따로 이렇게 맞춰줘야한다
		// 2. 쿠키 정보 출력
		for(Cookie c:cookies) {
			out.print(c.getName() + " : " + c.getValue() + "<br>" );
		}
		
		
	}

}
