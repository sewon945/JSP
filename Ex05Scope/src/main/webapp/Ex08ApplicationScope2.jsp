<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<!-- 값이 가져와지는 지 확인 -->
	${applicationScope.nickname }
	
	<%
		String nick = (String)application.getAttribute("nickname");
	%>
	<%=nick %>
	
	<!-- 2페이지를 눌러 url 복사해서 다른 브라우저에 붙였을 때도 application은 값 확인 가능 (공유 가능) -->
	
</body>
</html>