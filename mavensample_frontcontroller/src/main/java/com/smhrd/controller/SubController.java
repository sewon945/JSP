package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface SubController { // login logout join의 부모라고 생각하면 됨
	// 요청을 처리할 컨트럴러 클래스에서 재구현할 인터페이스 (Command interface)
	// 요청을 처리하기 위한 process 메서드를 오버라이딩 할 수 있도록 강제성 부여
	// process => Servlet class ('service 메서드'와 비슷함 - 요청과 응답을 처리하는 메서드)
	
	// 실제 요청을 받고 응답을 해주는 클래스 => FrontController
	// process 요청 처리 / process 응답(최종적으로 이동해야하는 페이지의 경로만 리턴) - 리턴값을 받으면 FronController에서 해줌
	public String process(HttpServletRequest request, HttpServletResponse response);
}
