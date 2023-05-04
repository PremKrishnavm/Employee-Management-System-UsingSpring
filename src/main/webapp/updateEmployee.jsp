<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form action="saveUpdatedEmployee" modelAttribute="employee">
		<form:input path="empId" readonly="true"/>
		<form:input path="empName"/>
		<form:input path="empPhNo"/>
		<form:input path="empEmail"/>
		<form:input path="empDesig"/>
		<input type="submit" value="update">
	</form:form>
</body>
</html>