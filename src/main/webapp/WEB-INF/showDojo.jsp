<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${ dojo.name } Dojo</title>
</head>
<body>
	<h1>${ dojo.name } Location Ninjas</h1>
	<table>
		<tr>
			<th>First name</th>
			<th>Last name</th>
			<th>Age</th>
		</tr>
		<c:forEach var="ninja" items="${ ninjas }">
			<tr>
				<td>${ ninja.firstName }</td>
				<td>${ ninja.lastName }</td>
				<td>${ ninja.age }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>