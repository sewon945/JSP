<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- join => joinController => MavenMember => joinController => DAO => Mapper =>  --%>
	<form action="JoinController" method="post">
		ID : <input type="text" name="id"><br>	
		PASSWORD : <input type="password" name="pw"><br>	
		NICKNAME : <input type="text" name="nickname"><br>	
		<input type="submit" value="회원가입">	
	</form>
	
	<%-- MySQL Workbench에서 select * from mavenmember; 를 적용해서 회원가입 확인해보기 --%>

</body>
</html>