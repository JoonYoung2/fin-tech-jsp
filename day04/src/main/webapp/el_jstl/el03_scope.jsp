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
		pageContext.setAttribute("name", "page");
		request.setAttribute("name", "request");
		session.setAttribute("name", "session");
		application.setAttribute("name", "application");
	%>
	
	name : ${ name }<br>
	page : ${ pageScope.name }
	, <%= pageContext.getAttribute("name") %>
	<br>
	request : ${ requestScope.name }<br>
	session : ${ sessionScope.name }
	, <%= session.getAttribute("name") %>
	<br>
	application : ${ applicationScope.name }<br>
	<a href="el03_result.jsp">result이동</a>
</body>
</html>