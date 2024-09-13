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
		request.setCharacterEncoding("UTF-8");
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
	
		if(id.equals("smart")&& pw.equals("123")) {
			// 성공
			// 클라이언트에게
			// localhost:8081/Ex03ReqRes/Ex05LoginSuccess.jsp로 다시 요청해!
			// + 위 주소에 파라미터를 포함시켜주는 방법!
			// response.sendRedirect("Ex05LoginSuccess.jsp");
			
			// 쿼리스트링 사용 방법  =>  Ex05LoginSuccess.jsp?id=smart   (여기서 ? 뒤에 id는 name , + id는 변수)
			// 1) response.sendRedirect("Ex05LoginSuccess.jsp?id=" + id);
			
			// 페이지 이동 방법 1. 리다이렉팅 방식 : response.sendRedirect() => 요청, 응답 2번씩
			// 2. 포워딩(forwarding)
			//    => 서버 차원에서 페이지 이동이 일어난 후 응답 (요청, 응답 1번씩)
			
			// RequestDispatcher 역할 : 클라이언트로부터 최초에 들어온 요청을 원하는 자원(페이지)으로 넘기는 기능을 포함하고 있는 객체
			// 현재 페이지와 다음 페이지를 공유한다고 생각하면 됨
			RequestDispatcher rd = request.getRequestDispatcher("Ex05LoginSuccess.jsp");
			// 현재 사용하고 있는 request, response 객체를 다음 페이지로 넘기는 기능
			rd.forward(request, response);
			// => 클라이언트에서 LoginSuccess.jsp로 요청을 한게 아니라 Login.jsp로 요청을 한 거라서 주소창에 클라이언트가 최초로 요청한 페이지 주소가
				// 주소창에 뜬다. LoginSuccess는 응답만 한 곳이지 요청을 한 게 아니다
		} else {
				// 실패
				response.sendRedirect("Ex05LoginFail.jsp");
		}
	%>
</body>
</html>