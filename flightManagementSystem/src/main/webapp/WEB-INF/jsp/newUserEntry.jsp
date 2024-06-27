<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New User Registration</title>
<script type="text/javascript">
 function passwordCheck(){
	 var pass1=document.getElementById("pass1").value;
	 var pass2=document.getElementById("pass2").value;
	 if (pass1 == pass2)
		 document.getElementById("registrationForm").submit();
	 else
		 alert("Passwords are not matched");
		 
 }
</script>
</head>
<body>
 <div align="center">
 <h3>
 <form:form id="registrationForm" action="/register" method="post" modelAttribute="userRecord">
 Enter New UserId:<form:input path="username"/>
 <br></br>
 Select User's Type:<form:input list="types" name="type" id="type" path="type"/>
 <datalist id="types">
  <option value="Customer">
  <option value="Admin">
</datalist>
 <br></br>
 Enter New Password:<form:input type="password" id="pass1" path="password"/>
 <br></br>
 Re-type New Password:<input type="password" id="pass2" />
 <br></br>
 <button type="button" onclick="passwordCheck()">Submit</button>
 <button type="reset">ReSet</button>
 </form:form>
 </h3>
 </div>
</body>
</html>