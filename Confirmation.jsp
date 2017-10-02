<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Confirmation Page</title>
</head>
<body>
<h3 align="center">Thank you for your purchase!</h3>
<h2 align="center">The expected delivery date is</h2><h2 align="center" id="date"></h2>

<script>
var d = new Date();
d.setDate(d.getDate() + 4);
document.getElementById("date").innerHTML = d;
</script>

<img align="middle" src="https://static.comicvine.com/uploads/original/11/117571/3749777-gym-guy.jpg" height="200" width="200">

<p><a href="booklist.jsp">Return to books</a></p>
<form action="Logout">
	<input type="submit" value="Logout">
</form>
</body>
</html>