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
	<c:set var="num" value="값 지정" />
	
	
	<%
		String[] arr = {"111","222","333"};
	%>
	<c:set var="values" value="<%= arr %>" />
	<c:forEach var="i" begin="10" end="20" step="2">
		${ i } ,
	</c:forEach>
	
	<c:forEach var="item" items="${ values }">
		${ item } ,
	</c:forEach>
	<%-- <c:import url="el01.jsp"/>
	<c:redirect url="el02_login.jsp"/> --%>
	<hr>
	<c:set var="s_name" value="세션설정" scope="session"/>
	<c:remove var="s_name" scope="session"/>
	<a href="jstl02.jsp">jstl02 이동</a>
	<hr>
	
	
	<c:set var="nick">
		홍길동
	</c:set>
	<c:choose>
		<c:when test="${ nick == '홍길동' }">
			이름 : ${ nick }
		</c:when>
		<c:when test="${ nick ne '홍길동' }">
			이름 : ${ nick }
		</c:when>
		<c:otherwise>
			else구분
		</c:otherwise>
	</c:choose>
	<hr>
	<c:set var="n" value="100"/>
	<c:choose>
		<c:when test="${ n > 100 }">
			100보다 크다
		</c:when>
		<c:otherwise>
			else구문
		</c:otherwise>
	</c:choose>
</body>
</html>