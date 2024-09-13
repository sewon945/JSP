package com.smhrd.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 모든 요청을 받아줄 컨트롤러 ( *.do => web.xml에서 바꿔주기 )
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// List<> al = new ArrayList<>(); // ArrayList를 부모타입으로 업캐스팅하겠다
	Map<String, SubController> map = null; // init메서드 밖에서 변수 선언해서 초기화 시켜주기
	
	// init : 자바 객체가 생성된 후 한 번만 실행되는 메서드
	//     => 서블릿의 역할을 수행할 수 있도록 초기화 + 초기화 시 실행하고 싶은 기능이 있다면 추가
	public void init(ServletConfig config) throws ServletException {
		// (init메서드 안에) 들어올 수 있는 요청에 관련된 리스트 작성, 사용할 컨트롤러도 생성
		// Map : 순서가 없음(인덱스X) - key-value 형태를 가지고 있음 , ArrayList : 순서가 있음(인덱스O)
		
		// key(String타입- "/JoinController.do") - value(저 경로가 요청이 들어오면 JoinCon 호출해서 쓰기)
		// key(String타입- "/LoginController.do") - value(요청이 들어오면 LoginCon 호출해서 쓰기)
		// 원래는 Map<String, SubController> map = new HashMap<>(); 적어줬는데 초기화 시켜주기 위해 init메서드 위에서 초기화 시켜주고 변수만 붙여서 따로 적어주기
		map = new HashMap<>();
		map.put("/JoinController.do", new JoinCon());
		map.put("/LoginController.do", new LoginCon());
		map.put("/LogoutController.do", new LogoutCon());
		
		// 문자열 키 넣어주기(다운캐스팅해줘서 리턴시키기)
		// JoinCon con = (JoinCon)map.get("/JoinController.do");

	}


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 요청이랑 응답을 하는 부분이니까 인코딩 먼저 해주기
		request.setCharacterEncoding("UTF-8");
		
		// 요청 URI
		String requestUri = request.getRequestURI();
		System.out.println(requestUri);
		// /mavensample/JoinController.do 콘솔창에 출력
		// /mavensample/LoginController.do
		
		// join, login, index jsp파일에 있는 join, login, logout 경로에 .do 붙여주기
	
		// 콘솔창에 /mavensample 만 출력
		String contextPath = request.getContextPath();
		System.out.println(contextPath);
		// /mavensample 콘솔창에 출력
		
		// contextPath만 빼고 반환하겠다
		String path = requestUri.substring(contextPath.length());
		System.out.println(path);
		// 회원가입 : /JoinController.do
		// 로그인 : /LoginController.do
		
		SubController subController = map.get(path);
		String des = subController.process(request, response);
		
		response.sendRedirect(des);
	}

}
