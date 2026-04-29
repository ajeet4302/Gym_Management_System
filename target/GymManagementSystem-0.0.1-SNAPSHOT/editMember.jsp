<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,model.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

<input type="submit" value="Update Member">

</form>
</body>
</html>