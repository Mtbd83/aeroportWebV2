<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Liste des Passagers</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
<div class="container" >
	<table class="table" style="text-align: center">
		<tr>
			<th>Id</th>
			<th>Nom</th>
			<th>Prenom</th>
			<th>Adresse</th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach var="passager" items="${passagers}">
			<tr align="center">
				<td>${passager.idPassager}</td>
				<td>${passager.nom}</td>
				<td>${passager.prenom}</td>
				<td>${passager.adresse.numero }${passager.adresse.rue }
					${passager.adresse.codePostal } ${passager.adresse.ville }</td>

			</tr>
		</c:forEach>

	</table>

<a class="btn btn-dark" href="./">Retour</a>
</div>
</body>
</html>