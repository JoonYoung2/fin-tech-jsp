<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- useBean == 객체 -> MemberDTO dto = new MemberDTO() -->
	<jsp:useBean id="dto" class="day03.MemberDTO" />
	
	<!-- setter -> dto.setId --> 
	<jsp:setProperty property="id" name="dto" />
	
	<!-- getter -->
	id : <jsp:getProperty property="id" name="dto" /><br>
	id : <%= dto.getId() %><br>
	
	<%
		dto.setPwd(request.getParameter("pwd"));
	%>
	pwd : <jsp:getProperty property="pwd" name="dto" /><br>
	pwd : <%= dto.getPwd() %>

</body>
</html>