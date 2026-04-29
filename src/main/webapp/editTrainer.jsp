<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Trainer"%>
<%
    Trainer trainer = (Trainer) request.getAttribute("trainer");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Trainer</title>
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

<h2>Edit Trainer</h2>

<form action="editTrainer" method="post">
<input type="hidden" name="id" value="<%= trainer.getId() %>">

Name: <input type="text" name="name" value="<%= trainer.getName() %>">
Speciality: <input type="text" name="speciality" value="<%= trainer.getSpeciality() %>">
Phone: <input type="text" name="phone" value="<%= trainer.getPhone() %>">
Experience: <input type="number" name="experience" value="<%= trainer.getExperience() %>">

<button type="submit">Update Trainer</button>
</form>

</body>
</html>