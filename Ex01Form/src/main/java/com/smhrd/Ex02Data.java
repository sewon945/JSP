package com.smhrd;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ex02Data")
public class Ex02Data extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String num = request.getParameter("num");
		
		System.out.println(num);
		
		// 인코딩 방식의 형식 지정
		response.setContentType("text/html; charset=UTF-8");
		// 한글이 섞여있음(위에서 인코딩으로 설정해주기)
		PrintWriter out = response.getWriter();
		out.print("입력한 숫자는 <b>" + num + "</b>입니다");
	}

}
