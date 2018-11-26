<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
    
<!DOCTYPE html>
<html>
<head>
<link href="style.css" rel="stylesheet" media="all" type="text/css"> 
<style type="text/css" media="all">@import "style.css";</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>

<body>

<div class="container">

<ul>
  <li><a href="/aeroportWeb/home">Home</a></li>
  <li><a href="/aeroportWeb/account">Create Customer Account</a></li>
  <li><a href="/aeroportWeb/login">Login</a></li>
  <li><a href="/aeroportWeb/flightResearch">Flight Research</a></li>
  <sec:authorize access="hasRole('ROLE_ADMIN')">
  	<li><a href="/aeroportWeb/admin">Admin</a></li>
  </sec:authorize>
  <sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER')">
  	<li><a href="/aeroportWeb/myAccount">My account</a></li>
  </sec:authorize>
  <li style="float:right"><a class="active" href="#contact">Contact</a></li>
</ul>

<div>
		<c:if test="${pageContext.request.userPrincipal.name != null }">
			Logged as : ${pageContext.request.userPrincipal.name } 
			<a class="btn" href="logout">Logout</a>
		</c:if>
	</div>

<h2>WELCOME TO THE AJC AIRPORT</h2>

<p>
	<img alt="gifavion" src="img/48.gif" align="middle">
</p>
<br>

<p>
	<h2>Need for a break ? You are at the right place!</h2>
</p>
<br>

<p>
	<img alt="gifterre" src="img/34105.gif" >
</p>

</div>

</body>
</html>