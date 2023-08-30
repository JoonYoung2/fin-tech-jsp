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
	
	<!-- setter 넘어온 데이터 모든 값 받기 --> 
	<jsp:setProperty property="*" name="dto" />
	
	id : <%= dto.getId() %>
	pwd : <%= dto.getPwd() %><br>
	name : <%= dto.getName() %><br>
</body>
</html>