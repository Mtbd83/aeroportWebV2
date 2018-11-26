<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>

<head>

<link href="style.css" rel="stylesheet" media="all" type="text/css"> 
<style type="text/css" media="all">@import "style.css";</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Customer Form</title>	
</head>

<body>

<header>
	<h1>AJC-SOPRA AIRPORT</h1>
</header>

<ul>
  <li><a href="index.html">Home</a></li>
  <li><a href="form_client.html">Create Customer Account</a></li>
  <li><a href="login.html">Login</a></li>
  <li><a href="flight_research.html">Flight Research</a></li>
  <li style="float:right"><a class="active" href="#contact">Contact</a></li>
</ul>

<h2>Create your own Customer Area</h2>
<img src="img/avion.jpg" alt="Avion"  width="20%" align="right">
<br>

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
		<table align="center">
		<tr>
			<td colspan="2"><h4><b>GENERAL INFORMATION</b></h4></td>
		</tr>
		<tr>
			<td>
			<div class="form-group">
				<form:label path="titre">Title : </form:label>
				<form:select path="titre" cssClass="form-control" items="${titres }" itemLabel="titre"/>
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
			</td>
		</tr>
		<tr>
			<td>
				<div class="form-group">
					<form:label path="nom">Name : </form:label>
					<form:input path="nom" cssClass="form-control"  />
					<form:errors path="nom"></form:errors>
				</div>
			</td>
		</tr>
		<tr>
			<td>
			<div class="form-group">
				<form:label path="prenom">First Name : </form:label>
				<form:input path="prenom" cssClass="form-control" />
				<form:errors path="prenom"></form:errors>
				</div> 
			</td>
		</tr>
		<tr>
			<td colspan="2">		
			<div class="form-group">
				<form:label path="adresse.rue">Address - Street : </form:label>
				<form:input path="adresse.rue" cssClass="form-control" />
				<form:errors path="adresse.rue"></form:errors>
			</div>
		</td>
		</tr>
		<tr>
			<td><div class="form-group">
			<form:label path="adresse.codePostal">ZIP Code : </form:label>
			<form:input type="number" path="adresse.codePostal" cssClass="form-control" pattern="[0-9]{5}"/>
			<form:errors path="adresse.codePostal"></form:errors>
		</div></td>
		</tr>
		<tr>
			<td><div class="form-group">
			<form:label path="adresse.ville">City : </form:label>
			<form:input path="adresse.ville" cssClass="form-control" />
			<form:errors path="adresse.ville"></form:errors>
		</div></td>
		</tr>
		<tr>
			<td><div class="form-group">
			<form:label path="adresse.pays">Country : </form:label>
			<form:input path="adresse.pays" cssClass="form-control" />
			<form:errors path="adresse.pays"></form:errors>
		</div></td>
		</tr>
		<tr>
			<td colspan="2"><h4><b>CONTACT</b></h4></td>
		</tr>
		<tr>	
			<td>		
			<div class="form-group">
				<form:label path="mail">Mail : </form:label>
				<form:input path="mail" cssClass="form-control"  />
				<form:errors path="mail"></form:errors>
			</div>
			</td>
		</tr>
		<tr>
			<td>		
			<div class="form-group">
			<form:label path="numeroTel">Phone number: </form:label>
			<form:input path="numeroTel" cssClass="form-control" type ="tel" />
			<form:errors path="numeroTel"></form:errors>
			</div>
			</td>
		</tr>
		<tr>
			<td>
			<div class="form-group">
			<form:label path="numeroFax">Fax number : </form:label>
			<form:input path="numeroFax" cssClass="form-control" type="tel"/>
			<form:errors path="numeroFax"></form:errors>
			</div>
		</td>
		</tr>
		<tr>
			<td colspan="2"><h4><b>LOGIN</b></h4></td>
		</tr>
		<tr>	
			<td>
			<div class="form-group">
			<form:label path="login.identifiant">Username* : </form:label>
			<form:input path="login.identifiant" cssClass="form-control" />
			<form:errors path="login.identifiant"></form:errors>
			</div>
			</td>
		</tr>
		<tr>
			<td>
			<div class="form-group">
			<form:label path="login.motDePasse">Password* : </form:label>
			<form:input path="login.motDePasse" cssClass="form-control" />
			<form:errors path="login.motDePasse"></form:errors>
			</div>
			</td>
		</tr>
		
		<tr>
		<td> </td>
		<td colspan="2"><input type="submit" value="SAVE"></td>
		</tr>
		</table>
		
		<p><i>*required information</i></p>
	
	</form:form>
	
</div>

</body>

<footer>
<p>Created by: The best training group ever</p>
	<img src="img/AJC.png" alt="ajc"  width="5%" align="middle">
	<img src="img/sopra.png" alt="sopra"  width="5%" align="middle">
</footer>

</html>