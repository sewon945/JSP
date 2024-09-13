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
		// < 세션 생성 >
		// 타입 : (HttpSesion session)
		// setAttribute(name(String), value(Object)) => object는 문자열, 정수 등 다 가능
		session.setAttribute("id", "smhrd");
		session.setAttribute("age", 20);
		
		
		// 여기서는 이걸 써주지 않아도 세션 생성됨
		// HttpSession session = request.getSession();
	
	%>
	
	<a href="Ex05GetSession.jsp">세션 확인</a>
	
	
	<%
	// 세션(Session) 
	// : 브라우저가 종료되기 전까지 클라이언트의 정보를 유지하게 해주는 기술
	// : 사용자 정보를 서버에서 관리
	// JSEESSIONID => 서버에서 중복되지 않는 SessoinID를 각 클라이언트에 발급하여 사용자 식별에 사용한다
	// Session ID => 즉, 우리의 주민등록번호 (이것도 노출될 수 있기에 보안 상 완벽하게 보안해주는 것은 아님)
	// => 그래도 로그인 같은 보안 상 중요한 작업 수행 시 사용
	%>
</body>
</html>