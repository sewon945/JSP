<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 요청 받는 쪽 : request 객체 써주기 (둘 다 실행 먼저 해주기) -->
	<!-- html에 method를 post로 지정해줬을 경우 jsp에서 encoding으로 한글로 변형시켜줘야한다 -->
	<%
		request.setCharacterEncoding("UTF-8");
		String input = request.getParameter("input");
	%>
	<%=input %>
</body>
</html>