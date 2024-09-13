<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% String id = request.getParameter("id"); %>
	<%=id %>님 환영합니다
	<%-- smart님 환영합니다 (<= 원래 쓴 것)--%>
	
	<%--<%=id %>님 환영합니다 --%>
	<%-- 첫 번째로 요청할 때 사용하는 req와 두 번째(최종)로 요청하는 req는 다르다 --%>
	<%-- 두 번째로 요청하는 req는 첫 번째가 가지고 있는 id, pw가 없다 --%>
</body>
</html>