<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center"></div>
<u><i> All Routes</i></u>
</h1>
<br/>
<table border="2">
<tr>
<th>Source Number</th>
<th>Source Airport Code</th>
<th>Target Airport Code</th>
<th> Route Fair</th>
</tr>
<c:forEach items="${routeList}" var="route">
<tr>
<td>${route.routeId}</td>
<td>${route.sourceAirportCode}</td>
<td>${route.destinationAirportCode}</td>
<td>${route.fair}</td>
</tr>
</c:forEach>
</table>
<br/><br/>
</body>
</html>