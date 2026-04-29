<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Login</title>

<style>

body{
font-family: Arial;
background:#0f172a;
display:flex;
justify-content:center;
align-items:center;
height:100vh;
}

.login-box{
background:white;
padding:40px;
border-radius:10px;
width:300px;
}

input{
width:100%;
padding:10px;
margin:10px 0;
}

button{
width:100%;
padding:10px;
background:#2563eb;
color:white;
border:none;
}

</style>

</head>

<body>

<div class="login-box">

<h2>GYM ADMIN LOGIN</h2>

<form action="loginAdmin" method="post">

<input type="text" name="username" placeholder="Username"><br><br>

<input type="password" name="password" placeholder="Password"><br><br>

<button type="submit" value="Login">Login</button>

</form>

</div>

</body>
</html>