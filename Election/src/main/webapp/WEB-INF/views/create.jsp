<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>create list</title>
</head>
<div align="center">
	<body>
		<h2>create new record</h2>
		<table border=1>
			<c:form action="/save" method="post" modelAttribute="voter"
				enctype="multipart/form-data">
				<tr>
					<c:hidden path="id" />
				</tr>
				<tr>
					<td><c:label path="firstName">FirstName:</c:label></td>
					<td><c:input path="firstName" /></td>

				</tr>
				<br>
				<tr>
					<td><c:label path="lastName">LastName:</c:label></td>
					<td><c:input path="lastName" /></td>

				</tr>
				<br>
				<tr>
					<td><c:label path="voterId">VoterId:</c:label></td>
					<td><c:input path="voterId" /></td>

				</tr>
				<br>
				<tr>
					<td><c:label path="age">Age:</c:label></td>
					<td><c:input path="age" /></td>

				</tr>
				<br>
				<tr>
					<td><c:label path="phone">Phone:</c:label></td>
					<td><c:input path="phone" /></td>

				</tr>
				<br>
				<tr>
					<td>Image:</td>
					<td><input type="file" name="file" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Submit" /></td>
				</tr>
			</c:form>
		</table>
	</body>
	
</div>
</html>