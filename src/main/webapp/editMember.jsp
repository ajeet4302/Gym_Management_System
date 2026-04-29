<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,model.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body { font-family: Arial; background-color: #f9f9f9; }
h2 { text-align: center; color: #2c3e50; }
form { width: 400px; margin: 30px auto; padding: 20px; background: #fff; border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.2);}
input, button { width: 100%; padding: 10px; margin: 10px 0; border-radius: 5px; border: 1px solid #ccc; }
button { background-color: #2980b9; color: #fff; border: none; }
button:hover { background-color: #2c3e50; }
</style>
</head>
<body>


<%

Member m=(Member)request.getAttribute("member");

%>

<h2>Edit Member</h2>

<form action="updateMember" method="post">

ID:

<input type="text" name="id" value="<%=m.getId()%>" readonly>

<br><br>

Name:

<input type="text" name="name" value="<%=m.getName()%>">

<br><br>

Age:

<input type="text" name="age" value="<%=m.getAge()%>">

<br><br>

Phone:

<input type="text" name="phone" value="<%=m.getPhone()%>">

<br><br>

Plan:

<input type="text" name="plan" value="<%=m.getPlan()%>">

<br><br>

<button type="submit">Update Member</button>

</form>
</body>
</html>