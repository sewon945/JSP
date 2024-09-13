<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- el 표기법 : 화면 상에 아무것도 나오지 않음(null값도 안나온다)--%>
	${nickname }
	
	<%-- 자바 표기법 --%>
	<%
	String nick = (String)pageContext.getAttribute("nickname");
	%>
	<%=nick %>
	
</body>
</html>