<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<h2>Updated Payment details</h2>
	
	<table>
	
	<c:forEach var="pmth" items="${paymethods}">
	
	<tr>
		<td>User Id</td>
		<td>${pmth.userId}</td>
	</tr>
	<tr>
		<td>User Email</td>
		<td>${pmth.email}</td>
	</tr>
	<tr>
		<td>User Package</td>
		<td>${pmth.packtype}</td>
	</tr>
	<tr>
		<td>Card No</td>
		<td>${pmth.cardno}</td>
	</tr>
	<tr>
		<td>CVC No</td>
		<td>${pmth.cvc}</td>
	</tr>
	<tr>
		<td>Payment Method</td>
		<td>${pmth.paymethod}</td>
	</tr>
	
	</c:forEach>
	</table>
	
</body>
</html>