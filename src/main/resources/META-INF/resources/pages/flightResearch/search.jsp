<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulaire</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
	
		<header>
			<h1>AJC-SOPRA AIRPORT</h1>
		</header>
		
		<ul>
		  <li><a href="/aeroportWeb/home">Home</a></li>
		  <li><a href="/aeroportWeb/account">Create Customer Account</a></li>
		  <li><a href="/aeroportWeb/login">Login</a></li>
		  <li><a href="/aeroportWeb/flightResearch">Flight Research</a></li>
		  <li style="float:right"><a class="active" href="#contact">Contact</a></li>
		</ul>
		
		
		<form:form method="post" action="searchVol"  modelAttribute="vol">
			<div class="form-group">
				<form:label path="idVol">Id</form:label>
				<form:input path="idVol" cssClass="form-control"/>
				<form:errors path="idVol"></form:errors>
			</div>
			<div><button type="submit">SEARCH</button></div>
		</form:form>
	
	</div>


</body>
</html>