<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee-Management-System</title>
<link rel="icon" type="image/x-icon" href="https://static.vecteezy.com/system/resources/previews/009/170/419/original/a-unique-design-icon-of-employee-management-vector.jpg">
</head>
<body>
	<f:form action="addEmployee" modelAttribute="employee">
		<f:input path="empName" placeholder="Enter Name:"/> <br> <br>
		<f:input path="empPhNo" placeholder="Enter PhNo:"/> <br> <br>
		<f:input path="empEmail" placeholder="Enter Email:"/> <br> <br>
		<f:input path="empDesig" placeholder="Enter Designation:"/> <br> <br>
		<input type="submit" value="save">
	</f:form>
</body>
</html>