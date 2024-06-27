<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Flight Entry.jsp</title>
</head>
<body>
<div align="center">
<h3>
<form:form action="/flight" method="post" modelAttribute="flightRecord">
Enter Flight Id:<form:input path="flightNumber"/>
<br/><br/>
Enter Airlines Name:<form:input path="carrierName"/>
<br/><br/>
Select Route Id<form:input list="routes" path="routeId"/>
<datalist id="routes">
<c:forEach items="${routeList}" var="route">
<option value="${route}">
</option>
</c:forEach>
</datalist>
<br/><br/>
Enter Seat Capacity:<form:input path="seatCapacity"/>
<br/><br/>
Enter Departure Time:<form:input path="departure"/>
<br/><br/>
Enter Arrival Time:<form:input path="arrival"/>
<br/>
<hr size="5" color="lightgreen"/>
<br/>
Enter Return Flight's Departure Time:<input type="text" name="dtime"/>
<br/><br/>
Enter Return Flight's Arrival Time:<input type="text" name="atime"/>
<br/><br/>
<button type="submit">Submit</button>
<button type="reset">Reset</button>
</form:form>
</h3>
</div>


</body>
</html>