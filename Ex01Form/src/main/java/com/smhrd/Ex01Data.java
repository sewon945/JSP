package com.smhrd;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/data")
public class Ex01Data extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// Tomcat9 (8버전 이상부터는 요청 데이터 인코딩 기본 방식 : UTF-8)
		// 이하 버전을 사용하는 경우에는 기본 방식 : EUC-KR => 한글데이터가 깨짐
		
		
		// 요청 파라미터 받기 (사용자가 입력한 값)
		// 클라이언트 ~~> 서버 (request)
		// getParameter("input에 지정한 name값")
		String data = request.getParameter("data");
		
		// 콘솔창에 출력
		System.out.println(data);
		// servlet은 실행할 필요없고 html을 실행해서 입력값인 data가 잘 출력되는 지 확인(입력값에 내가 원하는 입력값을 넣어 제출버튼을 누르면 잘 나오는 지 확인)
		// acction과 name을 헷갈리지 말고 name값을 request에 지정해야하는 거 잊지말기! (action값을 줘버리면 null값이 나옴)
		
		// 응답데이터 인코딩 설정 (생략 가능)
		response.setCharacterEncoding("UTF-8");
		// 응답에 대한 문자 인코딩하기 - 클라이언트(브라우저)에 응답 데이터의 형식과 인코딩방식을 알려줘야함! (무조건 쓰기-생략불가능)
		response.setContentType("text/html; charset=UTF-8");  
		
		// 브라우저(클라이언트) 화면에 출력
		PrintWriter out = response.getWriter();
		out.print(data);
		// 한글 데이터를 출력할 때는 다 깨지니까 인코딩 설정해주기(이거 쓰기 전 위에서 설정해주기)
		
	}

}
