package com.smhrd;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ex03Plus")
public class Ex03Plus extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String num1 = request.getParameter("num1");
		int intNum1 = Integer.parseInt(num1);   // 문자열에 숫자 외(영문/한글)의 값이 없어야함!
		
		// 위에 두 줄을 한 줄로 바꿀 수 있음 (대신 String을 int로 바꿔주기)
		int num2 = Integer.parseInt(request.getParameter("num2"));
		
		// String => int 정수형으로 바꿔주기
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(intNum1 + " + " + num2 + " = " + (intNum1 + num2));
	}

}
