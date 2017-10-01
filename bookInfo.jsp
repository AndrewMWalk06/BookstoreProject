<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Properties"%>

<%
//String id = request.getParameter("userId");
Properties props = new Properties(); 
props.put("user", "root");         
props.put("password", "root");
props.put("useUnicode", "true");
props.put("useServerPrepStmts", "false"); // use client-side prepared statement
props.put("characterEncoding", "UTF-8"); // ensure charset is utf8 here
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/mydb?autoReconnect=true&useSSL=false";
String userId = "root";
String password = "root";
try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset= utf-8">
<title>Book Inventory</title>
<h1> BOOK INVENTORY </h1>
<form>

<style>
 
 .topnav {
    background-color: #333;
    overflow: hidden;
}
<--Style the links inside the navigation bar -->
.topnav a {
    float: left;
    display: block;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    font-size: 17px;
}
<--Change the color of links on hover -->
.topnav a:hover {
    background-color: #ddd;
    color: black;
}
<-- Add a color to the active/current link -->
.topnav a.active {
    background-color: #4CAF50;
    color: white;
}
 
 
div.container {
    width: 100%;
    border: 1px solid gray;
}
header, footer {
    padding: 1em;
    color: white;
    background-color: black;
    clear: left;
    text-align: center;
}
li {
    display: inline;
}
h1{
    float: center;
    background-color: none;
}
nav {
    
	float: center;
    max-width: 160px;
    margin: 0;
    padding: 1em;
}
nav ul {
   
    list-style-type: none;
    padding: 0;
}
   
nav ul a {
    
    text-decoration: none;
}
 
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
	s-resize: auto;
}
h1{
font-family: arial, sans-serif;
}
td, th {
    border: 4px solid #101010;
    text-align: left;
    padding: 6px;
}
 
tr:hover {background-color:#C8C8C8};
</style>
</head>
<body>
 
<div class="container">
 <div class="topnav">
  <a href="#home">Home</a>
  <a href="#news">News</a>
  <a href="#contact">Contact</a>
  <a href="#about">About</a>
</div>


<table>
  <tr>
    <th>Select</th>
    <th>ISBN</th>
    <th>Title</th>
	<th>Author</th>
	<th>Edition</th>
    <th>Quantity Available</th>
    <th>Price</th>
	
  </tr>
  <%
  try{ 
	  connection = DriverManager.getConnection(connectionUrl,props);
	  statement=connection.createStatement();
	  String sql ="SELECT * FROM books"; 
	  resultSet = statement.executeQuery(sql);
	  while(resultSet.next()){
		  out.println(resultSet.getString("preview"));	  
  %>
  <script> 
	function handleChange(input){
	if (input.value < 0) input.value = 0;
	if (input.value > 10) input.value = 10;
	
	}
	</script>
	
  <tr>
    <td><img src="<%=resultSet.getString("preview")%>" alt="W3Schools.com" width="104" height="142"><br><input type="checkbox" name="Book" value="Bookoption"></td>
    <td><%= resultSet.getString("ISBN") %></td>
    <td><%= resultSet.getString("title") %></td>
	<td><%= resultSet.getString("author") %></td>
	<td><%= resultSet.getString("edition") %></td>
	<td><%= resultSet.getString("quantityAvailable") %></td>
	<td><%= resultSet.getString("price") %></td>
  </tr>
  <% } 
  } catch (Exception e){
	  e.printStackTrace();
  }
  %>
  <!-- <tr>
    <td><img src="http://t2.gstatic.com/images?q=tbn:ANd9GcTq-fN-ui_ITTjL3ulCkyLstEZCdNvvCHnTRU_J5MWY60WmNIaZ" alt="W3Schools.com" width="104" height="142"><br><input type="checkbox" name="Book" value="Bookoption"></td>
    <td>21345</td>
    <td>The Color Of Water</td>
	<td>James Mcbride</td>
	<td>First</td>
	<td>10</td>
	<td>$20.00</td>
  </tr>
  <tr>
    <td><img src="http://www.valuewalk.com/wp-content/uploads/2014/10/The-Innovators.jpg" alt="W3Schools.com" width="104" height="142"><br><input type="checkbox" name="Book" value="Bookoption"></td>
    <td>45678</td>
    <td>The Innovators</td>
	<td>Walter Isaacson</td>
	<td>First</td>
	<td>10</td>
	<td>$30.00</td>
  </tr>
  <tr>
    <td><img src="https://books.google.com/books/content/images/frontcover/wyqjDQAAQBAJ?fife=w300-rw" alt="W3Schools.com" width="104" height="142"><br><input type="checkbox" name="Book" value="Bookoption"></td>
    <td>67764</td>
    <td>Essentials of Software Engineering Fourth Edition</td>
	<td>Frank Tsui, Orlando Karam, Barbara Bernal </td>
	<td>Fourth</td>
	<td>10</td>
	<td>$60.00</td>
  </tr>
  <tr>
    <td><img src="http://t3.gstatic.com/images?q=tbn:ANd9GcS-rAUBJ3-mRWbvTTkKTAzdEfshhS362Tm7XagkFkVAiu2OVznc" alt="W3Schools.com" width="104" height="142"><br><input type="checkbox" name="Book" value="Bookoption"></td>
    <td>33232</td>
    <td>Software Security Engineering: A Guide for Project Managers</td>
	<td>Julia H. Allen</td>
	<td>First</td>
	<td>10</td>
	<td>$44.99</td>
  </tr>
  <tr>
    <td><img src="http://t1.gstatic.com/images?q=tbn:ANd9GcRUHbOiRomsHKzEtafX9wvgggJ5e9zQt9WcqKLTyg9sJ3QLcWtT" alt="W3Schools.com" width="104" height="142"><br><input type="checkbox" name="Book" value="Bookoption"></td>
    <td>38956</td>
    <td>Secure and Resilent Software Development</td>
	<td>Lakshmikanth Raghavan and Mark S. Merkow</td>
	<td>First</td>
	<td>10</td>
	<td>$69.79</td>
  </tr>
 <tr>
  <td><img src="http://www.codingdojo.com/blog/wp-content/uploads/Coders-at-Work-203x300.jpg" alt="W3Schools.com" width="104" height="142"><br><input type="checkbox" name="Book" value="Bookoption"></td>
	<td>41166</td>
	<td>Coders at Work</td>
	<td>Peter Seibel</td>
	<td>First</td>
	<td>10</td>
	<td>$16.19</td>
 </tr><br><br>
 -->
</table>
   <br>

   <input type="submit">

   </form> 

</body>
</html>