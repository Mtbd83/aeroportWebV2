<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link href="style.css" rel="stylesheet" media="all" type="text/css"> 
<style type="text/css" media="all">@import "style.css";</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
		
		<h1> Result : </h1>

		<table class="table">
			<tr align="center">
				<th>Id</th>
				<th>Date de Depart</th>
				<th>Date d'Arrivée</th>
				<th>Heure de Depart</th>
				<th>Heure d'Arrivée</th>


			</tr>
				<tr align="center">
					<td>${vol.idVol}</td>
					<td><fmt:formatDate value="${vol.dateDepart}" type="date"
							pattern="dd/MM/YYYY" /></td>
					<td><fmt:formatDate value="${vol.dateArrivee}" type="date"
							pattern="dd/MM/YYYY" /></td>
					<td><fmt:formatDate value="${vol.heureDepart}" type="time" /></td>
					<td><fmt:formatDate value="${vol.heureArrivee}" type="time" /></td>
					
				</tr>
		</table>
	</div>
</body>
</html>