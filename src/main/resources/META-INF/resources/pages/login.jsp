<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
<link href="style.css" rel="stylesheet" media="all" type="text/css">
<style type="text/css" media="all">
@import "style.css";
</style>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Login</title>
</head>

<body>

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
	<h2>Login to your Customer Area</h2>
	<img src="img/avion.jpg" alt="Avion" width="20%" align="right">
	<br>
	<form method="post" action="" modelAttribute="login">
		<table align="center">

			<tr>
				<td>Username</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password"></td>
			</tr>

			<td></td>
			<td><button type="submit">LOGIN</button></td>
			</tr>

		</table>
	</form>

</body>

<footer>
	<p>Created by: The best training group ever</p>
	<img src="img/AJC.png" alt="ajc" width="5%" align="middle"> <img
		src="img/sopra.png" alt="sopra" width="5%" align="middle">
</footer>
</html>