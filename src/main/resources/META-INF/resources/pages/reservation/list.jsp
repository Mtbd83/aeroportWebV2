<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<meta charset="UTF-8">
	<title>Liste Reservation</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="/aeroportWeb/reservation"><h4>Reservation</h4> </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/aeroportWeb/client"><h4>Client</h4></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/aeroportWeb/vol"><h4>Vol</h4></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/aeroportWeb/passager"><h4>Passager</h4></a>
      </li>
    </ul>
  </div>
</nav>

<div class="container">


		<div class="row">
			<table class="table">
					<tr>
						<th>Numero Reservation</th>
						<th>Date Reservation</th>
						<th>Id Client</th>
						<th>Id Passager</th>
						<th>Id Vol</th>
						<th></th>
						<th></th>
					</tr>
					<c:forEach var ="reservation" items="${reservations}">
						<tr>
							<td>${reservation.numeroReservation}</td>
							<td>${reservation.dateReservation}</td>
							<td>${reservation.client.idClient}</td>
							<td>${reservation.passager.idPassager}</td>
							<td>${reservation.vol.idVol}</td>
							<td><a class="btn btn-primary" href="./edit?id=${reservation.numeroReservation}">Editer</a></td>
							<td><a class="btn btn-danger" href="./delete?id=${reservation.numeroReservation}">Supprimer</a></td>
						</tr>
					 </c:forEach>
			
				</table>
				<a class="btn btn-info" href="./addReservation"> Nouvelle Reservation</a>

</div>
</div>

</body>
</html>