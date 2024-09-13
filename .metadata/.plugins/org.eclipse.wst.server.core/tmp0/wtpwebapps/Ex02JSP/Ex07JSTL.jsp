<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- taglib 지시자를 통해 아래 있는 c 태그를 가져올 수 있음 -->
<!-- prefix : 앞 쪽에 붙는다 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%for(int i=1; i<=10; i++) {%>
		<%=i %>
	<%} %>
	
	<!-- c~ : JSTL 태그 -->
	<!-- el 표기법 : 특정 영역에 저장된 값을 사용할 수 있는 문법 (주석에 있어도 인식을 해버림- 주석 안에 태그 등 쓰지 않기) -->
	<c:forEach var="i" begin="1" end="10" step="1">   <!-- 위 반복문이랑 똑같은 구조 -->
		
		${i }   <!-- el 표기법 -->
	</c:forEach>

</body>
</html>