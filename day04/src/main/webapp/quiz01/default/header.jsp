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
	<hr>
	<div>
		<a href="/day04/quiz01/member/index.jsp">HOME</a> 
		<c:if test="${ empty userId }">
			<a href="/day04/quiz01/member/login.jsp">LOGIN</a>
		</c:if>
		<c:if test="${ not empty userId }">			
			<a href="/day04/quiz01/member/userInfo.jsp">MY INFO</a> 
			<a href="/day04/quiz01/member/memberInfo.jsp">MEMBERS</a>
			<a href="/day04/quiz01/member/logout.jsp">LOGOUT</a>
		</c:if>
	</div>
	<hr>
</body>
</html>