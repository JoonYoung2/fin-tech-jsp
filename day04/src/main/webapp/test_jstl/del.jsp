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
	id : ${ param.id }
	
	<jsp:useBean id="dao" class="day04.MemberDAO"/>
	<c:set var="result" value="${dao.delete({ param.id })"/>
	<hr>
	
	result : ${ result }
	
	<c:if test="${ result == 1 }">
		<script>
			alert("삭제되었습니다.");
			location.href="list.jsp";
		</script>
	</c:if>
</body>
</html>