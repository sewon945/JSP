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
		// < 쿠키 확인 >  (name, value)
		// 1. 클라이언트 -> 서버 (request) 
		// 배열로 반환하기 때문에 배열로 써주기
		Cookie[] cookies = request.getCookies();
		
		// 2. 쿠키 정보 출력 for(배열의 변수이름 지정:레퍼런스 변수)
		for(Cookie c:cookies) {
			out.print(c.getName() + " : " + c.getValue() + "<br>" );
		}
	%>
	
	<a href="Ex03RemoveCookie.jsp">쿠키삭제</a>
	
</body>
</html>