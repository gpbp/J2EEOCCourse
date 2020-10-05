<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${!empty sessionScope.firstName && !empty sessionScope.lastName }">
		<p>Vous êtes ${sessionScope.firstName } ${sessionScope.lastName} </p>
	</c:if>
</body>
</html>