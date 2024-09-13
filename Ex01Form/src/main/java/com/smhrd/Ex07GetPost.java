package com.smhrd;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ex07GetPost")
public class Ex07GetPost extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// HTTP 요청 메서드
				// GET 데이터 조회 요청, POST 생성요청, DELETE 삭제, PUT 수정, PATCH 일부 수정
				// form 태그에서 요청 메서드를 생략한다면 기본 메서드인 GET이 실행되고 있는 것임
				// GET : Header, 주소창에 노출됨 - 보안에 취약, 캐싱 가능 , 빠르다
				// => 데이터 전송 방법 : form 태그, Query String 으로 데이터 전송
				// POST : Body, 주소창에 노출 x(보안에 강함), 개싱 불가능 , 캐싱보다 느리다
		
		// GET 요청 데이터 : server.xml URLEncoding 속성 추가 => 파라미터가 URI에 포함되어 있기 때문
		// POST 요청 데이터 : 데이터를 받을 때마다 인코딩 지정해줘야함 => 데이터 패킷의 body에 포함됨
		// *** 인코딩 코드의 위치 - 인코딩한 다음 parameter로 받아주기
		request.setCharacterEncoding("UTF-8");	 // UTF를 먼저 해주지 않으면 한글이 다 깨짐 (자바는 순서 중요!)
		String name = request.getParameter("name");  // getpost 요청을 일단 받음
		System.out.println(name);
	
		
		
	}

}
