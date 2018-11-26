<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Edition Client</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
<div class="container">
	<c:choose>
		<c:when test="${client.getClass().simpleName=='ClientEl' }">
			<c:url value="saveClientEl" var="action"></c:url>
		</c:when>
		<c:when test="${client.getClass().simpleName=='ClientMoral' }">
			<c:url value="saveClientMoral" var="action"></c:url>
		</c:when>
		<c:otherwise>
			<c:url value="saveClientPhysique" var="action"></c:url>
		</c:otherwise>
	</c:choose>
	<form:form method="post" action="${action }" modelAttribute="client">
		<form:hidden path="version" />
		<div class="form-group">
			<form:label path="idClient">Id : </form:label>
			<form:input path="idClient" readonly="true" cssClass="form-control" />
		</div>
		<div class="form-group">
			<form:label path="titre">Titre : </form:label>
			<form:select path="titre" cssClass="form-control" items="${titres }" itemLabel="titre"/>
		</div>
		<div class="form-group">
			<form:label path="nom">Nom : </form:label>
			<form:input path="nom" cssClass="form-control" />
			<form:errors path="nom"></form:errors>
		</div>
		<div class="form-group">
			<form:label path="prenom">Prénom : </form:label>
			<form:input path="prenom" cssClass="form-control" />
			<form:errors path="prenom"></form:errors>
		</div>
		<div class="form-group">
			<form:label path="numeroTel">Numéro de Téléphone : </form:label>
			<form:input path="numeroTel" cssClass="form-control" />
			<form:errors path="numeroTel"></form:errors>
		</div>
		<div class="form-group">
			<form:label path="numeroFax">Numéro de Fax : </form:label>
			<form:input path="numeroFax" cssClass="form-control" />
			<form:errors path="numeroFax"></form:errors>
		</div>
		<div class="form-group">
			<form:label path="mail">Mail : </form:label>
			<form:input path="mail" cssClass="form-control" />
			<form:errors path="mail"></form:errors>
		</div>
		<div class="form-group">
			<form:label path="adresse.numero">Numéro de la rue : </form:label>
			<form:input type="number" path="adresse.numero" cssClass="form-control" />
			<form:errors path="adresse.numero"></form:errors>
		</div>
		<div class="form-group">
			<form:label path="adresse.rue">Rue : </form:label>
			<form:input path="adresse.rue" cssClass="form-control" />
			<form:errors path="adresse.rue"></form:errors>
		</div>
		<div class="form-group">
			<form:label path="adresse.codePostal">Code Postal : </form:label>
			<form:input type="number" path="adresse.codePostal" cssClass="form-control" />
			<form:errors path="adresse.codePostal"></form:errors>
		</div>
		<div class="form-group">
			<form:label path="adresse.ville">Ville : </form:label>
			<form:input path="adresse.ville" cssClass="form-control" />
			<form:errors path="adresse.ville"></form:errors>
		</div>
		<div class="form-group">
			<form:label path="adresse.pays">Pays : </form:label>
			<form:input path="adresse.pays" cssClass="form-control" />
			<form:errors path="adresse.pays"></form:errors>
		</div>
		<c:if test="${client.getClass().simpleName=='ClientMoral' }">
				<div class="form-group">
					<form:label path="titreMoral">Titre Moral : </form:label>
					<form:select path="titreMoral" cssClass="form-control" items="${titresM }" itemLabel="titre"/>
					<form:errors path="titreMoral"></form:errors>
				</div>
				<div class="form-group">
					<form:label path="siret">Siret : </form:label>
					<form:input path="siret" cssClass="form-control" />
					<form:errors path="siret"></form:errors>
				</div>
		</c:if>
		<div class="form-group">
			<form:label path="login.login">Login : </form:label>
			<form:input path="login.login" cssClass="form-control" />
			<form:errors path="login.login"></form:errors>
		</div>
		<div class="form-group">
			<button type="submit" class="btn btn-success">Enregistrer</button>
			<a class="btn btn-warning" href="./">Annuler</a>
		</div>
	</form:form>
</div>
</body>

</html>