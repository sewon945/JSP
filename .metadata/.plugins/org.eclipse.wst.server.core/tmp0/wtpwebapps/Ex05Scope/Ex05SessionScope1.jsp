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
		session.setAttribute("nickname", "session");
	
		String nick = (String)session.getAttribute("nickname");
	%>
	
	<%=nick %>
	${sessionScope.nickname }
	
	<!-- 페이지 이동했을 때 가지고 와지는 지 확인 -->
	<a href="Ex06SessionScope2.jsp">2페이지</a>
</body>
</html>