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
	if(session.getAttribute("login") != null){%>
	<script>
		window.onload = () => {
			alert(document.getElementById("session").value + '님 로그인 상태입니다.');
			location.href="main.jsp";
		}
	</script>
<%		
	}
%>
<input type="hidden" value="<%= session.getAttribute("nick") %>" id="session">
	<h1>login page</h1>
	<form action="chkUser.jsp" method="post">
		<input type="text" name="id"><br>
		<input type="text" name="pwd"><br>
		<input type="submit" value="로그인"><br>
	</form>
</body>
</html>
