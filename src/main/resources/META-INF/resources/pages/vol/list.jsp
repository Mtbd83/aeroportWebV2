<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Liste des Vols</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
		<table class="table">
			<tr align="center">
				<th>Id</th>
				<th>Date de Depart</th>
				<th>Date d'Arrivée</th>
				<th>Heure de Depart</th>
				<th>Heure d'Arrivée</th>
				<th></th>
				<th></th>
				<th></th>

			</tr>
			<c:forEach var="vol" items="${vols}">
				<tr align="center">
					<td>${vol.idVol}</td>
					<td><fmt:formatDate value="${vol.dateDepart}" type="date"
							pattern="dd/MM/YYYY" /></td>
					<td><fmt:formatDate value="${vol.dateArrivee}" type="date"
							pattern="dd/MM/YYYY" /></td>
					<td><fmt:formatDate value="${vol.heureDepart}" type="time" /></td>
					<td><fmt:formatDate value="${vol.heureArrivee}" type="time" /></td>
					
					<td><a class="btn btn-primary" href="./edit?idVol=${vol.idVol}">Editer</a></td>
					<td><a class="btn btn-danger"
						href="./delete?idVol=${vol.idVol}">Supprimer</a></td>

					<td><a class="btn btn-success"
						href="./passagersVol?idVol=${vol.idVol}">Voir Passagers</a></td>
				</tr>
			</c:forEach>

		</table>

		<a class="btn btn-info" href="./addVol">Nouveau Vol</a>

	</div>

</body>
</html>