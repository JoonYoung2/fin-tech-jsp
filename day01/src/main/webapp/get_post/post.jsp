<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<% 
			String id = request.getParameter("id"); 
		%>
		<h3>post jsp</h3>
		id : <%= request.getParameter("id") %><br>
		id : <%= id %><br>
		<a href="main.jsp">main 이동</a>
		
	</body>
</html>