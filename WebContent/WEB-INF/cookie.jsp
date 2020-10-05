<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:out value="${prenom }"/>
	<form method="post" action="cookie">
		<p>
			<label for="firstName">First name: </label>
			<input type="text" name="firstName" id="firstName"/>	
		</p>
		<p>
			<label for="lastName">Last name: </label>
			<input type="text" name="lastName" id="lastName"/>	
		</p>

		<input type="submit"/>
	</form>
	
</body>
</html>