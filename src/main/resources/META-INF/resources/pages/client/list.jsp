<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Liste des Clients</title>
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
<table class="table" style="text-align: center">
		<tr>
			<th>Id</th>
			<th>Civilité</th>
			<th>Nom</th>
			<th>Prénom</th>
			<th>Numéro de Téléphone</th>
			<th>Numéro de Fax</th>
			<th>Mail</th>
			<th>Adresse</th>
			<th>Login</th>
			<th>Titre</th>
			<th>Siret</th>
			<th></th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach var="client" items="${clients }">
			<tr>
				<td>${client.idClient }</td>
				<td>${client.titre }</td>
				<td>${client.nom }</td>
				<td>${client.prenom }</td>
				<td>${client.numeroTel }</td>
				<td>${client.numeroFax }</td>
				<td>${client.mail }</td>
				<td>${client.adresse.numero } ${client.adresse.rue } ${client.adresse.codePostal } 
				${client.adresse.ville } ${client.adresse.pays }</td>
				<td>${client.login.login }</td>
				<td>
					<c:if test="${client.getClass().simpleName=='ClientEl'}">${client.titrePhysique }</c:if>
					<c:if test="${client.getClass().simpleName=='ClientMoral'}">${client.titreMoral }</c:if>
					<c:if test="${client.getClass().simpleName=='ClientPhysique'}">${client.titrePhysique }</c:if>
				</td>
				<td>
					<c:if test="${client.getClass().simpleName=='ClientMoral'}">${client.siret }</c:if>
				</td>
				<td><a class="btn btn-primary" href="./form?idClient=${client.idClient }">Editer</a></td>
				<td><a class="btn btn-danger" href="./delete?idClient=${client.idClient }">Supprimer</a></td>
				<td><a class="btn btn-success" href="./reservationsClient?idClient=${client.idClient }">Afficher Réservations</a></td>
			</tr>
		</c:forEach>
	</table>
	<a class="btn btn-info" href="./addClientEl" >Nouveau Client El</a>
	<a class="btn btn-info" href="./addClientMoral" >Nouveau Client Moral</a>
	<a class="btn btn-info" href="./addClientPhysique" >Nouveau Client Physique</a>
</div>
</body>

</html>
