<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Test with hello</title>
</head>
<body>
	<%@ include file="toolbar.jsp" %>
	<p>Bonjour tout le monde test OC 1</p>
	<p>Test EL: ${ name}</p>
	<p>
		Test beans: ${ author.firstName} ${author.lastName }
		<br>
		${ author.active ? 'Vous êtes très actif !' : 'Vous êtes inactif !' }
	</p>
    <p><c:out value="Test JSTL to test trung !" /></p>
    <div>
    	Another JSTL test:
    	</br>
    	<c:out value="${hello }" >Valeur par défaut</c:out>
    	<c:set var="pseudo" value="TRUNG " scope="page"/>
    	<p><c:out value="${ pseudo}"/></p>
    	<c:set var="pseudo" scope="page">Trung test JSTL</c:set>
    	<p><c:out value="${ pseudo}"/></p>
    	<c:set target="${author}" property="firstName" value="Jack"/>
    	<p><c:out value="${ author.firstName}"/></p>
    	<c:if test="${ 50 > 10 }">
    		${name }
    	</c:if>
    	<c:choose>
    		<c:when test="${50 < 10 }">right</c:when>
    		<c:otherwise>wrong</c:otherwise>
    	</c:choose>
    	<c:forEach var="i" begin="0" end="10" step="2">
    		<p>Un message n°<c:out value="${i }"/></p>
    	</c:forEach>
    	<c:forEach items="${messages }" var="mess" varStatus="status">
    		<p> N°<c:out value="${ status.first}"/>: <c:out value="${mess}"/></p> 
    	</c:forEach>
    	<c:forTokens var="morceau" items="Un élément/Encore un élément/Un dernier élément" delims="/ ">
    		<p> ${morceau }</p>
    	</c:forTokens>
    </div>
	<p>
		
		<%
		String name = (String) request.getParameter("name");
		out.println(name + "</br>");
		String message = (String) request.getAttribute("message");
		out.println(message + "</br>");
		String heure = (String) request.getAttribute("heure");
		if(heure.equals("jour")) {
			out.println("Bonjour Trung </br>");
		}
		else {
			out.println("Bonsoir </br>");
		}
		%>
		<%
			for(int i = 0; i < 20; i++) {
				out.println("C'est un test basique</br>");
			}
		%>
	</p>
	
</body>
</html>