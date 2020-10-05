<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- <form method="post" action="newServlet" enctype="multipart/form-data">
		<p>
			<label for="login">Login: </label>
			<input type="text" name="login" id="login"/>	
		</p>
		<p>
			<label for="password">Password: </label>
			<input type="password" name="password" id="password"/>	
		</p>
		<p>
			<label for="description">Description: </label>
			<input type="text" name="description" id="description"/>	
		</p>
		<p>
			<label for="fichier">Fichier: </label>
			<input type="file" name="fichier" id="fichier"/>	
		</p>
		
		<input type="submit"/>
	</form>
	
	<c:if test="${ !empty fichier }"><p><c:out value="Le fichier ${ fichier } (${ description }) a été uploadé !" /></p></c:if>
	
	<c:if test="${!empty form.result }"> 
		<p>
			<c:out value="${form.result}"/>
		</p>
	</c:if> -->
	
	<form method="post" action="newServlet" enctype="multipart/form-data">
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
	
	<c:if test="${!empty sessionScope.firstName && !empty sessionScope.lastName }">
		<p>Vous êtes ${sessionScope.firstName } ${sessionScope.lastName} </p>
	</c:if>
</body>
</html>