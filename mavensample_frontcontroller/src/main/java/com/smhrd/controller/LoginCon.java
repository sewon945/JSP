package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MavenMember;
import com.smhrd.model.MavenMemberDAO;

public class LoginCon implements SubController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		// MavenMember에서 생성자 만들었으니까 하나로 묶어서 넘겨주기
		MavenMember member = new MavenMember(id, pw);

		// 넘겨줄 DAO 만들기
		MavenMemberDAO dao = new MavenMemberDAO();

		// 로그인 메서드를 파라미터로 넘겨주기(mavenmemer타입 객체 넘겨줌)
		MavenMember result = dao.login(member);

		// 성공 : 회원의 정보를 담고 있는 MavenMember 객체 반환
		// 실패 : MavenMember 객체 생성X => null

		if (result != null) {
			System.out.println("성공");
			// 로그인한 회원의 정보를 세션에 저장
			HttpSession session = request.getSession();
			session.setAttribute("member", result);
			// session에 값("member",result)을 담은 후 redirct해줘야함
			return "index.jsp";
		} else { // null
			System.out.println("실패");
			return "login.jsp";
		}
	}

}
