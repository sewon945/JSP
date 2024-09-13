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
		request.setAttribute("nickname", "request");
	
		// 1. RequestDispatcher 사용 (서블릿에서도 사용 가능) => Ex04로 요청하기
			// 최종적으로 이동한 경로는 클라이언트에서 확인 불가
				// url에서 경로는 forward.jsp가 보이지만 최종적으로는 requestscope2.jsp
		// RequestDispatcher rd = request.getRequestDispatcher("Ex04RequestScope2.jsp");
		
		// request와 response 객체 넘겨주기
		// rd.forward(request, response);
		
		
		// 2. pageContest(페이지 영역) 사용
			// 경로는 forward.jsp가 보이지만 최종적 경로는 requestscope2.jsp
		// pageContext.forward("Ex04RequestScope2.jsp");
	%>
	
	<!-- 3. jsp 액션 태그 : 특정한 기능을 수행할 수 있도록 명령하는 태그 (jsp에서만 쓸 수 있음) -->
	<!-- 이동만 하면 되니까 닫는 태그 없이 / 만 적어주면 됨 -->
	<jsp:forward page="Ex04RequestScope2.jsp"/>
	
</body>
</html>