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
	request.setCharacterEncoding("UTF-8");
	int number = Integer.parseInt(request.getParameter("number"));
	%>
	<h1>랜덤 당첨 게임</h1>
	<form action="Ex02RandomOutput.jsp">
		<fieldset>
			<legend>랜덤뽑기</legend>
			<table align="center">
				<tr>
					<td>주제 : </td>
					<td><input type="text" name="subject"></td>
				</tr>
				<%for(int i=1; i<=number; i++){ %>
	            <tr>
	               	<td>아이템 : </td>
	               	<td><input type="text" name="item"></td>
	            </tr>
	            <%} %>
	           
				<tr>
	               <td colspan="2"><input type="submit" value="랜덤뽑기"></td>
	            </tr>
				
			</table>
		</fieldset>
	</form>
	
</body>
</html>