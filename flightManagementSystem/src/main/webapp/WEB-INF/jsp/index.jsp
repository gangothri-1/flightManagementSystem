<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
<style>
    body {
        font-family: 'Roboto', sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
        color: #333;
    }
    
    h1 {
        font-family: 'ALGERIAN', sans-serif;
        font-size: 2.5em;
        margin: 20px 0;
        color: #444;
    }
    
    .navbar {
        display: flex;
        justify-content: space-around;
        align-items: center;
        background-color: #333;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }
    
    .navbar a, .dropbtn {
        color: #f2f2f2;
        text-align: center;
        padding: 14px 20px;
        text-decoration: none;
        transition: background-color 0.3s, color 0.3s;
        flex-grow: 1;
        text-align: center;
    }
    
    .navbar a:hover, .dropdown:hover .dropbtn {
        background-color: #575757;
        color: #fff;
    }
    
    .dropdown {
        position: relative;
        display: flex;
        flex-grow: 1;
        justify-content: center;
    }
    
    .dropdown .dropbtn {
        font-size: 16px;  
        border: none;
        outline: none;
        background-color: inherit;
        font-family: inherit;
        margin: 0;
        width: 100%;
    }
    
    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f9f9f9;
        min-width: 200px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        z-index: 1;
    }
    
    .dropdown-content a {
        color: #333;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
        text-align: left;
        transition: background-color 0.3s;
    }
    
    .dropdown-content a:hover {
        background-color: #ddd;
    }
    
    .dropdown:hover .dropdown-content {
        display: block;
    }
    
    .content {
        text-align: center;
        padding: 20px;
    }
    
    .intro {
        display: flex;
        justify-content: space-around;
        align-items: center;
        padding: 20px;
        background-color: #fff;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    
    .intro img {
        max-width: 400px;
        border-radius: 10px;
    }
    
    .intro-text {
        max-width: 600px;
        margin-left: 20px;
    }
    
    .footer {
        background-color: #333;
        color: #f2f2f2;
        text-align: center;
        padding: 10px 0;
        position: fixed;
        width: 100%;
        bottom: 0;
    }
    
    .footer a {
        color: #f2f2f2;
        text-decoration: none;
        margin: 0 10px;
    }
    
    .footer a:hover {
        color: #ddd;
    }
</style>
</head>
<body>
<div class="content">
    <h1>Welcome to Flight Management System</h1>
</div>



<div class="navbar">
    <div class="dropdown">
        <button class="dropbtn"><i class="fas fa-plane-departure"></i> Airport</button>
        <div class="dropdown-content">
            <a href="/airport"><i class="fas fa-plus-circle"></i> Airport Addition</a>
            <a href="#"><i class="fas fa-info-circle"></i> Single Airport Information</a>
            <a href="/airports"><i class="fas fa-chart-bar"></i> Airport Reports</a>
        </div>
    </div> 
    <a href="#schedule"><i class="fas fa-calendar-alt"></i>Route</a>
    <a href="#flight"><i class="fas fa-plane"></i> Flight</a>
    <a href="/logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
</div>
<div class="intro">
    <img src="https://th.bing.com/th/id/OIP.H37wVLav9t53w7hUehWENQHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7" alt="Airport Image">
    <div class="intro-text">
        <h2>Efficient Airport Management</h2>
        <p>Our Flight Management System provides a comprehensive solution for managing airport operations, ensuring seamless travel experiences. From flight scheduling to real-time updates, our system is designed to handle all aspects of airport management efficiently.</p>
        <p>Explore our features to learn more about how we can help streamline your airport operations.</p>
    </div>
</div>

<div class="footer">
    <p>&copy; 2024 Flight Management System | <a href="#contact">Contact Us</a> | <a href="#privacy">Privacy Policy</a></p>
</div>
</body>
</html>