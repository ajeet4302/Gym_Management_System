<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,model.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

List<Member> list=(List<Member>)request.getAttribute("list");

for(Member m:list){

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

%>

</table>

<br>

<a href="addMember.jsp">Add New Member</a>
</body>
</html>