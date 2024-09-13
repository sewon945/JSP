package com.smhrd;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ex04Operation")
public class Ex04Operation extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		String ope =request.getParameter("ope");
		
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		
		if(ope.equals("plus")) {   // equals : 문자열 비교 , == : 기본타입(정수,블리언,실수형 등 8가지)만 비교 
		out.print(num1 + " + "  + num2 + " = " + (num1 + num2));   // html파일에서 option태그 +에 value을 추가했으니 이 출력문도 바뀐다 
		} else if (ope.equals("-")) {
			out.print(num1 + ope + num2 + " = " + (num1 - num2));  // 연산기호(+,-,*,/)를 ope로 써도 상관없음
		} else if (ope.equals("*")) {
			out.print(num1 + " * "  + num2 + " = " + (num1 * num2));
		} else if (ope.equals("/")) {
			out.print(num1 + " / "  + num2 + " = " + (num1 / num2));
		}
		
		
	}

}
