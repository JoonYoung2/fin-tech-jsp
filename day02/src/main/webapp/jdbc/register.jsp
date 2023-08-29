<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dao.DBConnect"%>
<%@page import="java.sql.Connection"%>
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
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		String tel = request.getParameter("tel");
		
		Connection con = DBConnect.getConnect();
		
		String sql = "INSERT INTO members VALUES(?, ?, ?, ?, ?)";
		PreparedStatement ps = con.prepareStatement(sql); 
		ps.setString(1, id);
		ps.setString(2, pwd);
		ps.setString(3, name);
		ps.setString(4, addr);
		ps.setString(5, tel);
		ps.execute();
		response.sendRedirect("select.jsp");
	%>
</body>
</html>