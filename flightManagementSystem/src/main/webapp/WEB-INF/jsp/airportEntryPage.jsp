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
<div align="center">
<h3>
<form:form id="airportForm" action="/airport" method="post" modelAttribute="airportRecord">
<table>
<tr>
<td>Enter Airport City:</td>
<td><form:input path="airportLocation"/></td>
</tr><tr>
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