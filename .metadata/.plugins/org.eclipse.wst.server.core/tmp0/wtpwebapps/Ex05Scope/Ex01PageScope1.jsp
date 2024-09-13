<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 가장 좁은 영역 --%>
	<%
		// 페이지 영역에 값 저장(Page Scope)
		// 페이지 영역 : 실제 값이 선언된 페이지에서만 사용 가능		
		pageContext.setAttribute("nickname", "page");
	
		// 페이지 영역에 있는 값 가지고 오기 (nickname 가지고 오기) 
		// =>session과 똑같이 objeck타입으로 반환 => string타입으로 반환해주기
		String nick = (String)pageContext.getAttribute("nickname");
	%>
		<%-- 이땐 자바 변수를 써주기 --%>
		<%=nick %>
	
	<%-- el표기법: 페이지 영역에 저장 되어있는 값 가져와서 쓸 수도 있음(자바변수 nick을 넣으면 값이 아예 나오지 않음) --%>
	${nickname }
	<a href="Ex02PageScope2.jsp">2페이지</a>
	
	
</body>
</html>