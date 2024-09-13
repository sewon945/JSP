<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%  // => 이 위치는 상관없이 쓰고 싶은 곳에 써도 된다 (위치상관X -> 보기 편하게 body 안에 적어줌)
		// 스크립틀릿 : html 안에서 자바를 작성할 수 있는 영역(자바영역이라서 자바 주석 쓴 것)
		int num1 = 20;
		int num2 = 30;
		int sum = num1 + num2;
		System.out.print(sum);   // 콘솔창에 출력
	%>
	
	<%if(sum > 30) { %>
		   <%=sum %> <br>
		<% }%>
	<%=sum %> <br>    <!-- 세미콜론 없이 =하고 값만 쓰면됨 -->
	
	
	<b><%=sum*100 %></b>   <!-- b 태그 : 굵은 글씨 -->
	<%=Math.abs(-50) %>    <!-- 함수 호출도 가능 , math : 반환값을 출력하겠다 -->
	
	
	
	<br>
	<table border=1>
		<tr>   
			<%   // 스크립틀릿 끊어서 쓴 것
			for(int i = 1; i <= 10; i++) { %>
			<td><%=i %></td>
			<%} %>
		</tr>
		<tr>
			<%   // 스크립틀릿 한 번에 이어서 쓴 것
				for(int i = 1; i <= 10; i++) {
					// JspWriter (PrintWriter와 같은 역할 - 텍스트 출력 스트림)
					// => 내장객체 (JSP가 Servlet 형태로 변환될 때 자동으로 생성되는 객체)
					out.print("<td>"+i+"</td>");
				}
			%>
		</tr>
		
	</table>
	
</body>
</html>