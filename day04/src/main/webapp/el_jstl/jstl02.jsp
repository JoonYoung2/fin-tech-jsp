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
	s_name : ${ s_name }<br>
	s_name : ${ sesssionScope.s_name }<br>
	s_name : <%= session.getAttribute("s_name") %><br>
	
	<c:if test="${empty sessionScope.s_name }">
		세션없음
	</c:if>
	
	<c:if test="${not empty sessionScope.s_name }">
		세션있음
	</c:if>
</body>
</html>