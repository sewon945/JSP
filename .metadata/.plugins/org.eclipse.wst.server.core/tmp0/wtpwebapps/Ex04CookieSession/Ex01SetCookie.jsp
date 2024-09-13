<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// < 쿠키 생성 >
		// 1. 쿠키(name-value) 객체 생성
		// new Coolie(name(String), value(String)); => name과 value를 문자열로 쌍으로 가지고 있음
		Cookie cookie = new Cookie("test", "testcookie");
		
		// 2. 만료기간    setMaxAge(초단위);
		cookie.setMaxAge(60*60*24*365);  // 1년
		// 서버 쪽에서 진행해주는 작업 => 보관은 클라이언트 쪽에서
		
		// 3. 쿠키를 클라이언트에게 전송 (서버가 클라이언트한테 보낼 때는 무조건 response)
		response.addCookie(cookie);
		
		// 만료기간 생략하고 바로 전송하는 방법(한 줄로 요약)
		response.addCookie(new Cookie("id", "smart"));	
	%>
	
	<a href="Ex02GetCookies.jsp">쿠키확인</a>
	
</body>
</html>