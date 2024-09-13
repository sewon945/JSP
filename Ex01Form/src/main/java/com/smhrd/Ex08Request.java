package com.smhrd;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ex08Request")
public class Ex08Request extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String job = request.getParameter("job");
		String gender = request.getParameter("gender");
		// getParameter : name이 동일하게 지정된 파라미터들 중에서 첫 번째 파라미터만 반환함! (체크를 복수 개 해도 하나(첫번째)만 반환)
		// String hobby = request.getParameter("hobby");
		
		// getParameterValues : 복수이고 배열이라 여러 개의 값 반환! (체크를 복수 개 해도 그대로 반환함)
		String[] hobby = request.getParameterValues("hobby");
	
		System.out.println(job);
		System.out.println(gender);
		System.out.println(Arrays.toString(hobby));   // Arrays.toString() 이렇게 써야 내가 선택한 것들이 반환됨
	}

}
