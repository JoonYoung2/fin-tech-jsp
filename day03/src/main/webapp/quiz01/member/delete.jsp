<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../default/header.jsp" %>
	
	<jsp:useBean id="dao" class="quiz01.MemberDAO" />
	<%
		dao.memberDelete((String)session.getAttribute("userId"));
		session.invalidate();
	%>
	<script>
		alert("삭제 완료");
		location.href="index.jsp";
	</script>
	
	<%@ include file="../default/footer.jsp" %>
</body>
</html>