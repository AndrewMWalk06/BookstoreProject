<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Customer Confirmation</title>
</head>
<body>

${param.firstName} ${param.lastName} is Registered.

<%= request.getParameter("address") %>

<%= request.getParameter("state") %>

<%= request.getParameter("zipcode") %>

<%= request.getParameter("email") %>

<%= request.getParameter("username") %>

<%= request.getParameter("password") %>

</body>
</html>