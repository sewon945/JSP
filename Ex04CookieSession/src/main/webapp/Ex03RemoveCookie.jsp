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
		// < 쿠키삭제 >
		// 1. 삭제하고 싶은 쿠키와 같은 name을 가진 쿠키 생성
		//  => 무조건 인자는 두 개가 나와야하지만 name만 같게끔 해주면 된다!(value는 String이기에 따옴표만)
		Cookie cookie = new Cookie("test", "");

		// 2. 만료기간 0초로 설정
		// => 삭제가 되는 것처럼 해주는 것
		cookie.setMaxAge(0);

		// 3. 생성된 쿠키를 클라이언트로 전송
		response.addCookie(cookie);
	%>

	<%-- 서블릿(자바)는 확장자 없이 적기 , jsp는 확장자 있이 적기 --%>
	<a href="Ex02GetCookies">쿠키 확인</a>

</body>
</html>