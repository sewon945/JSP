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
		String nick = (String)session.getAttribute("nickname");
	%>	
	<%=nick %>
	
	${nickname }
	<!-- 브라우저를 끄거나 삭제하지 않았기에 값 그대로 나옴 -->
	
	<!-- session은 클라이언트(크롬,엣지) 자체가 다르기에 내가 크롬에서 사용했다면 엣지에서 nickname 값이 나오지 않음 -->
	<!-- => 크롬이랑 엣지랑 공유 불가능 -->
</body>
</html>