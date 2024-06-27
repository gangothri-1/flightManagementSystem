<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Route Entry Page</title>
</head>
<body>
<div align="center">
<h3>
<form:form action="/route" method="post" modelAttribute="routeRecord">
<form:hidden path="routeId"/>
Enter Source City:<form:input path="sourceAirportCode"/>
<br/><br/>
Enter Destination City:<form:input path="destinationAirportCode"/>
<br/><br/>
Enter Route Fair:<form:input path="fair"/>
<br/><br/>
<button type="submit">Submit</button>
<button type="reset">Reset</button>
</form:form>
</h3>
</div>

</body>
</html>