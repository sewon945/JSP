<!-- contentType(UTF-8) : 응답 데이터의 형식을 브라우저한테 알려주기 위해 사용 -->
<!-- pageEncoding(UTF-8) : JSP 페이지에 대한 인코딩 방식 지정 -->
<!-- meta charset(UTF-8) : HTML에 대한 인코딩 방식 지정 -->

<!-- 지시자 (JSP에서만 사용) -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% // 스크립틀릿 : JSP에서 자바 코드 작성할 수 있도록 제공하는 태그
	   // => java로 변환 시에 service() 메서드 안 쪽에 모든 코드가 작성됨
	   // => service() 메서드 안쪽에서만 사용가능한 지역변수로 선언
	   int num = 3;
	%>
	
	<!-- 표현식 : 화면에 출력할 때 사용하는 태그 (세미콜롬X) -->
	<%=num %>

	<!-- 선언문 : 변수선언/메서드선언 시 사용하는 태그 -->	
	<!-- => class 바로 밑에 선언됨 => 전역변수로 선언 (해당 클래스 안이면 어디서든 호출 가능) -->
	<%! int num2 = 10; %>
</body>
</html>