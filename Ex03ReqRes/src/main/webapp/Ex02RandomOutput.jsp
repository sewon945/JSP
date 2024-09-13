<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body align="center">

	<%
	String sub = request.getParameter("subject");
	String[] items = request.getParameterValues("item");
	// 3 -> 0,1,2   /   5 -> 0~4 를 배열로 가져오는데 그 중 랜덤으로 하나 가져오기
	
	Random ran = new Random();
	String ran_item = items[ran.nextInt(items.length)];  // 아이템의 개수 가져오기(아이템의 배열의 길이)
	// int rm = ran.nextInt(items.length);   // 아이템의 개수 가져오기(아이템의 배열의 길이)
	
	%>
	<h1>랜덤 당첨 게임</h1>
	<fieldset>         <%-- 여기는 다음 페이지로 전송하지 않을거니까 form 태그 빼주기 --%>
		<legend>랜덤뽑기결과</legend>
		<table align="center">
			<tr>
				<td><%=sub%></td>
			</tr>
			<tr>
				<td><%=ran_item %></td>
			</tr>

		</table>
	</fieldset>
</body>
</html>