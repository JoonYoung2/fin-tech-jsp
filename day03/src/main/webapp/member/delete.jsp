<%@page import="day03.MemberDAO"%>
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
		MemberDAO dao = new MemberDAO();
		int result = dao.delete( request.getParameter("id") );
		if(result == 1){
	%>
		<script>
			alert("삭제되었습니다.");
			location.href="/day03/member/list.jsp";.
		</script>
	<%		
		}
	%>
</body>
</html>