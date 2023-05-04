<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management System</title>
<link rel="icon" type="image/x-icon" href="https://static.vecteezy.com/system/resources/previews/009/170/419/original/a-unique-design-icon-of-employee-management-vector.jpg">
</head>
<style>
	body{
	display: flex;
	flex-direction: column;
	align-items: center;
	background-image: linear-gradient(to bottom, #20bf6b, #01baef);
    height: 100vh;
    background-color: #20bf6b; 
	}
	h1{
	text-decoration: 5px solid black underline;
	font-family: arial,helvetica,sans-serif;
	font-style: italic;	
	}
	table,th,td{
	border: 1px solid black;
	align-items: center;
	}
</style>
<body>
	<h1>Employees List</h1>
	<table>
		<tr>
			<td>ID</td>
			<td>NAME</td>
			<td>PH-No</td>
			<td>EMAIL</td>
			<td>DESINGNATION</td>
			<td>UPDATE</td>
			<td>DELETE</td>
		</tr>
		
			<c:forEach var="employee" items="${employees}">
			<tr>
				<td>${employee.getEmpId()}</td>
				<td>${employee.getEmpName()}</td>
				<td>${employee.getEmpPhNo()}</td>
				<td>${employee.getEmpEmail()}</td>
				<td>${employee.getEmpDesig()}</td>
				<td><a href="updateEmployee?id=${employee.getEmpId()}">Update</a></td>
				<td><a href="deleteEmployee?id=${employee.getEmpId()}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>