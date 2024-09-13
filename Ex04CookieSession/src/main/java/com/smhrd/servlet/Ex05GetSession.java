package com.smhrd.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Ex05GetSession")
public class Ex05GetSession extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// < 세션 객체 생성 >
		// 먼저 세션 호출 해주고
		HttpSession session = request.getSession();
		
		// 세션 다루기
		// id 삭제했는데 보여주기 위해서 null 값 반환
		String id = (String)session.getAttribute("id");
		Integer age = (Integer)session.getAttribute("age");
		// int를 Integer로 수정을 해주면 정수형이 삭제가 됐을 때에도 오류없이 null값 확인 가능
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
				
		// 내가 출력하고 싶은 문구 작성
		out.print(id + "<br>" + age);
		
	}

}
