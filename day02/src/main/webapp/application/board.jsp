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
	if(application.getAttribute("num") == null){
		application.setAttribute("num", 0);
	}else
	application.setAttribute("num", (int)application.getAttribute("num")+1);
%>
	<table border="1">
		<tr>
			<th>제목</th>
			<th>조회수</th>
		</tr>
		<tr>
			<td><a href="main.jsp">안녕하세요</a></td>
			<td><%= application.getAttribute("num") %></td>
		</tr>
	</table>
</body>
</html>