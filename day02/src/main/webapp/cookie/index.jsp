<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>CARE LAB</h1>
	<%
		boolean bool = true;
		Cookie[] cookieArr = request.getCookies();
		
		if(cookieArr != null){
			for(Cookie c : cookieArr){
				out.print("name : " + c.getName() + "<br>");
				out.print("value : " + c.getValue() + "<br>");
				if(c.getName().equals("testCookie")){
					bool = false;
				}
			}
		}
		
		Cookie cookie = new Cookie("testCookie", "myCookie");
		cookie.setMaxAge( 5 );
		cookie.setPath("/");
	
		response.addCookie( cookie );
		
		//쿠키 얻어오기
	%>
	<% if( bool ){ %>
	<script>
		window.open("popup.jsp","", "width=300, height=200, top=500, left=500");
	</script>
	<% } %>
</body>
</html>