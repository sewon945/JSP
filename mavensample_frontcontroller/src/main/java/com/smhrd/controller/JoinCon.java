package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MavenMember;
import com.smhrd.model.MavenMemberDAO;

public class JoinCon implements SubController {
// SubController 파일에서 implements SubController 구현함
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nickname = request.getParameter("nickname");

		// 1. DB생성 (MAVENMEMBER - ID, PW, NICKNAME)
		// 1-1. MyBatis (파라미터를 하나로 묶어서 넘겨줘야함 - 따로따로X) => VO
		// 2. VO 클래스 설계 => DB TABLE을 형태와 마춰줘야함
		// (테이블이름 -> 클래스이름 , 컬럼이름,타입 -> 필드)

		MavenMember member = new MavenMember(id, pw, nickname);

		MavenMemberDAO dao = new MavenMemberDAO();
		int res = dao.join(member);

		// MavenMember에서 리턴한 값 받기
		if (res > 0) {
			// 회원가입 성공
			// return 해주는 이유 : 해당 페이지로 최종 이동할 수 있도록 FrontController 에게 알려줌
			return "index.jsp";
		} else {
			// 회원가입 실패
			return "join.jsp";
		}

	}

}
