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
		// < 세션 확인 > 
		// (String)으로 강제 형 변환 해주기
		// String이라 세션 값이 없어도 null 값 반환 가능
		// id에 대한 session 가져오기
		String id = (String)session.getAttribute("id");
		
		// (int)로 강제형변환
		// 브라우저 창을 끄면 기본 타입 int는 null 값 못가진다 => 오류
		int age = (int)session.getAttribute("age");
	

	%>
	
	<%=id %> <br>
	<%=age %>
	
	<a href="Ex06RemoveSession.jsp">세션삭제</a>
	<a href="Ex06Invalidate">세션 모두 삭제</a>
	
</body>
</html>