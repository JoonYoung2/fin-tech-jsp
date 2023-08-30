<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dto" class="quiz01.MemberDTO" />
	<jsp:useBean id="dao" class="quiz01.MemberDAO" />
	<jsp:setProperty property="*" name="dto"/>
	<%
		int result = dao.memberInsert(dto);
		if(result == 0){
	%>
		<script>
			alert("동일한 아이디가 존재합니다");
			window.history.back();
		</script>
	<%	
		}else{
	%>
		<script>
			alert("가입 성공!");
			location.href="login.jsp";
		</script>
	<%	
		}
	%>
</body>
</html>