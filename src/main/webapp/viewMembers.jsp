<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,model.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member List</title>
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

<h2>Member List</h2>

<table border="1">

<tr>
<th>ID</th>
<th>Name</th>
<th>Age</th>
<th>Phone</th>
<th>Plan</th>
<th>Edit</th>
<th>Delete</th>
</tr>

<%
List<Member> list = (List<Member>) request.getAttribute("list");

if(list != null){
    for(Member m : list){
%>

<tr>
<td><%=m.getId()%></td>
<td><%=m.getName()%></td>
<td><%=m.getAge()%></td>
<td><%=m.getPhone()%></td>
<td><%=m.getPlan()%></td>

<td>
<a href="editMember?id=<%=m.getId()%>">Edit</a>
</td>

<td>
<a href="deleteMember?id=<%=m.getId()%>">Delete</a>
</td>

</tr>

<%
    }
}
%>

</table>

<br>
<div style="text-align:center;">
<a href="addMember.jsp">Add New Member</a>

</body>
</html>