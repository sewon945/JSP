package com.smhrd;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex09Join")
public class Ex09Join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String pw_check = request.getParameter("pw_check");
		String gender = request.getParameter("gender");
		String blood = request.getParameter("blood");
		String birth = request.getParameter("birth");
		String[] hobby = request.getParameterValues("hobby");
		String color = request.getParameter("color");
		String ta = request.getParameter("ta");

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print("아이디 : " + id + "<br>");
		out.print("비밀번호 : " + pw + "<br>");
		if(pw.equals(pw_check)) {
			out.print("비밀번호가 일치합니다<br>");
		} else {
			out.print("비밀번호가 일치하지 않습니다<br>");
		}
		out.print("성별 : " + gender + "<br>");
		out.print("혈액형 : " + blood + "<br>");
		out.print("생일 : " + birth + "<br>");
		out.print("취미 : " + Arrays.toString(hobby) + "<br>");
		out.print("좋아하는 색 : " + color + "<br>");
		out.print("남기고 싶은 말 : " + ta + "<br>");
		
		
		
	}

}
