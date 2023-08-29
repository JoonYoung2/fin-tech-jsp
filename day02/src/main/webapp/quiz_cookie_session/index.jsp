<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>기본 페이지입니당.</h3>
	<% 
		boolean check = true;
		Cookie[] cookieArr = request.getCookies();
	for(Cookie c : cookieArr){
		if(c.getName().equals("cookieYum")){ 
			check = false;
		 }  
	%>
	<% 
		}
		if(check){ 
	%>
			<script>
				window.open("popup.jsp", "", "width=500, height=500, top=500, left=500");
			</script>
	<% 
		} 
	%>
</body>
</html>