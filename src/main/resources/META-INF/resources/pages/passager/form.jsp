<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<fieldset>
			<legend>Edition d'un passager</legend>
			<form:form action="savePassager" method="post" modelAttribute="passager">
				<form:hidden path="version" />
				
				<div class="form-group">
					<form:label path="idPassager">idPassager</form:label>
					<form:input path="idPassager" readonly="true"
						cssClass="form-control" />
				</div>
				
				<div class="form-group">
					<form:label path="prenom">prenom</form:label>
					<form:input path="prenom" cssClass="form-control" />
					<form:errors path="prenom"></form:errors>
				</div>
				
				<div class="form-group">
					<form:label path="nom">nom</form:label>
					<form:input path="nom" cssClass="form-control" />
					<form:errors path="nom"></form:errors>
				</div>
				<div class="form-group">
					<form:label path="adresse.numero">numero</form:label>
					<form:input type="number" path="adresse.numero"
						cssClass="form-control" />
					<form:errors path="adresse.numero"></form:errors>
				</div>
				<div class="form-group">
					<form:label path="adresse.rue">rue</form:label>
					<form:input path="adresse.rue" cssClass="form-control" />
					<form:errors path="adresse.rue"></form:errors>
				</div>
				<div class="form-group">
					<form:label path="adresse.codePostal">codePostal</form:label>
					<form:input path="adresse.codePostal" cssClass="form-control" />
					<form:errors path="adresse.codePostal"></form:errors>
				</div>
				<div class="form-group">
					<form:label path="adresse.ville">ville</form:label>
					<form:input path="adresse.ville" cssClass="form-control" />
					<form:errors path="adresse.ville"></form:errors>
				</div>
				<div class="form-group">
					<form:label path="adresse.pays">pays</form:label>
					<form:input path="adresse.pays" cssClass="form-control" />
					<form:errors path="adresse.pays"></form:errors>
				</div>
				<div>
					<button type="submit" class="btn btn-success">Enregistrer</button>
					<a class="btn btn-warning" href="./">Annuler</a>
				</div>
			</form:form>
		</fieldset>
	</div>
</body>
</html>