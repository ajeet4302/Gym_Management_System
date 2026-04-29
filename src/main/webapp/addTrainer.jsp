<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>Add Trainer</title>
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

<h2>Add Trainer</h2>

<form action="addTrainer" method="post">

Name:
<input type="text" name="name"><br><br>

Speciality:
<input type="text" name="speciality"><br><br>

Phone:
<input type="text" name="phone"><br><br>

Experience:
<input type="number" name="experience"><br><br>

<button type="submit">Add Trainer</button>

</form>

<br>

<a href="viewTrainers">View Trainers</a>

</body>

</html>