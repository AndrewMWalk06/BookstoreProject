<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Confirmation Page</title>
</head>
<body>
<h2 align="center">Thank you ${username} for your purchase!</h2>
<h3 align="center">The expected delivery date is</h3><h3 align="center" id="date"></h3>

<script>
var d = new Date();
d.setDate(d.getDate() + 4);
document.getElementById("date").innerHTML = d;
</script>

<img style="position:absolute; top:180px; left:200px;" src="https://static.comicvine.com/uploads/original/11/117571/3749777-gym-guy.jpg" height="150" width="200">

<p align="center"><a href="bookInfo.jsp">Return to books</a></p>
<form action="Logout">
	<input style="position:absolute; top:335px; left:280px;" type="submit" value="Logout">
</form>
</body>
</html>