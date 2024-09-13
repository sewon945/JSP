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
		String url = request.getParameter("url");
		
		// reponse.sendReirect는 한 번에 두줄이 적혀있으면 의미가 없음 (요청이 안보내짐)
		if(url.equals("naver")){
			response.sendRedirect("http://www.naver.com");
		}else if(url.equals("daum")){
			response.sendRedirect("http://www.daum.net");
		}else if(url.equals("google")){
			response.sendRedirect("http://www.google.com");
		}
	%>		
</body>
</html>