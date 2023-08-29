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
	<%
		int num = Integer.parseInt(request.getParameter("num"));
		int genderNum = Integer.parseInt(request.getParameter("gender"));
		String gender="";
		if(genderNum == 1){
			gender = "남자다잉";
		}else
			gender = "여자다잉";
	%>
	
	<%=num%>
	<%=gender%>
</body>
</html>