<%@page import="java.util.Random"%>
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
		new Random();  // ctrl + space : import하기
	
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		String ope = request.getParameter("ope");
		
	%>

	<%
	if(ope.equals("plus")) {   
		out.print(num1 + "+"  + num2 + " = " + (num1 + num2));    
		} else if (ope.equals("minus")) {
			out.print(num1 + "-" + num2 + " = " + (num1 - num2));  
		} else if (ope.equals("mul")) {
			out.print(num1 + "*"  + num2 + " = " + (num1 * num2));
		} else if (ope.equals("div")) {
			out.print(num1 + "/"  + num2 + " = " + (num1 / num2));
		}
	
	%>

</body>
</html>