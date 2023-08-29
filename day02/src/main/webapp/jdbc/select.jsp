<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.DBConnect"%>
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
	Connection con = DBConnect.getConnect();
	
	String sql = "SELECT * FROM members";
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
%>
	<div align="center">
		<table border="1">
			<tr>
				<th>ID</th>
				<th>PWD</th>
				<th>NAME</th>
				<th>ADDR</th>
				<th>TEL</th>
			</tr>
			<%
				while(rs.next()){
			%>
			<tr>
				<td><%= rs.getString("id") %></td>
				<td><%= rs.getString("pwd") %></td>
				<td><%= rs.getString("name") %></td>
				<td><%= rs.getString("addr") %></td>
				<td><%= rs.getString("tel") %></td>
			</tr>
			<%	
				}
			%>
		</table>
		<a href="insert.jsp">데이터 추가</a>
	</div>
</body>
</html>