<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        body {
             font-family: Arial, sans-serif;
             background-image: url('/images/airportimage.jpg');
            background-size: cover; /* Cover the entire page */
            background-position: center; /* Center the image */
            background-repeat: no-repeat; /* Do not repeat the image */
            height: 100vh; /* Ensure body takes full height */
            margin: 0; /* Remove default margin */
            
        
        }
        #airportForm {
            width: 400px;
            background-color: #fff;
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        #airportForm table {
            width: 100%;
        }
        #airportForm td {
            padding: 10px;
        }
        #airportForm button {
            margin-top: 10px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        #airportForm button[type="reset"] {
            background-color: #f44336;
        }
        #airportForm button[type="submit"]:hover,
        #airportForm button[type="reset"]:hover {
            opacity: 0.8;
        }
        #airportForm h3 {
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div align="center">
        <h3>
            <form:form id="airportForm" action="/airport" method="post" modelAttribute="airportRecord">
                <table>
                    <tr>
                        <td>Enter Airport City:</td>
                        <td><form:input path="airportLocation"/></td>
                    </tr>
                    <tr>
                        <td>Enter Airport Code:</td>
                        <td><form:input path="airportCode"/></td>
                    </tr>
                </table>
                <button type="submit">Submit</button>
                <button type="reset">Reset</button>
            </form:form>
        </h3>
    </div>
</body>
</html>
