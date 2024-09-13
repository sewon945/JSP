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
		pageContext.setAttribute("nickname", "page");
		request.setAttribute("nickname", "request");
	
		String nick = (String)request.getAttribute("nickname");
	%>
	<%-- request 영역에 있는 걸 가지고 오겠다 --%>
	<%=nick %>  
	
	<%-- request영역이 page영역보다 큼 => 따라서 nickname만 적으면 request 안에 속해있는 page에 있는 page --%>
	${nickname }
	
	<%-- requestScope.nickname을 적어주면 request 안에 속해있는 request 출력 --%>
	${requestScope.nickname } 
	
	
	<a href="Ex04RequestScope2.jsp">2페이지</a>
</body>
</html>