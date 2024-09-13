<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Ex01Request.html로 이동시켜주고 싶음 -->
	<% 
		// 현재 실행중인 Ex03Redirect.jsp의 실행을 중단하고 Ex01Request.html을 실행하겠다 (페이지 이동)
		response.sendRedirect("Ex01Request.html");
	
		// 브라우저(클라이언트)의 주소창에 있는 주소의 의미
		// 클라이언트가 해당 주소로 직접 요청했다는 말
		// html(Client)에서 Ex03Redirect.jsp 처음에는 이 경로로 요청 -> jsp(Server)에서 응답 후 Ex01Request.html 처음에는 응답 온 이 경로만 알려줌 -> 그리고 다시 이 주소로 재요청 -> 응답
	
		// 페이지 이동
		// 1. 리다이렉팅(Redirecting)
		// 1) 서버가 클라이언트에게 주소(클라이언트가 다시 요청해야하는)를 응답
		// 2) 클라이언트가 해당 주소로 재요청하는 방식

		// * 요청과 응답이 2번 일어남
		//   이때 요청(req)과 응답(res)는 재요청, 재응답과 같은 게 아님
		// * 최종 페이지(결과)의 주소가 클라이언트(브라우저)의 주소창에 드러남
	%>
</body>
</html>