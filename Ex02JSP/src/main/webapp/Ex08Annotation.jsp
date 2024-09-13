<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 3가지 주석 종류 -->
	<!-- HTML 주석 -->
	<%
		// 자바 주석
	%>
	<%-- JSP 주석 --%>
	
	<%-- 최종문서(F12)에는 HTML 주석만 남아있음
		 HTML 주석은 최종적으로 out.print를 사용하여 최종 결과물에서도 남아있고
		 자바 주석과 JSP 주석은 out.print를 사용하지 않기에 JSP파일에서만 보임
		 최종 결과물 F12에 보이고 싶지 않으면 자바주석과 JSP주석을 써야함 --%>
</body>
</html>