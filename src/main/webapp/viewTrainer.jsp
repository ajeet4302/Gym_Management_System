<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,model.Trainer"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trainer List</title>
<style>
body { font-family: Arial, sans-serif; background-color: #f9f9f9; margin: 0; padding: 0; }
h2 { text-align: center; color: #2c3e50; }
table { width: 80%; margin: 20px auto; border-collapse: collapse; }
th, td { border: 1px solid #ccc; padding: 12px; text-align: center; }
th { background-color: #34495e; color: #fff; }
tr:nth-child(even) { background-color: #ecf0f1; }
a { text-decoration: none; color: #2980b9; }
a:hover { text-decoration: underline; }
</style>
</head>
<body>

<h2>Trainer List</h2>

<table>
<tr>
<th>ID</th>
<th>Name</th>
<th>Speciality</th>
<th>Phone</th>
<th>Experience (Years)</th>
<th>Edit</th>
<th>Delete</th>
</tr>

<%
List<Trainer> list = (List<Trainer>) request.getAttribute("list");

if(list != null){
    for(Trainer t : list){
%>
<tr>
<td><%= t.getId()  %></td>
<td><%= t.getName() %></td>
<td><%= t.getSpeciality() %></td>
<td><%= t.getPhone() %></td>
<td><%= t.getExperience() %></td>
<td><a href="editTrainer?id=<%=t.getId() %>">Edit</a></td>
<td><a href="deleteTrainer?id=<%=t.getId() %>">Delete</a></td>
</tr>
<%
    }
}
%>

</table>

<br>
<div style="text-align:center;">
<a href="addTrainer.jsp">Add New Trainer</a>
</div>

</body>
</html>