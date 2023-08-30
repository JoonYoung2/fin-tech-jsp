<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	test2.jsp<br>
	<%@ include file="test1.jsp" %>
	<hr>
	<jsp:include page="test3.jsp" />
	<hr>
	
	<h3>내용입니다.</h3>
	test1 : <%= msg %><br>
</body>
</html>