<%@page import="com.smhrd.model.MavenMember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- LoginController에 있는 키값 가지고 오기, 업캐스팅 되어있으니 (MavenMember) 이걸로 다운캐스팅해주기 -->
	<%MavenMember member = (MavenMember)session.getAttribute("member"); %>

 	<%if(member==null) { %>
	<!-- 로그인 전 -->
	<a href="join.jsp"><button>회원가입</button></a>
	<a href="login.jsp"><button>로그인</button></a>
	<%} else { %>
	<!-- 로그인 후 -->
	<%=member.getNickname() %> <a href="LogoutController.do"><button>로그아웃</button></a>
	<!-- member.getNickname() : 닉네임 -->
	<%} %>
	
	<br>
	
	<!-- JSTL을 사용한 IF문 -->
	
		 <!-- 
		 if보다 또다른 조건이 필요할 때에는 choose 쓰기
		 when (=if)/ otherwise(=else), 
		 empty member은 특정(세션) 영역 안에 있는 member가 null인지 
		 -->
	<c:choose>
		<c:when test="${empty member }">
			<a href="join.jsp"><button>회원가입</button></a>
			<a href="login.jsp"><button>로그인</button></a>		
		</c:when>
		<c:otherwise>
		<!-- member.nickname 이 값이 그냥 이렇게 문자로 뜨면 위 인코딩에 isELIgnored="false" 적어주기 -->
			${member.nickname } <a href="LogoutController.do"><button>로그아웃</button></a>
		</c:otherwise>
	</c:choose>
	
</body>
</html>