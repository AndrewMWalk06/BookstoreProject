<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Confirmation</title>
</head>
<body>

<%

String firstName = request.getParameter("firstName"); 
System.out.print(firstName);

String lastName = request.getParameter("lastName"); 
System.out.print(lastName);

String address = request.getParameter("address"); 
System.out.print(address);

String state = request.getParameter("state"); 
System.out.print(state);

String zipcode = request.getParameter("zipcode"); 
System.out.print(zipcode);

String email = request.getParameter("email");
System.out.print(email);

String username = request.getParameter("username"); 
System.out.print(username);

String password = request.getParameter("password");
System.out.print(password);

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "root");
Statement st = con.createStatement();
System.out.print("connection successful");
ResultSet rs;
int j = 1;
//int i = st.executeUpdate("insert INTO customers VALUES ("+j+","+firstName+","+lastName+","+address +","+state+","+zipcode+","+email+","+username+","+password+");");
int i = st.executeUpdate("insert INTO customers (firstName,lastName,address,state,zipcode,email,username,password) VALUES ('"+firstName+"','"+lastName+"','"+address +"','"+state+"','"+zipcode+"','"+email+"','"+username+"','"+password+"');");
out.println("Registered");

%>
</body>
</html>