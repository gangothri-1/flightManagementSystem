<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<hr size="5" color="yellow"/>
<div align="center">
<h3>
<table border="2" cellspacing="5" cellpadding="5">
<tr>
<th>Flight Number</th>
<th>Airlines Name</th>
<th>Route Id</th>
<th>Departure</th>
<th>Arrival</th>
<th>Book Flight</th>
</tr>
<c:forEach items="${flightList}" var="flight">
<tr>
<td>${flight.flightNumber}</td>
<td>${flight.carrierName}</td>
<td>${flight.routeId}</td>
<td>${flight.departure}</td>
<td>${flight.arrival}</td>
<td><a href="/ticket/${flight.flightNumber}">Book Flight</a></td>
</tr>
</c:forEach>
</table>
</h3>
</div>
</body>
</html>