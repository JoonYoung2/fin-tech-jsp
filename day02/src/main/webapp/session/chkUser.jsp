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
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			String dbId = "1", dbPwd = "1", dbNick = "홍길동";
			if(id.equals(dbId) && pwd.equals(dbPwd)){
				session.setAttribute("nick", dbNick);
				session.setAttribute("login", id);
				response.sendRedirect("main.jsp");
			}else{
				response.sendRedirect("login.jsp");
			}
		%>
	</body>
</html>