package com.smhrd;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// localhost:8081/Ex01Form/Ex05Table 요청 => 테이블이 출력되는 html 문서를 응답
@WebServlet("/Ex05Table")
public class Ex05Table extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int cell = Integer.parseInt(request.getParameter("cell"));
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();

		// table태그 , tr태그(행) 1개, td태그 6개
		out.print("<table border='1'>");   // html문서 상에서도 가장 위쪽에 있음
		out.print("<tr>");
		for(int i=1 ; i<=cell ; i++) {
			out.print("<td>" + i + "</td>");
		}
		out.print("</tr>");
		out.print("</table>");
		
	}

}
