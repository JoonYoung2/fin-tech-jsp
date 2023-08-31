<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dao" class="day04.MemberDAO" />
	
	<div align="center" style="padding-top: 200px;">
		<table border="1">
			<tr>
				<th>id</th>
				<th>name</th>
				<th>addr</th>
			</tr>
			<c:forEach var="list" items="${ dao.getList() }">
			<tr>
				<td>${ list.id }</td>
				<td>
					<a href="del.jsp?id=${ list.id }">${ list.name }</a>
				</td>
				<td>${ list.addr }</td>
			</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>