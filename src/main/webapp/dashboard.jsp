<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.MemberDAO, dao.TrainerDAO" %>
<%@ page import="java.util.List" %>
<%
    
    MemberDAO memberDao = new MemberDAO();
    TrainerDAO trainerDao = new TrainerDAO();
    
    int totalMembers = memberDao.getAllMembers().size();
    int totalTrainers = trainerDao.getAllTrainers().size();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="css/style.css"> 
<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    background-color: #f0f2f5;
}
header {
    background-color: #2c3e50;
    color: #fff;
    padding: 20px;
    text-align: center;
}
nav {
    background-color: #34495e;
    padding: 10px 20px;
    display: flex;        
    justify-content: center;
    flex-wrap: wrap;        
    gap: 20px;              
}

nav a {
    color: #ecf0f1;
    text-decoration: none;
    font-weight: bold;
    padding: 8px 12px;
    transition: 0.3s;
}

nav a:hover {
    text-decoration: underline;
    background-color: #2c3e50;
    border-radius: 5px;
}
section {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    margin: 20px;
}
.card {
    background-color: #fff;
    width: 250px;
    margin: 15px;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0,0,0,0.2);
    text-align: center;
}
.card h2 {
    margin-top: 0;
    color: #2c3e50;
}
.card p {
    font-size: 18px;
}
.card a {
    display: inline-block;
    margin-top: 10px;
    text-decoration: none;
    color: #2980b9;
    font-weight: bold;
}
.card a:hover {
    text-decoration: underline;
}
</style>
</head>
<body>

<header>
    <h1>Gym Management Dashboard</h1>
</header>

<nav>
    <a href="viewMembers">Members</a>
    <a href="addMember.jsp">Add Member</a>
    <a href="viewTrainers">Trainers</a>
    <a href="addTrainer.jsp">Add Trainer</a>
    <a href="workoutPlans.jsp">Workout Plans</a>
    <a href="logout">Logout</a>
</nav>

<section>
  
    <div class="card">
        <h2>Total Members</h2>
        <p><strong><%= totalMembers %></strong></p>
        <a href="viewMembers">View Members</a>
    </div>

   
    <div class="card">
        <h2>Total Trainers</h2>
        <p><strong><%= totalTrainers %></strong></p>
        <a href="viewTrainers">View Trainers</a>
    </div>

   
    <div class="card">
        <h2>Add Member</h2>
        <p>Create new gym member</p>
        <a href="addMember.jsp">Add Member</a>
    </div>

    
    <div class="card">
        <h2>Add Trainer</h2>
        <p>Create new trainer profile</p>
        <a href="addTrainer.jsp">Add Trainer</a>
    </div>

  
    <div class="card">
        <h2>Workout Plans</h2>
        <p>Professional Level workout plans</p>
        <a href="workoutPlans.jsp">View Plans</a>
    </div>
</section>

</body>
</html>
