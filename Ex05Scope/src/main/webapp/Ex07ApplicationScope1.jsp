<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 가장 넓은 영역 --%>
	<%
		application.setAttribute("nickname", "application");
	
		String nick = (String)application.getAttribute("nickname");
	%>
	<%=nick %>
	<!-- session 브라우저가 아직 열려있으면 applicationScope를 적어주면 좀 더 정확하게 확인 가능 -->
	${applicationScope.nickname }
	
	<a href="Ex08ApplicationScope2.jsp">2페이지</a>
</body>
</html>