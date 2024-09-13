package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutCon implements SubController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		// 세션 값 삭제
		// session.removeAttribute("member");
		session.invalidate();
		
		return "index.jsp";
	}

}
