package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MavenMemberDAO {
	// DAO 객체가 생성이 되면
	// 1. SessionFactory (메서드 만든 거) 가져오기
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	// 2. Session 객체 생성 => DB 관련된 작업 수행해주는 단위 (INSERT, SELECT ..)
	
	
	// <회원가입>
	// 1. 회원가입 메서드 만들기
	public int join(MavenMember member) {
		// 1-1. Session 생성 (insert)
		// true => auto commit 옵션해주기  / 원래 false(기본값)
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		// insert into mavenmember values (?,?,?) 
		// (호출할 sql문(namespace.id) , sql 호출 시에 사용자가 사용(입력)한 파라미터) 
		// => 매번 바뀌는 값을 넣어야함(member수 매번 바뀜), 넘겨줄 파라미터가 없을 때는 쓰지 않는다
		int res = sqlSession.insert("MemberMapper.join", member); // ("문자열" , 매개인자)
		
		
		// session 객체 close 해주기 (자원 회수)
		 sqlSession.close();
		 
		 return res;   // Controller에 전달 (결과값 return)
	}
	
	
	// <로그인>
	// 2. 로그인 메서드
	public MavenMember login(MavenMember member) { // controller에서 넘겨준 member
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		                    // MemberMapper에 있는 login 호출하기
		// insert나 selectOne 같은 경우에는 오버로딩 되어있음
		MavenMember result = sqlSession.selectOne("MemberMapper.login", member);  
		sqlSession.close();
		 return result; 
	}
	
}
