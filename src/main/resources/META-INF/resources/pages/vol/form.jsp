<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulaire</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
	<div class="container" align="center">
		<form:form method="post" action="saveVol" modelAttribute="vol">
			<form:hidden path="version" />

			<div class="form-group">
				<form:label path="idVol">Id</form:label>
				<form:input path="idVol" readonly="true" cssClass="form-control"/>
				<form:errors path="idVol"></form:errors>
			</div>
			<div class="form-group">
				<form:label path="dateDepart">Date de Depart</form:label>
				<form:input path="dateDepart" type="date" cssClass="datepicker star"/>
				<form:errors path="dateDepart"></form:errors>
			</div>
			<div class="form-group">
				<form:label path="dateArrivee">Date d'Arriver</form:label>
				<form:input path="dateArrivee" type="date" cssClass="datepicker star"/>
				<form:errors path="dateArrivee"></form:errors>
			</div>
			<div class="form-group">
				<form:label path="heureDepart">Heure de Depart</form:label>
				<form:input path="heureDepart" type="time" cssClass="timepicker star"/>
				<form:errors path="heureDepart"></form:errors>
			</div>
			<div class="form-group">
				<form:label path="heureArrivee">Heure d'Arriver</form:label>
				<form:input path="heureArrivee" type="time" cssClass="timepicker star"/>
				<form:errors path="heureArrivee"></form:errors>
			</div>
			<div>
				<button class="btn btn-success" type="submit">Enregistrer</button>
				<a class="btn btn-danger" href="./">Annuler</a>
			</div>
		</form:form>
	</div>

</body>
</html>