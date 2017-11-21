 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title> Bookstore</title>

</head>
<style>
.boxed {
    background-color: lightgrey;
    width: 400px;
    border: 25px solid green;
    padding: 50px;
    margin: 100px;
	height: 200px;
 
}
h1{
font-family:castellar;
align-text:center;
}
body {background-color: orange;
      }
</style>

<body>
 
<h1 align="center">Welcome to The Group 1 Bookstore! </h1>
 <form action = login method = post>
   <div align="center">
   <div class="boxed">
   <div align="center">
  <label for ="address"> Username: </label><input type="text" placeholder="username" required/></br></br>
      <label for ="address"> Password:  </label><input type="password" placeholder="password" required/></br></br>
      <button>Login</button>
      <p class="message">Not registered? <a href="RegisterForm1.html">Create an account </a></p>
</div>
 </div> 
 </div>
</form>
</body>

</html>
