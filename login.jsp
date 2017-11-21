<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.net.URL"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Login</title>
</head>
<body>

<% response.setHeader("X-XSS-Protection", "1; mode=block"); %>
<h2 style="text-align:center;">Welcome to Group 1 Bookstore!</h2>

<form action="Login" method="post">
	<table>
		<tr>
		<td>Username:</td> 
		<td><input type="text" name="username" autocomplete="off" required /> </td>
	</tr>
	<tr>
		<td>Password:</td> 
		<td><input type="password" name="password" autocomplete="off" required/></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="Login" /></td>
	</tr>
	</table>
</form>
	             	 
<p><a href="RegisterForm.jsp">New Users Register Here</a></p>
</body>
</html>