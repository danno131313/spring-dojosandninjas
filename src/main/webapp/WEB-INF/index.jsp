<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ninjas and Dojos</title>
</head>
<body>
	<a href="/dojos/new">New Dojo</a>
	<a href="/ninjas/new">New Ninja</a>
	<table border="">
		<tr>
			<th>Name</th>
		</tr>
		<c:forEach var="dojo" items="${ dojos }">
			<tr>
				<td><a href="/dojos/${ dojo.id}">${ dojo.name }</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>