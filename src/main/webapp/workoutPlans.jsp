<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Workout Plans</title>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f0f2f5;
    margin: 0;
    padding: 0;
}
header {
    background-color: #2c3e50;
    color: #fff;
    padding: 20px;
    text-align: center;
}
h1 {
    margin: 0;
}
.container {
    width: 90%;
    margin: 20px auto;
}
h2 {
    color: #2c3e50;
    margin-top: 40px;
}
table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 40px;
}
table, th, td {
    border: 1px solid #ccc;
}
th, td {
    padding: 12px;
    text-align: center;
}
th {
    background-color: #34495e;
    color: #fff;
}
tr:nth-child(even) {
    background-color: #ecf0f1;
}
.level {
    background-color: #2980b9;
    color: #fff;
    padding: 8px;
    text-align: left;
    font-weight: bold;
}
</style>
</head>
<body>

<header>
    <h1>Weekly Workout Plans</h1>
</header>

<div class="container">

    <!-- Beginner Plan -->
    <h2>Beginner</h2>
    <table>
        <tr><th>Day</th><th>Workout</th></tr>
        <tr><td>Monday</td><td>Light Cardio, Bodyweight Squats, Push-ups</td></tr>
        <tr><td>Tuesday</td><td>Walking, Plank, Dumbbell Shoulder Press</td></tr>
        <tr><td>Wednesday</td><td>Rest / Stretching</td></tr>
        <tr><td>Thursday</td><td>Light Jog, Lunges, Dumbbell Curls</td></tr>
        <tr><td>Friday</td><td>Bodyweight Circuit, Plank</td></tr>
        <tr><td>Saturday</td><td>Cardio 20 min, Light Core Exercises</td></tr>
        <tr><td>Sunday</td><td>Rest / Yoga</td></tr>
    </table>

    <!-- Intermediate Plan -->
    <h2>Intermediate</h2>
    <table>
        <tr><th>Day</th><th>Workout</th></tr>
        <tr><td>Monday</td><td>Running 30 min, Bench Press, Squats</td></tr>
        <tr><td>Tuesday</td><td>Deadlift, Pull-ups, Plank 3x45s</td></tr>
        <tr><td>Wednesday</td><td>Cardio 20 min, Stretching</td></tr>
        <tr><td>Thursday</td><td>Lunges, Dumbbell Shoulder Press, Push-ups</td></tr>
        <tr><td>Friday</td><td>Full Body Circuit, Core Training</td></tr>
        <tr><td>Saturday</td><td>HIIT 20 min, Abs Exercises</td></tr>
        <tr><td>Sunday</td><td>Rest / Yoga</td></tr>
    </table>

    <!-- Professional Plan -->
    <h2>Professional</h2>
    <table>
        <tr><th>Day</th><th>Workout</th></tr>
        <tr><td>Monday</td><td>Heavy Squats, Bench Press, Pull-ups, 30 min Cardio</td></tr>
        <tr><td>Tuesday</td><td>Deadlift, Overhead Press, Weighted Pull-ups</td></tr>
        <tr><td>Wednesday</td><td>HIIT 30 min, Core Strength, Stretching</td></tr>
        <tr><td>Thursday</td><td>Lunges, Dumbbell Fly, Dips</td></tr>
        <tr><td>Friday</td><td>Full Body Circuit, Power Cleans, Abs</td></tr>
        <tr><td>Saturday</td><td>Cardio 30-40 min, Plyometrics</td></tr>
        <tr><td>Sunday</td><td>Active Recovery / Yoga / Light Cardio</td></tr>
    </table>

</div>

</body>
</html>